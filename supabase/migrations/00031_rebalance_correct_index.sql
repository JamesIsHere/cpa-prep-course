-- =============================================================================
-- Migration: Rebalance correct_index distribution
-- Fixes answer-position bias in AUD, FAR, REG, ISC, TCP question banks.
-- Original migrations (00025-00030) skewed heavily toward correct_index = 1.
-- This swaps choices and correct_index to achieve ~25% per position.
-- Idempotent: only moves answers from overrepresented to underrepresented indices.
-- =============================================================================

do $$
declare
  sec record;
  q record;
  total_q int;
  target_per int;
  idx_counts int[];
  from_idx int;
  to_idx int;
  surplus int;
  deficit int;
  to_move int;
  choices_arr jsonb;
  correct_val jsonb;
  swap_val jsonb;
  moved int;
begin
  -- Seed random for deterministic results
  perform setseed(0.42);

  for sec in
    select id, code from sections where code in ('aud', 'far', 'reg', 'isc', 'tcp')
  loop
    -- Count current distribution
    select count(*) into total_q from questions where section_id = sec.id;
    target_per := total_q / 4;

    idx_counts := array[
      (select count(*) from questions where section_id = sec.id and correct_index = 0),
      (select count(*) from questions where section_id = sec.id and correct_index = 1),
      (select count(*) from questions where section_id = sec.id and correct_index = 2),
      (select count(*) from questions where section_id = sec.id and correct_index = 3)
    ];

    raise notice 'Section %: before [%, %, %, %] (target %)',
      sec.code, idx_counts[1], idx_counts[2], idx_counts[3], idx_counts[4], target_per;

    -- For each overrepresented index, move surplus to underrepresented indices
    for from_idx in 0..3 loop
      if idx_counts[from_idx + 1] > target_per + 1 then
        surplus := idx_counts[from_idx + 1] - target_per;

        for to_idx in 0..3 loop
          if to_idx = from_idx then continue; end if;
          if idx_counts[to_idx + 1] >= target_per then continue; end if;

          deficit := target_per - idx_counts[to_idx + 1];
          to_move := least(surplus, deficit);

          if to_move <= 0 then continue; end if;

          moved := 0;
          for q in
            select id, choices, correct_index
            from questions
            where section_id = sec.id and correct_index = from_idx
            order by random()
            limit to_move
          loop
            choices_arr := q.choices;
            correct_val := choices_arr->from_idx;
            swap_val := choices_arr->to_idx;

            choices_arr := jsonb_set(
              jsonb_set(choices_arr, array[to_idx::text], correct_val),
              array[from_idx::text], swap_val
            );

            update questions
            set choices = choices_arr, correct_index = to_idx
            where id = q.id;

            moved := moved + 1;
          end loop;

          idx_counts[from_idx + 1] := idx_counts[from_idx + 1] - moved;
          idx_counts[to_idx + 1] := idx_counts[to_idx + 1] + moved;
          surplus := surplus - moved;

          if surplus <= 0 then exit; end if;
        end loop;
      end if;
    end loop;

    raise notice 'Section %: after  [%, %, %, %]',
      sec.code, idx_counts[1], idx_counts[2], idx_counts[3], idx_counts[4];
  end loop;
end $$;
