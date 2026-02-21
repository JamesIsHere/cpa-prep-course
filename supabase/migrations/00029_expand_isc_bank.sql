-- =============================================================================
-- Migration: Expand ISC Question Bank
-- Section: ISC — Information Systems and Controls (section_id = 5)
-- New questions: ~491
-- Difficulty: 30% easy, 50% medium, 20% hard
-- =============================================================================
-- ISC Chunk 1: IT Infrastructure, ERP/AIS, Data Management, System Availability/Change Management

-- ============================================================
-- IT Infrastructure and Architecture (38 questions)
-- Difficulty: 11 easy, 19 medium, 8 hard
-- ============================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A mid-size accounting firm is connecting its two office locations 50 miles apart and needs secure, reliable connectivity for transmitting client financial data. Which network technology is most appropriate?',
 '["Public Wi-Fi with WPA2 encryption", "Peer-to-peer file sharing over the internet", "Bluetooth tethering between office routers", "Site-to-site VPN over dedicated WAN links"]'::jsonb,
 3,
 'A site-to-site VPN over dedicated WAN links provides encrypted, reliable connectivity between geographically separated offices. This approach ensures confidentiality of client financial data in transit while maintaining consistent bandwidth. Public Wi-Fi lacks reliability and security guarantees, Bluetooth has extreme range limitations, and peer-to-peer sharing offers no encryption or access control.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'Which layer of the OSI model is responsible for establishing, managing, and terminating sessions between two communicating devices?',
 '["Transport layer (Layer 4)", "Application layer (Layer 7)", "Session layer (Layer 5)", "Presentation layer (Layer 6)"]'::jsonb,
 2,
 'The Session layer (Layer 5) manages the establishment, maintenance, and termination of communication sessions between applications. It handles session checkpointing and recovery. The Transport layer manages end-to-end delivery, the Presentation layer handles data formatting, and the Application layer provides network services to end-user applications.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A company deploys SD-WAN across its branch offices to replace traditional MPLS connections. Which of the following is the PRIMARY benefit of SD-WAN for an organization with multiple locations?',
 '["Provides centralized policy management and dynamic path selection across multiple link types", "Eliminates the need for any internet connectivity", "Replaces all local area networking equipment", "Removes the need for network security controls"]'::jsonb,
 0,
 'SD-WAN provides centralized management of WAN policies and intelligently routes traffic across multiple connection types (broadband, LTE, MPLS) based on application requirements and link performance. It does not eliminate internet connectivity needs, replace LAN equipment, or remove the need for security controls.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An IT auditor is reviewing a client''s network diagram and notices that all workstations, servers, and printers share a single broadcast domain with no segmentation. What is the PRIMARY risk of this flat network design?',
 '["Reduced hardware costs", "Simplified network troubleshooting", "Faster data transfer between all devices", "A compromised device can freely communicate with all other devices on the network"]'::jsonb,
 3,
 'In a flat network with no segmentation, any compromised device has unrestricted lateral movement capability to communicate with every other device. This means malware or an attacker gaining access to one workstation could reach financial servers, databases, and other critical systems without crossing any network boundary or access control point.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'Which TCP/IP protocol operates at the transport layer and provides reliable, ordered delivery of data between applications?',
 '["TCP", "HTTP", "IP", "ARP"]'::jsonb,
 0,
 'TCP (Transmission Control Protocol) operates at the transport layer and provides reliable, connection-oriented communication with guaranteed delivery, sequencing, and error checking. HTTP operates at the application layer, IP at the network layer, and ARP at the link layer for resolving IP addresses to MAC addresses.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A company is evaluating cloud deployment models for its financial reporting system. The CFO requires that the infrastructure be dedicated solely to the organization and hosted in the company''s own data center. Which deployment model meets this requirement?',
 '["Public cloud", "Community cloud", "On-premises private cloud", "Hybrid cloud"]'::jsonb,
 2,
 'An on-premises private cloud is dedicated to a single organization and hosted within the company''s own data center, providing maximum control over infrastructure, data residency, and compliance. Public cloud uses shared multi-tenant infrastructure, community cloud is shared among organizations with common concerns, and hybrid cloud combines public and private elements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A growing SaaS company needs to run its financial close process on dedicated hardware for compliance reasons while using public cloud for its customer-facing application. Which cloud strategy best fits this scenario?',
 '["Multi-cloud deployment using two public cloud providers", "Single public cloud with enhanced SLAs", "Hybrid cloud combining private infrastructure for financial processing with public cloud for customer workloads", "Colocation facility with no cloud services"]'::jsonb,
 2,
 'A hybrid cloud model allows the company to maintain dedicated private infrastructure for compliance-sensitive financial processing while leveraging public cloud scalability for customer-facing workloads. Multi-cloud uses multiple public providers but does not address the dedicated hardware requirement. A single public cloud or colocation alone cannot satisfy both needs simultaneously.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'Which of the following best describes the difference between a Type 1 and Type 2 hypervisor?',
 '["Type 1 runs on bare metal hardware while Type 2 runs on top of a host operating system", "Type 1 supports only Linux guests while Type 2 supports Windows guests", "Type 1 is used for desktop virtualization only while Type 2 is for servers", "Type 1 requires more memory than Type 2 in all configurations"]'::jsonb,
 0,
 'A Type 1 (bare-metal) hypervisor runs directly on the physical hardware without a host OS, providing better performance and security for enterprise server virtualization. A Type 2 (hosted) hypervisor runs as an application on top of a conventional operating system. The distinction is about the layer between the hypervisor and hardware, not the guest OS supported.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An organization runs its accounting application in virtual machines. During a routine audit, the auditor discovers that VM snapshots from six months ago containing sensitive financial data still exist on the storage system. What is the auditor''s PRIMARY concern?',
 '["The snapshots are consuming unnecessary storage space", "VM snapshot technology is inherently unreliable", "The snapshots will cause the VMs to run slower", "The stale snapshots may contain outdated financial data that does not reflect current corrections or adjustments"]'::jsonb,
 3,
 'Stale VM snapshots containing financial data represent a data governance risk because they preserve a point-in-time copy that may include data before corrections, restatements, or adjustments were applied. If accessed or restored, this outdated data could be mistaken for current records. Additionally, unmanaged snapshots with sensitive data may violate retention and disposal policies.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A company''s IT team is evaluating whether to deploy a new financial reporting tool using containers versus traditional virtual machines. Which advantage do containers offer over VMs for this deployment?',
 '["Containers start faster and use fewer resources because they share the host OS kernel", "Containers provide stronger isolation because each has its own operating system kernel", "Containers eliminate all security vulnerabilities in the application", "Containers cannot be used for database workloads"]'::jsonb,
 0,
 'Containers share the host operating system kernel, which makes them significantly lighter than VMs. They start in seconds rather than minutes, use less memory and disk space, and allow higher density on the same hardware. VMs provide stronger isolation (separate kernels), not containers. Containers do not eliminate security vulnerabilities and can run database workloads.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'Which type of storage architecture connects storage devices directly to a server without any network infrastructure in between?',
 '["Storage Area Network (SAN)", "Network Attached Storage (NAS)", "Direct Attached Storage (DAS)", "Object storage"]'::jsonb,
 2,
 'Direct Attached Storage (DAS) connects storage devices such as hard drives or SSDs directly to a server via cables (SATA, SAS, USB) without going through a network. SAN uses a dedicated high-speed network, NAS connects via the standard LAN, and object storage is typically accessed via APIs over a network.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An audit client uses NAS (Network Attached Storage) for storing scanned copies of source documents like invoices and receipts. Which protocol does NAS most commonly use to share files across the network?',
 '["iSCSI over Fibre Channel", "FTP over SSH", "SMTP over TLS", "SMB/CIFS or NFS over TCP/IP"]'::jsonb,
 3,
 'NAS devices share files using standard file-sharing protocols such as SMB/CIFS (for Windows environments) or NFS (for Unix/Linux) over TCP/IP networks. iSCSI and Fibre Channel are block-level protocols used by SANs, FTP is a file transfer protocol rather than a file-sharing protocol, and SMTP is for email.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A retail company processes credit card transactions at 200 stores nationwide. To reduce latency for transaction authorization, the company places small computing nodes at each store that pre-process transactions before sending summaries to the central data center. This architecture is an example of:',
 '["Cloud computing", "Mainframe computing", "Edge computing", "Batch processing"]'::jsonb,
 2,
 'Edge computing places processing power closer to the data source (in this case, at each retail store) to reduce latency and bandwidth usage. By pre-processing transactions locally before sending summaries to the central data center, the company achieves faster authorization times and reduces WAN traffic. This differs from centralized cloud or mainframe computing where all processing occurs remotely.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A company uses a Content Delivery Network (CDN) for its investor relations website that hosts quarterly earnings reports and SEC filings. What is the PRIMARY benefit of the CDN in this context?',
 '["It caches and serves static content from geographically distributed servers, reducing load times for users worldwide", "It encrypts all financial data stored on the origin server", "It replaces the need for a web application firewall", "It automatically translates financial reports into multiple languages"]'::jsonb,
 0,
 'A CDN distributes cached copies of static content (PDFs, HTML pages, images) across geographically dispersed edge servers. When investors access earnings reports, they are served from the nearest edge location, reducing latency and improving load times. CDNs do not encrypt origin server data, replace WAFs, or translate content.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An organization exposes its accounting system data to a third-party analytics platform through a RESTful API. Which of the following is the MOST important control to implement on this API?',
 '["Rate limiting to prevent denial-of-service attacks", "Compression to reduce bandwidth usage", "Caching to improve response times", "Authentication and authorization to ensure only approved consumers access permitted data"]'::jsonb,
 3,
 'Authentication and authorization are the most critical controls for an API exposing financial data. Authentication verifies the identity of the API consumer, and authorization ensures they can only access data they are permitted to see. While rate limiting, compression, and caching are useful, they do not address the fundamental risk of unauthorized access to sensitive accounting data.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An API gateway sits between external clients and an organization''s internal microservices. Which of the following functions does an API gateway typically perform?',
 '["Directly modifying database records on behalf of clients", "Replacing the need for internal network firewalls", "Request routing, authentication enforcement, rate limiting, and protocol translation", "Compiling source code for the microservices"]'::jsonb,
 2,
 'An API gateway acts as a reverse proxy that handles cross-cutting concerns including routing requests to appropriate backend services, enforcing authentication, applying rate limits, performing protocol translation (e.g., REST to gRPC), and logging. It does not modify databases directly, replace firewalls, or compile code.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A company is deciding between a monolithic and microservices architecture for a new financial consolidation system that must integrate data from 15 subsidiaries. Which factor most favors a microservices approach?',
 '["Each subsidiary has unique data formats and business rules requiring independent scaling and deployment", "The development team has three developers with no distributed systems experience", "The system has a single database shared by all components", "The project has a two-week deadline with no tolerance for complexity"]'::jsonb,
 0,
 'Microservices excel when different components have varying scaling needs and must be independently deployable. With 15 subsidiaries having unique data formats and business rules, microservices allow each subsidiary''s integration to be developed, deployed, and scaled independently. Small teams, shared databases, and tight deadlines with low complexity tolerance favor monolithic approaches.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'During an IT infrastructure review, an auditor learns that the client''s LAN uses unmanaged switches with no VLAN capability. All departments including accounting, HR, and guest Wi-Fi share the same network segment. Which is the MOST significant audit finding?',
 '["Network equipment is not from a premium vendor", "Unmanaged switches consume more electricity than managed switches", "The network does not support gigabit speeds", "The lack of network segmentation exposes sensitive financial and HR systems to all network users including guests"]'::jsonb,
 3,
 'Without VLANs or network segmentation, guest Wi-Fi users and all employees share the same broadcast domain and can potentially access accounting and HR systems. This violates the principle of least privilege at the network level and exposes sensitive financial and personnel data to unauthorized access. Equipment brand and power consumption are not significant audit concerns.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'Which OSI layer is responsible for logical addressing and routing packets between different networks?',
 '["Network layer (Layer 3)", "Data Link layer (Layer 2)", "Transport layer (Layer 4)", "Physical layer (Layer 1)"]'::jsonb,
 0,
 'The Network layer (Layer 3) handles logical addressing (IP addresses) and routing packets across different networks. Routers operate at this layer. The Data Link layer handles MAC addresses and local frame delivery, the Transport layer manages end-to-end communication, and the Physical layer deals with electrical signals and physical media.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A CPA firm advises a client to adopt IaaS for hosting its ERP system. The client asks who is responsible for patching the operating system under the IaaS shared responsibility model. Which answer is correct?',
 '["The cloud provider patches the OS automatically", "OS patching is not needed in cloud environments", "The client (tenant) is responsible for OS patching", "The ERP software vendor handles all patching"]'::jsonb,
 2,
 'Under the IaaS shared responsibility model, the cloud provider manages the physical infrastructure (hardware, networking, hypervisor), but the tenant is responsible for everything from the OS up — including OS patching, middleware, runtime, and application management. This differs from PaaS (provider manages OS) and SaaS (provider manages everything).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A financial services company uses a multi-cloud strategy with AWS for its trading platform and Azure for its back-office accounting systems. What is the PRIMARY risk management benefit of this approach?',
 '["It avoids vendor lock-in and provides resilience against a single cloud provider outage", "It guarantees zero downtime across all systems", "It eliminates the need for disaster recovery planning", "It automatically synchronizes data between the two clouds"]'::jsonb,
 0,
 'A multi-cloud strategy reduces dependence on any single cloud provider, mitigating the risk that a provider-wide outage affects all critical systems simultaneously. It also prevents vendor lock-in, giving the organization negotiating leverage and flexibility. Multi-cloud does not guarantee zero downtime, eliminate DR planning needs, or automatically synchronize data.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An organization is migrating from on-premises servers to IaaS. The IT team discovers that the legacy payroll application requires a specific hardware security module (HSM) for cryptographic operations. Which cloud infrastructure consideration is MOST relevant?',
 '["The public cloud provider may offer dedicated HSM instances (e.g., CloudHSM) to meet this requirement", "HSM requirements automatically disqualify cloud migration", "The application should remove its encryption requirements for cloud compatibility", "Software-based encryption always provides equivalent security to hardware HSMs"]'::jsonb,
 0,
 'Major cloud providers offer dedicated HSM services (AWS CloudHSM, Azure Dedicated HSM) that provide hardware-based cryptographic operations in the cloud. These meet compliance requirements for hardware-level key management without requiring on-premises infrastructure. Removing encryption requirements or assuming software equivalence would compromise security.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An auditor is evaluating a client''s server room. The client has a single physical server running the accounting application, email, and file services with no redundancy. What type of risk does this configuration present?',
 '["Compliance risk from running multiple applications", "Performance risk from running too few applications", "Legal risk from consolidating services", "Single point of failure risk where one hardware failure disrupts all business services"]'::jsonb,
 3,
 'A single server hosting multiple critical services represents a single point of failure. If that server experiences a hardware failure, all services — accounting, email, and file sharing — become unavailable simultaneously. This concentration of risk violates availability best practices and creates significant business continuity exposure.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A company''s web-based financial portal uses a three-tier architecture. The database tier is hosted on-premises while the application and presentation tiers run in a public cloud. Which of the following is the GREATEST security concern with this hybrid arrangement?',
 '["Data transmitted between the cloud application tier and the on-premises database tier must traverse the public internet unless a secure tunnel is established", "The presentation tier uses HTML and CSS", "The application tier uses a modern programming language", "The on-premises database uses relational tables"]'::jsonb,
 0,
 'When application components span cloud and on-premises environments, data in transit between them may cross the public internet. Without a secure tunnel (VPN, dedicated interconnect, or encrypted link), sensitive financial data flowing between the cloud application tier and the on-premises database tier is exposed to interception. The other options describe normal technical choices, not security concerns.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'Which of the following BEST describes the function of UDP compared to TCP at the transport layer?',
 '["UDP provides reliable, ordered delivery with error correction", "UDP operates at the network layer, not the transport layer", "UDP provides connectionless, best-effort delivery with lower latency but no guaranteed delivery", "UDP is used exclusively for encrypted communications"]'::jsonb,
 2,
 'UDP (User Datagram Protocol) is a connectionless transport protocol that sends datagrams without establishing a connection, ordering guarantees, or delivery confirmation. This makes it faster with lower latency than TCP, suitable for real-time applications like video streaming and DNS lookups where occasional packet loss is acceptable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A regional bank is deploying a private cloud for its core banking applications. The IT director asks whether to use a converged or hyperconverged infrastructure (HCI). Which statement about HCI is correct?',
 '["HCI separates compute, storage, and networking into independent hardware silos", "HCI requires separate SAN infrastructure for storage", "HCI cannot support virtualized workloads", "HCI integrates compute, storage, and networking into a single software-defined platform that scales by adding nodes"]'::jsonb,
 3,
 'Hyperconverged infrastructure (HCI) combines compute, storage, and networking into a unified, software-defined platform. It scales horizontally by adding identical nodes, simplifying management and reducing the need for separate SAN infrastructure. Traditional converged infrastructure, by contrast, bundles pre-configured but still discrete compute, storage, and network components.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An organization uses SaaS-based accounting software. Under the shared responsibility model, which of the following is the organization''s responsibility?',
 '["Patching the application server operating system", "Managing the physical data center security", "Controlling user access and managing authentication credentials", "Maintaining the database engine and applying database patches"]'::jsonb,
 2,
 'In a SaaS model, the provider manages the entire technology stack — infrastructure, OS, middleware, and application. The customer''s responsibility is limited to managing their own data, user access, authentication credentials, and how they use the application. User access governance remains the tenant''s duty regardless of cloud service model.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A manufacturing company has IoT sensors on its production floor that generate real-time data about equipment performance. The data is processed locally before aggregated summaries are sent to a cloud-based analytics platform. This architecture pattern is called:',
 '["Fog computing", "Centralized computing", "Quantum computing", "Grid computing"]'::jsonb,
 0,
 'Fog computing extends cloud capabilities to the network edge, processing data locally near IoT devices before sending aggregated results to the cloud. It differs from pure edge computing by providing a middle layer between IoT devices and the cloud. Centralized computing processes everything in one location, which would create latency and bandwidth issues for real-time IoT data.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An auditor identifies that a client''s VPN concentrator uses outdated encryption (DES with 56-bit keys) for remote access connections. Why is this a significant finding?',
 '["56-bit DES keys can be brute-forced with modern computing power, exposing transmitted financial data to interception", "DES encryption is too fast for modern networks", "VPN concentrators should not use any encryption", "DES is only outdated for government use, not commercial"]'::jsonb,
 0,
 'DES with 56-bit keys was deprecated because advances in computing power make brute-force attacks feasible. Modern standards require AES-128 or AES-256 encryption for VPN connections. Financial data transmitted over a VPN using DES encryption is vulnerable to interception and decryption, making this a critical security finding.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'Which of the following scenarios BEST illustrates the use of a community cloud?',
 '["A single company builds a private data center for its exclusive use", "A startup uses a pay-as-you-go public cloud for its website", "Several healthcare organizations share a cloud infrastructure designed to meet HIPAA compliance requirements", "An individual uses free cloud storage for personal photos"]'::jsonb,
 2,
 'A community cloud is shared infrastructure provisioned for exclusive use by a specific community of organizations with shared concerns such as compliance requirements, security policies, or mission objectives. Healthcare organizations sharing HIPAA-compliant cloud infrastructure is a textbook example. Private cloud serves one organization, and public cloud serves the general public.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A company''s IT team proposes replacing individual server operating systems with a container orchestration platform (Kubernetes) to run the accounting, CRM, and HR applications. What is the PRIMARY operational benefit?',
 '["Each application gets its own dedicated physical server", "The applications no longer need any networking configuration", "Container orchestration eliminates the need for application updates", "Automated deployment, scaling, and self-healing of containerized applications across a cluster of machines"]'::jsonb,
 3,
 'Kubernetes provides automated deployment, horizontal scaling based on demand, load balancing, and self-healing (automatically restarting failed containers). This reduces manual operational overhead compared to managing individual server OS instances. It does not eliminate networking needs or application updates, and it uses shared infrastructure rather than dedicated physical servers.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An auditor is reviewing a client''s data center and notes that the primary and backup power supplies feed through the same electrical conduit. What type of infrastructure weakness does this represent?',
 '["A common mode failure where a single conduit failure eliminates both primary and backup power", "A logical access vulnerability", "A software configuration error", "A network segmentation issue"]'::jsonb,
 0,
 'Routing both primary and backup power through the same conduit creates a common mode failure point. If the conduit is damaged (fire, water, physical impact), both power sources are lost simultaneously, defeating the purpose of having redundant power. Proper design requires diverse physical paths for redundant systems.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'Which of the following BEST describes the PaaS cloud service model?',
 '["The provider delivers only raw compute, storage, and networking resources", "The provider delivers a complete, ready-to-use application accessed via a web browser", "The provider manages infrastructure and middleware, allowing developers to focus on building and deploying applications", "The customer manages all layers from hardware to application"]'::jsonb,
 2,
 'Platform as a Service (PaaS) provides a managed environment that includes infrastructure, operating system, middleware, and runtime. Developers deploy their application code without managing the underlying layers. IaaS provides only raw resources, SaaS delivers complete applications, and managing all layers describes on-premises hosting.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A financial institution must comply with data sovereignty laws requiring that all customer data remain within the country''s borders. The institution wants to use cloud services. Which cloud deployment consideration is MOST critical?',
 '["Choosing the cloud provider with the lowest price", "Using only open-source cloud platforms", "Ensuring the cloud provider''s headquarters is in the same country", "Selecting a cloud region located within the country and configuring data residency policies to prevent cross-border replication"]'::jsonb,
 3,
 'Data sovereignty compliance requires that data physically resides within the country''s borders. The critical factor is selecting a cloud region within the country and configuring policies that prevent data from being replicated or backed up to regions outside the country. The provider''s headquarters location, pricing, or open-source status do not determine where data physically resides.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A company operates a legacy mainframe for batch processing of end-of-day financial transactions alongside modern cloud-native microservices for real-time trading. An API integration layer translates between the two systems. What is this architectural pattern called?',
 '["Strangler fig pattern with an anti-corruption layer", "Complete cloud migration", "Monolithic deployment", "Serverless computing"]'::jsonb,
 0,
 'The strangler fig pattern gradually replaces legacy system functionality with modern services while maintaining an integration layer (anti-corruption layer) that translates between old and new systems. This allows incremental modernization without a risky big-bang migration. The API integration layer prevents the legacy system''s data formats and protocols from contaminating the new architecture.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An organization''s network operations center monitors all LAN traffic using a protocol analyzer. At which OSI layer does a protocol analyzer capture and decode complete frame data including MAC addresses?',
 '["Physical layer (Layer 1)", "Network layer (Layer 3)", "Data Link layer (Layer 2)", "Session layer (Layer 5)"]'::jsonb,
 2,
 'Protocol analyzers capture frames at the Data Link layer (Layer 2), which includes MAC addresses, frame type, and the encapsulated payload. While analyzers can decode all layers, the raw capture occurs at Layer 2 where complete Ethernet frames are visible. The Physical layer deals with raw bits, and higher layers are decoded from the captured frame data.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'A company wants to deploy a new expense reporting application quickly without managing servers, containers, or infrastructure. Developers only want to write the application logic. Which cloud model is MOST appropriate?',
 '["IaaS with self-managed virtual machines", "PaaS with managed application hosting", "SaaS by purchasing an existing expense application", "FaaS (serverless) where code runs in response to events without provisioning servers"]'::jsonb,
 3,
 'Function as a Service (FaaS), also known as serverless computing, allows developers to deploy individual functions that execute in response to events without provisioning or managing any servers or containers. The cloud provider handles all infrastructure, scaling, and availability. This provides the least operational overhead when the goal is to focus solely on application logic.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Infrastructure and Architecture',
 'An auditor reviewing a client''s IT infrastructure discovers that the company''s backup SAN is connected to the same network switch as the production SAN with no dedicated fabric. What risk does this introduce?',
 '["The backup SAN will automatically overwrite production data", "SAN devices cannot share network switches under any circumstances", "The backup SAN will run faster due to shared bandwidth", "Network congestion or a switch failure could simultaneously impact both production and backup storage, undermining recoverability"]'::jsonb,
 3,
 'When production and backup SANs share the same network switch without a dedicated fabric or separate paths, a single switch failure or severe congestion affects both systems simultaneously. This defeats the purpose of having separate backup storage because the backup becomes unavailable at the same time as production, undermining the disaster recovery strategy.',
 'hard');

-- ============================================================
-- ERP and Accounting Information Systems (34 questions)
-- Difficulty: 10 easy, 17 medium, 7 hard
-- ============================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company''s ERP system includes modules for general ledger, accounts payable, accounts receivable, and inventory. Which characteristic distinguishes an ERP system from separate standalone applications performing the same functions?',
 '["All modules share a single integrated database, ensuring data consistency across functions", "Each module uses its own independent database", "ERP systems do not require user authentication", "ERP modules cannot be customized"]'::jsonb,
 0,
 'The defining characteristic of an ERP system is its integrated database shared across all modules. When a sales transaction is recorded, the AR, GL, and inventory modules are updated simultaneously from the same data source, eliminating redundant data entry and ensuring consistency. Standalone applications maintain separate databases that must be manually reconciled.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'In the revenue transaction cycle of an AIS, which document initiates the process of recognizing revenue and recording an accounts receivable?',
 '["Purchase requisition", "Receiving report", "Bank deposit slip", "Sales invoice"]'::jsonb,
 3,
 'The sales invoice documents the sale of goods or services to a customer and triggers revenue recognition and the creation of an accounts receivable entry. A purchase requisition initiates the expenditure cycle, a receiving report documents goods received, and a bank deposit slip records cash receipts — all part of different transaction phases or cycles.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company processes vendor payments in nightly batches rather than in real time. Which of the following BEST describes the primary trade-off of batch processing compared to real-time processing?',
 '["Batch processing is more expensive to implement", "Batch processing provides better data accuracy than real-time processing", "Batch processing delays data availability but is more efficient for high-volume, routine transactions", "Batch processing eliminates the need for input validation"]'::jsonb,
 2,
 'Batch processing collects transactions over a period and processes them together, which is efficient for high-volume, routine operations like vendor payments. The trade-off is delayed data availability — account balances and reports are not current until the batch runs. Real-time processing updates immediately but requires more system resources per transaction.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'An organization exchanges purchase orders with its suppliers using EDI (Electronic Data Interchange). Which of the following is the PRIMARY advantage of EDI over manual document exchange?',
 '["EDI automates document exchange in standardized formats, reducing manual data entry errors and processing time", "EDI eliminates the need for any internal controls over purchasing", "EDI requires no network connectivity between trading partners", "EDI allows informal, unstructured communication between parties"]'::jsonb,
 0,
 'EDI transmits business documents (purchase orders, invoices, shipping notices) in standardized electronic formats between trading partners'' systems. This automation reduces manual data entry errors, speeds processing, and lowers transaction costs. EDI still requires controls, network connectivity, and uses highly structured (not informal) message formats.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company is integrating its CRM system with its ERP system using RESTful APIs that synchronize customer data in real time. Compared to a batch file transfer approach, what is the PRIMARY benefit of real-time API integration?',
 '["Lower implementation cost", "No error handling is needed with API integration", "API integration does not require security controls", "Customer data is immediately consistent across both systems, enabling real-time credit decisions and order processing"]'::jsonb,
 3,
 'Real-time API integration ensures that customer data changes in the CRM (new customer, credit limit update, address change) are immediately reflected in the ERP system. This enables accurate real-time credit decisions, order processing, and invoicing without waiting for a batch synchronization window. API integration is typically more complex and costly to implement but provides superior data currency.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'Which of the following BEST describes a master data management (MDM) strategy in the context of an ERP system?',
 '["Backing up the ERP database on a daily schedule", "Granting all users administrative access to the database", "Establishing a single, authoritative source for critical business data elements such as customer, vendor, and product records across the enterprise", "Archiving old transaction records to free up storage"]'::jsonb,
 2,
 'Master data management (MDM) ensures that critical reference data (customers, vendors, products, chart of accounts) has a single authoritative source — often called the "golden record" — that is consistent and accurate across all systems. Without MDM, duplicate or conflicting master records lead to reconciliation issues, reporting errors, and control failures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'In an automated accounting system, which of the following is an example of a processing control?',
 '["A check digit verification on a vendor number entered by a clerk", "A supervisor reviewing printed exception reports after batch processing", "A locked file cabinet storing physical copies of invoices", "A system-enforced rule that debits must equal credits for every journal entry before it can be posted"]'::jsonb,
 3,
 'Processing controls ensure data is handled correctly during computation and updating. A system rule requiring balanced debits and credits before posting is a processing control that prevents out-of-balance entries. Check digit verification is an input control, exception report review is an output/detective control, and physical document storage is a physical control.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'An accounts payable clerk can create new vendor records, enter invoices, and approve payments in the ERP system. The internal auditor flags this as a control weakness. Which automated control would BEST mitigate this risk?',
 '["Implementing role-based access controls that separate vendor creation, invoice entry, and payment approval into different roles", "Requiring the clerk to use a strong password", "Adding a CAPTCHA to the vendor creation form", "Encrypting the accounts payable database"]'::jsonb,
 0,
 'Role-based access controls (RBAC) enforce segregation of duties by assigning users to roles with limited, non-overlapping permissions. Separating vendor creation, invoice entry, and payment approval into distinct roles prevents one person from creating a fictitious vendor and processing fraudulent payments. Strong passwords, CAPTCHAs, and encryption address different risks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'Which of the following is an example of an output control in an accounting information system?',
 '["Validating account numbers at the point of data entry", "Requiring manager approval before a journal entry is posted", "Comparing the total of a printed accounts receivable aging report to the general ledger AR balance", "Using encryption to protect data in transit"]'::jsonb,
 2,
 'Output controls ensure that processed information is accurate, complete, and distributed only to authorized recipients. Comparing the aging report total to the GL balance is an output reconciliation control that verifies the accuracy and completeness of the report. Input validation is an input control, manager approval is an authorization control, and encryption is a security control.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company uses XML-based messages to exchange invoice data between its ERP system and a third-party logistics provider. Which advantage does XML provide over fixed-format flat files?',
 '["XML files are always smaller in size", "XML does not require any parsing or processing", "XML eliminates the need for data validation", "XML is self-describing with tagged data elements, making it easier to validate, transform, and extend without breaking existing integrations"]'::jsonb,
 3,
 'XML uses self-describing tags that label each data element, making the data structure human-readable and machine-parseable. New fields can be added without breaking existing integrations that ignore unknown tags. Flat files rely on fixed positions, making them brittle to structural changes. XML files are typically larger, still require parsing, and data validation remains necessary.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'The HR/payroll cycle in an AIS involves several key documents and processes. Which of the following controls is MOST effective at preventing ghost employee fraud?',
 '["Periodic comparison of the payroll register to HR''s active employee master file by an independent party", "Encrypting payroll direct deposit files", "Requiring employees to use direct deposit instead of paper checks", "Increasing the frequency of payroll processing from biweekly to weekly"]'::jsonb,
 0,
 'Ghost employee fraud involves paying fictitious employees. Comparing the payroll register (who gets paid) to the HR active employee master file (who actually works there) by an independent party detects names on payroll that do not correspond to real, active employees. Encryption, direct deposit, and processing frequency do not address this specific fraud risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'In the expenditure cycle, a purchase requisition is submitted by the warehouse manager. What is the NEXT step in a properly controlled expenditure process?',
 '["The warehouse manager directly places an order with the vendor", "The accounts payable department issues a check to the vendor", "The purchasing department reviews and creates an approved purchase order", "The receiving department prepares a receiving report"]'::jsonb,
 2,
 'In a properly controlled expenditure cycle, the purchase requisition goes to the purchasing department, which reviews the request, selects a vendor, negotiates terms, and issues an approved purchase order. Segregation of duties requires that the person requesting goods (warehouse) is not the same person authorizing the purchase (purchasing department).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company''s ERP system uses automated three-way matching but has set the tolerance threshold at $10,000. An auditor notes that many invoices just under this threshold are being auto-approved. What should the auditor recommend?',
 '["Increase the tolerance to $25,000 to reduce false exceptions", "Eliminate automated matching and switch to fully manual review", "Remove all tolerance thresholds to match every cent exactly", "Lower the tolerance threshold and implement exception reporting for invoices clustering near the limit"]'::jsonb,
 3,
 'A clustering of invoices just below the threshold suggests potential manipulation (invoice splitting or price inflation) to avoid detection. Lowering the threshold and adding analytics to flag unusual patterns near the limit strengthens the control. Increasing the threshold worsens the problem, fully manual review is inefficient, and zero tolerance generates excessive false positives.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'Which of the following is the BEST description of an application control as opposed to an IT general control?',
 '["Application controls are specific to a particular business process or transaction and are built into the software to ensure data integrity", "Application controls apply to all IT systems across the organization", "Application controls are physical security measures for servers", "Application controls are only manual procedures performed by end users"]'::jsonb,
 0,
 'Application controls are embedded within specific applications to ensure the completeness, accuracy, authorization, and validity of transactions processed by that application. They include input validation, processing rules, and output checks. IT general controls (access management, change management, operations) apply broadly across all systems and support the effectiveness of application controls.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company''s ERP implementation team is configuring the fixed assets module. Which of the following configurations is MOST important for accurate financial reporting?',
 '["Setting the default screen color to match corporate branding", "Enabling the fastest database query mode", "Configuring depreciation methods, useful lives, and salvage values to align with the company''s accounting policies and applicable standards", "Maximizing the number of concurrent users who can access the module"]'::jsonb,
 2,
 'The fixed assets module''s depreciation configuration directly impacts financial statement accuracy. Depreciation methods (straight-line, declining balance), useful lives, and salvage values must match the company''s accounting policies and applicable standards (GAAP/IFRS). Incorrect configuration produces incorrect depreciation expense, accumulated depreciation, and net book values throughout the financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'An organization''s AIS processes sales transactions through the following sequence: sales order entry, credit check, shipping, billing, and cash collection. In which step is an automated credit limit check MOST effectively placed?',
 '["During cash collection to verify the customer paid on time", "After shipping to ensure goods were delivered", "During sales order entry before the order is approved for fulfillment", "During billing after the invoice has been generated"]'::jsonb,
 2,
 'An automated credit limit check is most effective as a preventive control during sales order entry, before goods are committed or shipped. Checking credit after shipping means goods have already left the warehouse to a potentially uncreditworthy customer. Checking during billing or cash collection is too late to prevent the credit loss.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'During an audit of an ERP system, the auditor discovers that the system automatically generates recurring journal entries for monthly accruals. The auditor wants to determine if these entries are authorized. What is the MOST appropriate audit procedure?',
 '["Accept the entries because they are system-generated and therefore correct", "Test only the entries that exceed materiality thresholds", "Interview the CFO and accept their verbal confirmation", "Review the recurring entry templates and authorization documentation, then trace a sample of generated entries to supporting calculations"]'::jsonb,
 3,
 'Automated recurring entries still require authorization — someone must approve the template configuration (amounts, accounts, frequency). The auditor should review who authorized the templates, verify the underlying calculations, and trace sample entries to supporting documentation. System-generated entries can be incorrect if templates are misconfigured.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'An ERP vendor releases a critical security patch for the accounts payable module. The company''s IT policy requires testing before applying patches to production. Which approach BEST balances security urgency with operational risk?',
 '["Test the patch in a non-production environment that mirrors production, then apply to production after successful validation", "Apply the patch directly to production immediately without testing", "Delay the patch until the next scheduled quarterly maintenance window", "Disable the accounts payable module until the patch is fully tested over several months"]'::jsonb,
 0,
 'Testing a critical security patch in a production-mirror environment balances urgency with risk management. It verifies the patch does not break functionality before applying it to production. Applying without testing risks system breakage, delaying until the quarterly window leaves the vulnerability exposed too long, and disabling the module disrupts business operations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A manufacturing company''s production cycle in its AIS tracks raw materials, work-in-process, and finished goods. Which document authorizes the release of raw materials from the warehouse to the production floor?',
 '["Sales order", "Purchase order", "Materials requisition", "Bill of lading"]'::jsonb,
 2,
 'A materials requisition (also called a production order or work order materials list) authorizes the warehouse to release specific raw materials for production. This document provides a record of what was issued, enabling accurate inventory tracking and cost allocation. Sales orders initiate the revenue cycle, purchase orders the expenditure cycle, and bills of lading document shipments.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'An auditor is testing segregation of duties in an ERP system and obtains a user access matrix. Which of the following role combinations represents the HIGHEST fraud risk?',
 '["A user who can enter sales orders and view inventory levels", "A user who can view the general ledger and generate financial reports", "A user who can enter timesheets and view the employee directory", "A user who can create vendors, enter invoices, and initiate electronic payments"]'::jsonb,
 3,
 'The ability to create vendors, enter invoices, and initiate payments gives a single user control over the entire disbursement process. This combination enables fictitious vendor fraud: creating a fake vendor, entering a fake invoice, and paying it. The other combinations involve view-only access or activities within the same function that do not create comparable fraud opportunities.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A retail company''s ERP system integrates point-of-sale (POS) data with inventory and general ledger modules. When a sale occurs, inventory quantities and cost of goods sold are updated automatically. This is an example of:',
 '["Real-time transaction processing with integrated module updates", "Batch processing with end-of-day updates", "Manual journal entry posting", "Offline data synchronization"]'::jsonb,
 0,
 'When a POS transaction simultaneously updates inventory quantities and records the COGS journal entry across integrated ERP modules, this is real-time transaction processing. The sale event triggers immediate, coordinated updates across multiple modules through the shared database, ensuring inventory and financial records are always current.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company''s ERP system has a workflow engine that routes purchase orders for approval based on dollar amount thresholds. Orders under $5,000 require one manager approval, $5,000-$50,000 require director approval, and over $50,000 require VP approval. An auditor finds that 15% of purchase orders over $50,000 were approved by directors instead of VPs. What is the MOST likely cause?',
 '["The workflow engine is functioning correctly", "Directors are senior enough to approve any amount", "The approval threshold configuration has an error, or directors have been granted VP-level approval authority in the system without proper authorization", "The ERP system cannot enforce dollar-based approval routing"]'::jsonb,
 2,
 'If purchase orders exceeding $50,000 are being approved at the wrong level, the most likely cause is either a misconfiguration in the workflow engine''s threshold settings or directors being granted approval authority beyond their authorized level in the system''s role configuration. Modern ERP systems can enforce dollar-based routing; the issue is in the setup, not the capability.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'Which input control validates data by checking whether a value falls within an expected range, such as verifying that employee hours worked per week do not exceed 80?',
 '["Check digit verification", "Format check", "Completeness check", "Reasonableness check (range check)"]'::jsonb,
 3,
 'A reasonableness check (also called a range check or limit check) validates whether entered values fall within predetermined acceptable boundaries. Checking that weekly hours do not exceed 80 is a classic example. Check digits validate identification numbers, format checks verify data structure (e.g., date format), and completeness checks ensure all required fields are populated.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company''s financing cycle in its AIS records transactions related to debt issuance, equity transactions, and dividend payments. Which of the following automated controls is MOST critical in the financing cycle?',
 '["Authorization controls ensuring that debt issuance and equity transactions require board-level approval before processing", "Spell-checking on text fields in loan agreements", "Color-coding of different transaction types on screen", "Automatic email notifications for all financing transactions"]'::jsonb,
 0,
 'Financing cycle transactions (issuing debt, repurchasing stock, declaring dividends) are high-value, low-frequency events that typically require board or executive-level authorization. Automated authorization controls ensure these significant transactions cannot be processed without the required approval level, preventing unauthorized commitments of organizational resources.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'An organization is evaluating two ERP implementation approaches: big bang (all modules go live simultaneously) versus phased rollout (modules go live sequentially). Which statement about the big bang approach is MOST accurate?',
 '["Big bang has lower overall risk because there is only one cutover event", "Big bang always takes longer to implement than phased rollout", "Big bang carries higher risk because a failure in any module during cutover affects all business functions simultaneously", "Big bang eliminates the need for data migration"]'::jsonb,
 2,
 'A big bang ERP implementation activates all modules simultaneously, creating higher risk because a problem in any module can disrupt all business functions at once. There is no fallback to partially operational modules. Phased rollout reduces risk by implementing one module at a time, allowing lessons learned and issue resolution before the next module goes live.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'An auditor tests an ERP system''s automated control that prevents duplicate invoice payments by checking vendor number, invoice number, and invoice amount. The auditor finds that the control only checks vendor number and invoice number but ignores amount. What is the risk?',
 '["No risk exists because vendor and invoice number alone are sufficient", "The system may reject legitimate invoices from the same vendor with different amounts but the same invoice number", "A vendor could submit invoices with the same number but different (inflated) amounts, and the second submission would be rejected anyway", "The system may fail to detect a duplicate payment if a vendor resubmits an invoice with a slightly different amount"]'::jsonb,
 3,
 'If the duplicate check ignores amount, a vendor (or an internal actor) could resubmit the same invoice with a slightly different dollar amount. Since the system only matches on vendor and invoice number, a modified amount would bypass the duplicate check, resulting in an overpayment. Including amount in the match criteria catches this manipulation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company is migrating to a new ERP system and must transfer five years of historical general ledger data. Which data migration control is MOST important?',
 '["Migrating data as quickly as possible to minimize downtime", "Deleting legacy system data immediately after migration to save storage costs", "Migrating only the current year data and discarding prior years", "Performing reconciliation of migrated data by comparing trial balances and transaction counts between the legacy and new systems"]'::jsonb,
 3,
 'Reconciliation is the most critical data migration control. Comparing trial balances, transaction counts, and key totals between legacy and new systems verifies that data was transferred completely and accurately. Deleting legacy data immediately removes the ability to verify, and discarding prior years may violate retention requirements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'In an ERP system, which module is primarily responsible for managing the subledger that tracks individual customer balances and aging of outstanding invoices?',
 '["Accounts Receivable (AR)", "General Ledger (GL)", "Accounts Payable (AP)", "Fixed Assets"]'::jsonb,
 0,
 'The Accounts Receivable module maintains the customer subledger, which tracks individual customer balances, invoice details, payment history, and aging of outstanding receivables. It feeds summary totals to the General Ledger. The GL maintains control accounts, AP tracks vendor balances, and Fixed Assets tracks long-lived tangible assets.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company''s ERP system generates an exception report listing all journal entries that were posted without a required second approval. This exception report is an example of:',
 '["A preventive control", "A corrective control", "A detective control", "A directive control"]'::jsonb,
 2,
 'An exception report that identifies journal entries posted without required approval is a detective control — it identifies control violations after they occur. The ideal scenario is a preventive control that blocks unapproved entries, but when prevention fails or is bypassed, the exception report detects the breakdown so corrective action can be taken.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A multinational company uses a single ERP instance across all subsidiaries. The consolidation process requires eliminating intercompany transactions. Which ERP feature BEST supports automated intercompany elimination?',
 '["Manual spreadsheet adjustments uploaded monthly", "Separate ERP instances for each subsidiary with no integration", "A standalone reporting tool that estimates eliminations based on historical patterns", "Built-in intercompany transaction tagging and automated elimination rules that identify and remove reciprocal balances during consolidation"]'::jsonb,
 3,
 'Modern ERP systems tag intercompany transactions at the time of entry and apply automated elimination rules during consolidation. This ensures reciprocal revenue/expense, receivable/payable, and investment/equity balances are systematically identified and eliminated. Manual spreadsheets are error-prone, separate instances lack integration, and estimation-based approaches are unreliable.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'An ERP system''s inventory module uses a perpetual inventory method. Which of the following BEST describes how this method records inventory transactions?',
 '["Each inventory receipt and issue is recorded in real time, maintaining a continuously updated inventory balance", "Inventory is counted and valued only at year-end", "Inventory quantities are estimated using industry benchmarks", "Inventory is recorded only when a physical count is performed quarterly"]'::jsonb,
 0,
 'A perpetual inventory system records every receipt, issue, transfer, and adjustment in real time through the ERP system, maintaining a continuously updated record of inventory quantities and costs. This contrasts with periodic inventory systems that update records only after physical counts. Perpetual systems still require periodic physical counts for verification but do not depend on them for record-keeping.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A company''s ERP audit log shows that a system administrator modified the accounts payable aging parameters on the last day of the quarter, then reverted them the next day. What should the auditor investigate?',
 '["Whether the system administrator has completed required training", "Whether the system administrator used a strong password", "Whether the parameter change temporarily suppressed overdue invoices from appearing on the aging report, potentially masking a liquidity problem or delaying vendor payments", "Whether the ERP license allows parameter modifications"]'::jsonb,
 2,
 'Temporarily modifying aging parameters at quarter-end and reverting them the next day is a red flag for financial statement manipulation. The change could have suppressed overdue invoices from aging reports used by management or auditors, masking cash flow problems or overstating the quality of receivables/payables. The timing around the reporting period is particularly suspicious.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'Which of the following is the BEST example of an automated preventive control in the accounts payable module of an ERP system?',
 '["A monthly report listing all payments made during the period", "A quarterly internal audit of vendor payments", "An annual review of the approved vendor list", "A system-enforced rule that blocks payment processing if the purchase order, receiving report, and invoice do not match within tolerance"]'::jsonb,
 3,
 'A system-enforced three-way match that blocks payments when documents do not agree is an automated preventive control — it stops the incorrect or unauthorized transaction before it is processed. Monthly reports, quarterly audits, and annual reviews are detective controls that identify issues after they have already occurred.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'ERP and Accounting Information Systems',
 'A hospital system is selecting an ERP to manage its revenue cycle, including patient billing, insurance claims, and collections. The system must interface with electronic health records (EHR). Which integration consideration is MOST critical?',
 '["The ERP must support healthcare-specific data standards (HL7/FHIR) for seamless, accurate exchange of patient and billing data with the EHR", "The ERP should use the same screen colors as the EHR", "The ERP vendor should be headquartered near the hospital", "The ERP should replicate all EHR clinical functionality"]'::jsonb,
 0,
 'Healthcare ERP-EHR integration requires adherence to industry data standards like HL7 (Health Level Seven) and FHIR (Fast Healthcare Interoperability Resources) to ensure patient demographics, diagnoses, procedures, and charges flow accurately between clinical and financial systems. Without standard interfaces, data translation errors can cause billing inaccuracies and compliance violations.',
 'hard');

-- ============================================================
-- Data Management and Lifecycle (34 questions)
-- Difficulty: 10 easy, 17 medium, 7 hard
-- ============================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'Which of the following BEST describes a relational database management system (RDBMS)?',
 '["A file system that stores data in flat text files with no relationships", "A spreadsheet application used for financial analysis", "A database system that organizes data into tables with defined relationships between them, using SQL for data manipulation", "A document storage system with no query capability"]'::jsonb,
 2,
 'An RDBMS organizes data into structured tables (relations) with defined columns and data types. Tables are linked through primary and foreign key relationships, and SQL (Structured Query Language) is used to insert, update, delete, and query data. This differs from flat files, spreadsheets, and unstructured document stores.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'In a relational database, what is the purpose of database normalization?',
 '["To increase data redundancy for faster queries", "To combine all data into a single table for simplicity", "To encrypt all database fields", "To organize tables to minimize data redundancy and eliminate insertion, update, and deletion anomalies"]'::jsonb,
 3,
 'Normalization decomposes tables into smaller, well-structured relations that minimize redundancy. This eliminates anomalies: insertion anomalies (inability to add data without unrelated data), update anomalies (inconsistent data from partial updates), and deletion anomalies (unintended data loss). The process follows normal forms (1NF, 2NF, 3NF, BCNF).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'An auditor is reviewing a client''s customer database and notices that some customer records have a customer_id in the orders table that does not exist in the customers table. This violates which database constraint?',
 '["Referential integrity (foreign key) constraint", "Primary key constraint", "Check constraint", "Unique constraint"]'::jsonb,
 0,
 'Referential integrity, enforced through foreign key constraints, ensures that every value in a foreign key column matches a value in the referenced primary key column. An order referencing a non-existent customer_id violates this constraint, indicating either orphaned records or a missing foreign key enforcement — both data integrity concerns for an auditor.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company uses a NoSQL document database to store unstructured customer interaction logs from its support center. Which advantage does a NoSQL document database offer over an RDBMS for this use case?',
 '["Stronger enforcement of ACID transactions", "Better support for complex SQL JOIN operations", "Mandatory data normalization", "Flexible schema that accommodates varying data structures across documents without requiring predefined table schemas"]'::jsonb,
 3,
 'NoSQL document databases (e.g., MongoDB) store data as flexible JSON-like documents where each document can have a different structure. This accommodates unstructured and semi-structured data like support logs where fields may vary across records. RDBMS requires predefined schemas and is better suited for structured, relational data.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'In the data lifecycle, which phase involves moving data that is no longer actively used but must be retained for regulatory or business purposes to lower-cost, long-term storage?',
 '["Data creation", "Data destruction", "Data archival", "Data processing"]'::jsonb,
 2,
 'Data archival involves moving inactive data that must be retained (for legal, regulatory, or business reasons) to cost-effective long-term storage. Archived data is typically read-only and accessed infrequently. This differs from active storage (frequently accessed), data creation (generating new data), and data destruction (permanently eliminating expired data).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company''s data retention policy requires that financial records be kept for seven years and then securely destroyed. An auditor discovers that 10-year-old financial records still exist on production servers. What is the PRIMARY risk?',
 '["Retaining data beyond the required period increases exposure to data breaches and legal discovery obligations while providing no compliance benefit", "The records are taking up unnecessary storage space, which is the only concern", "Older data is always more accurate than newer data", "Retaining extra data improves the company''s data governance rating"]'::jsonb,
 0,
 'Retaining data beyond its required retention period creates unnecessary risk. The data remains subject to legal discovery requests (e-discovery), increases the volume of data exposed in a breach, and may violate privacy regulations that require data minimization. There is no compliance benefit to keeping data past its retention period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'Which of the following is a key dimension of data quality that measures whether data values accurately reflect the real-world entities they represent?',
 '["Timeliness", "Availability", "Portability", "Accuracy"]'::jsonb,
 3,
 'Accuracy is the data quality dimension that measures whether data values correctly represent the real-world entities, events, or conditions they are intended to describe. For example, if a customer''s address in the database matches their actual address, the data is accurate. Timeliness measures currency, availability measures accessibility, and portability measures transferability.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'An organization measures data quality across five dimensions: accuracy, completeness, timeliness, consistency, and validity. During a data quality audit, the team finds that the same customer has different addresses in the CRM system versus the billing system. Which dimension is violated?',
 '["Accuracy", "Completeness", "Timeliness", "Consistency"]'::jsonb,
 3,
 'Consistency measures whether the same data element has the same value across different systems, databases, or records. When a customer''s address differs between CRM and billing, the data is inconsistent — both systems cannot be correct. The root cause may be a failed synchronization or duplicate data entry without a master data management strategy.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company needs to consolidate data from its ERP, CRM, and HR systems into a central data warehouse for financial reporting and analytics. Which process extracts data from source systems, transforms it into a consistent format, and loads it into the warehouse?',
 '["OLAP (Online Analytical Processing)", "OLTP (Online Transaction Processing)", "ETL (Extract, Transform, Load)", "CDN (Content Delivery Network)"]'::jsonb,
 2,
 'ETL (Extract, Transform, Load) is the data integration process that pulls data from multiple source systems (Extract), converts it into a consistent format, cleanses it, and applies business rules (Transform), and loads it into the target data warehouse (Load). OLAP is for multidimensional analysis, OLTP handles transactional processing, and CDN distributes web content.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company builds a data warehouse using a star schema design. Which of the following BEST describes the star schema structure?',
 '["A central fact table containing business metrics surrounded by dimension tables that provide descriptive context", "A single denormalized table containing all data", "A fully normalized set of tables in third normal form", "A collection of unrelated flat files"]'::jsonb,
 0,
 'A star schema has a central fact table containing quantitative business metrics (sales amounts, quantities, costs) surrounded by dimension tables that provide descriptive context (date, product, customer, geography). The fact table''s foreign keys point to the dimension tables, creating a star-like pattern. This design optimizes query performance for analytical workloads.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'What distinguishes OLAP (Online Analytical Processing) from OLTP (Online Transaction Processing)?',
 '["OLAP handles individual transactions in real time while OLTP handles bulk analysis", "OLAP and OLTP are identical technologies with different names", "OLAP only works with spreadsheets while OLTP only works with databases", "OLAP is designed for complex queries and analysis across large historical datasets, while OLTP is optimized for fast, concurrent transaction processing"]'::jsonb,
 3,
 'OLAP is optimized for complex analytical queries that aggregate, slice, and dice large volumes of historical data for business intelligence and reporting. OLTP is optimized for high-speed, concurrent processing of individual transactions (inserts, updates) with ACID guarantees. Financial systems typically use OLTP for daily operations and OLAP for reporting and analysis.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A data lake stores raw data from multiple sources in its native format. What is the PRIMARY advantage of a data lake over a traditional data warehouse?',
 '["Data lakes enforce strict schemas before data is loaded", "Data lakes are always smaller than data warehouses", "Data lakes accept structured, semi-structured, and unstructured data without requiring a predefined schema, providing flexibility for future analytics use cases", "Data lakes automatically cleanse and validate all incoming data"]'::jsonb,
 2,
 'Data lakes use a schema-on-read approach, storing raw data in its native format (structured, semi-structured, or unstructured) without requiring schema definition at ingestion time. This provides flexibility to apply different analytical structures later. Data warehouses use schema-on-write, requiring data to conform to a predefined schema before loading.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'Which of the following BEST describes metadata in the context of data management?',
 '["Data about data — information that describes the structure, content, context, and management rules of other data assets", "The actual financial transaction data stored in the general ledger", "Encrypted versions of sensitive data", "Backup copies of production databases"]'::jsonb,
 0,
 'Metadata is descriptive information about data assets — including data definitions, data types, relationships, lineage (where data came from), ownership, access policies, and quality metrics. It enables data discovery, governance, and management by providing context about the organization''s data assets without being the actual business data itself.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A data steward at a financial institution discovers that customer Social Security numbers are stored in plain text in the data warehouse. Which remediation action should be the HIGHEST priority?',
 '["Document the finding and schedule remediation for the next fiscal year", "Delete all SSN data from the warehouse permanently", "Move the warehouse to a different server", "Immediately implement encryption or tokenization of SSNs at rest and restrict access to only users with a legitimate business need"]'::jsonb,
 3,
 'Storing SSNs in plain text creates significant regulatory and breach risk. Immediate remediation through encryption at rest (AES-256) or tokenization, combined with access restriction, protects the data while preserving its utility for authorized purposes. Delaying to next fiscal year leaves the exposure unaddressed, deleting may violate business requirements, and moving servers does not fix the underlying issue.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'An organization assigns a data steward to each major data domain (customer, financial, product). What is the PRIMARY role of a data steward?',
 '["Writing application source code", "Managing physical server hardware", "Ensuring data quality, enforcing data standards, and resolving data issues within their assigned domain on behalf of the data owner", "Approving all IT purchases"]'::jsonb,
 2,
 'Data stewards are responsible for the day-to-day management of data quality and standards within their domain. They enforce naming conventions, resolve data quality issues, manage metadata, ensure compliance with data governance policies, and act as the operational arm of the data owner (who sets strategy and policy). They are not developers, hardware administrators, or purchasing approvers.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company''s SQL developer writes a query that joins four tables without any WHERE clause or JOIN conditions, producing a Cartesian product of millions of rows. What is the immediate impact?',
 '["The query produces an enormous result set of meaningless row combinations that may consume excessive system resources and return incorrect results", "The query returns accurate results faster than a properly joined query", "The database automatically optimizes the query to return only relevant rows", "A Cartesian product is the correct way to query relational data"]'::jsonb,
 0,
 'A Cartesian product (cross join) combines every row from each table with every row from every other table. Without proper JOIN conditions, four tables with 1,000 rows each produce 1 trillion combinations. This consumes excessive CPU, memory, and I/O, may crash the system, and returns meaningless results. Databases do not automatically correct missing join conditions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company''s data governance framework assigns three roles: data owner, data custodian, and data steward. Which role is responsible for making decisions about who can access the data and what classification level it receives?',
 '["Data custodian", "Data steward", "Data owner", "Database administrator"]'::jsonb,
 2,
 'The data owner (typically a business executive or department head) is accountable for the data asset and makes strategic decisions including data classification, access authorization, and acceptable use policies. The data custodian implements technical controls (backups, security), the data steward manages day-to-day quality, and the DBA manages database operations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'An auditor examines a client''s data destruction procedures and finds that decommissioned hard drives containing financial data are simply reformatted before disposal. Why is this insufficient?',
 '["Reformatting is the most secure data destruction method available", "Reformatting destroys data more thoroughly than physical destruction", "Financial data does not require secure destruction", "Reformatting only removes file system references but leaves the actual data recoverable on the disk platters using forensic tools"]'::jsonb,
 3,
 'Standard reformatting (quick format) only removes file system metadata (directory entries, file allocation tables) but does not overwrite the actual data blocks on the disk. Forensic data recovery tools can reconstruct files from the remaining magnetic patterns. Secure destruction requires cryptographic erasure, degaussing, multi-pass overwriting, or physical destruction (shredding).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company collects customer data through its website, stores it in a CRM database, uses it for marketing analytics, archives it after two years of inactivity, and destroys it after seven years. This sequence represents:',
 '["A data governance framework", "A data warehouse ETL process", "The data lifecycle from creation through storage, use, archival, and destruction", "A database normalization process"]'::jsonb,
 2,
 'The sequence of collecting (creation), storing, using for analytics, archiving inactive records, and destroying after the retention period represents the complete data lifecycle. Each phase has distinct governance requirements including access controls, quality standards, retention policies, and secure destruction procedures.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A financial institution implements a data governance council consisting of representatives from finance, IT, compliance, and business units. What is the PRIMARY purpose of this cross-functional council?',
 '["To establish enterprise-wide data policies, resolve data ownership disputes, and ensure alignment between data management practices and business objectives", "To write application source code", "To perform daily database backups", "To approve all employee vacation requests"]'::jsonb,
 0,
 'A data governance council provides strategic oversight for the organization''s data management program. Its cross-functional composition ensures that data policies balance business needs, regulatory requirements, technical constraints, and risk management. The council resolves disputes between data domains, approves governance policies, and monitors data quality metrics at the enterprise level.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'An organization''s data quality team measures the completeness dimension and finds that 15% of vendor records are missing tax identification numbers. What is the MOST likely business impact?',
 '["No impact because tax IDs are optional for all vendors", "Inability to file accurate 1099 forms for those vendors, creating regulatory compliance risk and potential IRS penalties", "The vendors will be automatically deleted from the system", "The ERP system will crash due to missing data"]'::jsonb,
 1,
 'Missing vendor tax identification numbers (TINs/EINs) prevent the company from filing accurate 1099 forms for payments to those vendors. IRS regulations require 1099 reporting for qualifying payments, and failure to include correct TINs can result in penalties, backup withholding requirements, and compliance violations. This directly links data quality to regulatory risk.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company uses an ETL pipeline to load daily sales data into its data warehouse. The transform step includes currency conversion, date standardization, and deduplication. If the transform step fails silently, what is the PRIMARY risk to financial reporting?',
 '["The data warehouse will contain no data", "Financial reports will be generated from unconverted currencies, non-standard dates, and duplicate records, producing inaccurate and misleading financial analysis", "The source systems will lose their data", "Users will receive an error message when accessing reports"]'::jsonb,
 1,
 'A silent transform failure means raw, untransformed data is loaded into the warehouse. Reports generated from this data will contain currency mismatches (mixing USD and EUR amounts), inconsistent date formats that break time-series analysis, and duplicate records that inflate totals. Silent failures are particularly dangerous because users may not know the data is incorrect.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'Which SQL statement is used to retrieve specific columns and rows from a database table based on defined conditions?',
 '["INSERT INTO", "SELECT ... FROM ... WHERE", "CREATE TABLE", "DROP TABLE"]'::jsonb,
 1,
 'The SELECT statement with FROM and WHERE clauses is the fundamental SQL query for retrieving data. SELECT specifies which columns to return, FROM identifies the table(s), and WHERE filters rows based on conditions. INSERT adds new rows, CREATE TABLE defines new tables, and DROP TABLE permanently removes tables.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company''s data warehouse contains ten years of general ledger data. The CFO wants to analyze revenue trends by product line, region, and fiscal quarter. Which data warehouse query technique is MOST appropriate?',
 '["OLTP transaction processing", "OLAP cube analysis with drill-down, slice, and dice operations across product, region, and time dimensions", "Full table scans of the entire general ledger", "Exporting all data to spreadsheets for manual analysis"]'::jsonb,
 1,
 'OLAP cube analysis enables multidimensional exploration of aggregated data. The CFO can drill down from annual to quarterly revenue, slice by specific product lines, and dice across regions — all interactively. OLTP is for transaction processing, full table scans are inefficient for analysis, and exporting to spreadsheets does not scale for ten years of data.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'An organization implements data lineage tracking for its financial reporting data. What does data lineage provide?',
 '["A list of all employees who have accessed the data", "A complete record of data''s origin, every transformation applied, and the path it follows through systems from source to report, enabling auditability and impact analysis", "The physical location of servers storing the data", "A backup of all historical data"]'::jsonb,
 1,
 'Data lineage documents the complete journey of data — from its point of origin through all transformations, calculations, aggregations, and system transfers until it appears in a report or dashboard. This enables auditors to trace reported figures back to source transactions, and it allows impact analysis when upstream data sources change.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company stores encrypted financial records on magnetic tape for long-term archival. After five years, the company discovers that the encryption keys used to protect the archived data have been lost. What is the consequence?',
 '["The data can still be read because encryption does not affect archived data", "The archived financial records are permanently inaccessible because the data cannot be decrypted without the encryption keys", "New encryption keys can be automatically generated to decrypt the old data", "The tape vendor can recover the data without the keys"]'::jsonb,
 1,
 'Without the encryption keys, encrypted data is permanently inaccessible. Modern encryption algorithms are designed so that data cannot be recovered without the correct key. This scenario highlights the critical importance of key management — encryption keys must be securely stored, backed up, and maintained throughout the entire data retention period.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A data quality initiative identifies that the "state" field in the customer table contains values like "CA", "California", "Calif.", and "calif" for the same state. Which data quality dimension is violated, and what remediation technique is appropriate?',
 '["Accuracy — re-collect all customer data from scratch", "Consistency — implement standardized reference data (lookup tables) and cleanse existing records to a single canonical format", "Timeliness — update the records more frequently", "Completeness — add more fields to the table"]'::jsonb,
 1,
 'Multiple representations of the same value violate consistency. The remediation involves establishing canonical reference data (a lookup table with the standard value for each state) and cleansing existing records to match. Going forward, input controls should validate entries against the reference table to prevent inconsistent values from entering the system.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'An organization implements a data catalog that indexes all data assets across its ERP, CRM, and data warehouse systems. What business value does a data catalog provide?',
 '["It replaces the need for database backups", "It enables users to discover, understand, and assess the trustworthiness of available data assets through searchable metadata, descriptions, and quality scores", "It automatically deletes duplicate data across systems", "It encrypts all cataloged data assets"]'::jsonb,
 1,
 'A data catalog serves as a searchable inventory of an organization''s data assets, providing metadata, descriptions, ownership information, data quality scores, lineage, and usage statistics. It empowers business users and analysts to find relevant data, understand its meaning and reliability, and determine whether it is suitable for their analytical needs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A financial institution must destroy customer data stored on solid-state drives (SSDs) when closing accounts. Why is traditional magnetic degaussing insufficient for SSDs?',
 '["Degaussing is too expensive for SSDs", "SSDs store data using electrical charges in flash memory cells, not magnetic patterns, so degaussing has no effect on the stored data", "Degaussing works perfectly on SSDs", "SSDs cannot store sensitive data"]'::jsonb,
 1,
 'Degaussing uses strong magnetic fields to erase data on magnetic media (hard drives, tapes). SSDs store data using electrical charges in NAND flash memory cells, which are unaffected by magnetic fields. Secure SSD destruction requires cryptographic erasure (if the drive supports hardware encryption), ATA Secure Erase commands, or physical destruction (shredding).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'In a relational database, a primary key serves what fundamental purpose?',
 '["It encrypts the row data for security", "It uniquely identifies each row in a table, ensuring no duplicate records exist", "It defines the display order of rows on screen", "It limits the number of rows the table can contain"]'::jsonb,
 1,
 'A primary key is a column (or combination of columns) that uniquely identifies each row in a relational table. It enforces entity integrity by ensuring no two rows have the same primary key value and that the key is never null. This unique identification is essential for establishing relationships between tables and preventing duplicate records.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'An auditor queries a client''s database and discovers that the accounts receivable subledger total does not match the general ledger AR control account. The discrepancy is $47,000. Which data quality investigation should the auditor perform FIRST?',
 '["Ignore the discrepancy if it is below materiality", "Run a reconciliation query to identify which specific customer records in the subledger do not tie to the GL, then trace the timing and nature of the discrepancies", "Assume the GL is correct and adjust the subledger", "Delete the subledger and recreate it from the GL"]'::jsonb,
 1,
 'The auditor should first identify the specific records causing the discrepancy by running a detailed reconciliation. This reveals whether the difference is due to timing (unposted batches), data entry errors, system interface failures, or unauthorized adjustments. Assuming either system is correct without investigation, or ignoring the difference, fails to address the root cause.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company''s data governance policy requires that all personally identifiable information (PII) be classified and handled according to its sensitivity level. Which of the following datasets would be classified at the HIGHEST sensitivity level?',
 '["Published annual report data available on the company''s website", "Internal employee headcount by department (no names or IDs)", "Customer database containing names, Social Security numbers, financial account numbers, and health information", "Generic product catalog with prices and descriptions"]'::jsonb,
 2,
 'A database combining names with SSNs, financial account numbers, and health information contains the most sensitive PII categories — each regulated under different laws (GLBA for financial, HIPAA for health, state breach notification laws for SSNs). The combination amplifies risk because a breach exposes multiple types of identity information simultaneously, enabling comprehensive identity theft.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'A company''s data warehouse team is designing a slowly changing dimension (SCD) for the customer dimension table. The business requires tracking historical changes to customer credit ratings for trend analysis. Which SCD type is MOST appropriate?',
 '["Type 1 — overwrite the old value with the new value", "Type 0 — never change the original value", "Type 3 — add a column for the previous value only", "Type 2 — add a new row for each change with effective date ranges, preserving full history"]'::jsonb,
 3,
 'SCD Type 2 creates a new row each time a dimension attribute changes, with effective start and end dates that track when each value was active. This preserves complete history, enabling trend analysis of credit rating changes over time. Type 1 overwrites history, Type 0 never updates, and Type 3 only stores the current and one previous value.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Data Management and Lifecycle',
 'Which data quality dimension measures whether data is available when needed for business decisions and processes?',
 '["Accuracy", "Completeness", "Timeliness", "Validity"]'::jsonb,
 2,
 'Timeliness measures whether data is current and available when needed for decision-making. Financial data that arrives after the reporting deadline, even if accurate and complete, fails the timeliness dimension. For example, if month-end close data is not available until two weeks after month-end, it may be too late for management decisions that depend on current financial information.',
 'easy');

-- ============================================================
-- System Availability and Change Management (40 questions)
-- Difficulty: 12 easy, 20 medium, 8 hard
-- ============================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'Which of the following is the FIRST step an organization should take when developing a Business Continuity Plan (BCP)?',
 '["Conduct a Business Impact Analysis (BIA) to identify critical business functions and the impact of their disruption", "Purchase backup generators and redundant servers", "Select a hot site for disaster recovery", "Draft the recovery procedures document"]'::jsonb,
 0,
 'A BIA is the foundation of BCP development. It identifies critical business processes, quantifies the financial and operational impact of their disruption, and determines recovery priorities and time objectives. Without a BIA, the organization cannot make informed decisions about recovery strategies, resources, or investments.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company''s Business Impact Analysis determines that its accounts receivable system must be recovered within 4 hours of a disaster, with no more than 1 hour of data loss. What do these metrics represent?',
 '["Service Level Agreement (SLA) and Mean Time to Repair (MTTR)", "Recovery Time Objective (RTO) of 4 hours and Recovery Point Objective (RPO) of 1 hour", "Maximum Tolerable Downtime (MTD) and Mean Time Between Failures (MTBF)", "Uptime percentage and availability ratio"]'::jsonb,
 1,
 'RTO (Recovery Time Objective) is the maximum acceptable time to restore a system after disruption — in this case, 4 hours. RPO (Recovery Point Objective) is the maximum acceptable amount of data loss measured in time — here, 1 hour, meaning backups or replication must occur at least hourly. These metrics drive the selection of recovery strategies and technologies.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An organization maintains a hot site, a warm site, and a cold site as disaster recovery options. Which site type provides the fastest recovery time?',
 '["Cold site", "Warm site", "Hot site", "All three provide identical recovery times"]'::jsonb,
 2,
 'A hot site is a fully equipped, operational facility with current data (through real-time replication), ready for immediate failover with minimal recovery time. A warm site has hardware and connectivity but requires data restoration and configuration. A cold site provides only the physical space and basic utilities, requiring full hardware installation and data recovery — the longest recovery time.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company''s DRP specifies an RPO of zero for its core banking application. Which data replication strategy is required to meet this objective?',
 '["Nightly tape backups shipped to an offsite facility", "Asynchronous replication with a 15-minute lag", "Synchronous replication where every write is confirmed at both primary and secondary sites before acknowledgment", "Weekly full backups with daily differential backups"]'::jsonb,
 2,
 'An RPO of zero means no data loss is acceptable. Only synchronous replication achieves this by requiring that every write transaction is committed at both the primary and secondary sites before the write is acknowledged to the application. Asynchronous replication has a lag (potential data loss), and backup-based approaches always have a gap between backup points.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company conducts a tabletop exercise as part of its BCP testing. What does a tabletop exercise involve?',
 '["Physically shutting down production systems to simulate a real disaster", "Restoring systems from backup at the disaster recovery site", "Key stakeholders walking through disaster scenarios verbally, discussing roles, decisions, and response procedures without activating actual recovery systems", "Running automated failover tests during business hours"]'::jsonb,
 2,
 'A tabletop exercise is a discussion-based test where participants talk through their roles and decision-making during hypothetical disaster scenarios. It identifies gaps in plans, unclear responsibilities, and communication breakdowns without the cost and risk of disrupting production systems. It is the least disruptive and least costly BCP testing method.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An IT infrastructure team implements server clustering for the financial reporting application. Which type of availability improvement does clustering provide?',
 '["Data encryption at rest", "Faster internet connectivity", "Improved physical security of the data center", "Automatic failover to a surviving node if one server fails, minimizing application downtime"]'::jsonb,
 3,
 'Server clustering groups multiple servers so they work together as a single system. If one node fails, the workload automatically fails over to surviving nodes, minimizing or eliminating downtime for the application. This provides high availability through hardware redundancy and automatic recovery, distinct from encryption, bandwidth, or physical security improvements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company uses a load balancer in front of its three web servers hosting the customer payment portal. What is the PRIMARY function of the load balancer?',
 '["Distributing incoming traffic across multiple servers to prevent any single server from becoming overwhelmed and to provide failover if a server becomes unavailable", "Encrypting all traffic between the browser and server", "Storing cached copies of web pages", "Scanning incoming traffic for malware"]'::jsonb,
 0,
 'A load balancer distributes incoming network traffic across multiple backend servers based on algorithms (round-robin, least connections, weighted). This prevents individual server overload, improves response times, and provides availability through failover — if one server fails, the load balancer routes traffic to remaining healthy servers.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An organization''s change management process requires that all changes to production systems be reviewed and approved by a Change Advisory Board (CAB). What is the PRIMARY purpose of the CAB?',
 '["To write the code for system changes", "To perform backup and recovery operations", "To assess the risk, impact, and readiness of proposed changes before they are implemented in the production environment", "To negotiate vendor contracts for new hardware"]'::jsonb,
 2,
 'The CAB is a cross-functional body that evaluates proposed changes to production systems by assessing risk (what could go wrong), impact (what systems and users are affected), resource requirements, testing adequacy, and rollback plans. The CAB''s approval helps ensure changes do not introduce unintended disruptions to production services.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A standard change request workflow in an ITIL-based change management process includes which of the following sequence of steps?',
 '["Implement, then request, then approve", "Deploy immediately, then document the change after the fact", "Send an email notification, then implement at the developer''s discretion", "Request, assess and classify, approve (CAB review), implement, review (post-implementation review)"]'::jsonb,
 3,
 'The standard change management workflow follows a structured sequence: submit a request for change (RFC), assess the risk and classify the change priority and category, obtain approval from the appropriate authority (CAB for significant changes), implement during an approved maintenance window, and conduct a post-implementation review to verify success and capture lessons learned.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'Before approving a significant system change, the CAB requires an impact assessment. Which of the following should the impact assessment address?',
 '["The affected systems and services, potential risks, required testing, implementation timeline, resource needs, and rollback plan", "Only the cost of the hardware needed for the change", "Only whether the change will improve system performance", "The personal preferences of the CAB members"]'::jsonb,
 0,
 'A comprehensive impact assessment evaluates all systems and services affected by the change, identifies risks and mitigation strategies, defines required testing (functional, regression, performance), establishes the implementation timeline and maintenance window, identifies resource requirements, and documents a rollback plan in case the change fails.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company''s IT team implements a change to the ERP system''s tax calculation module during business hours without following the change management process. Several customers receive incorrect invoices. What type of change management failure does this represent?',
 '["An approved standard change", "A successful emergency change", "An unauthorized change that bypassed assessment, approval, and testing controls, resulting in a production incident", "A pre-approved routine change"]'::jsonb,
 2,
 'Implementing a change without following the change management process (no RFC, no risk assessment, no CAB approval, no testing, no scheduled maintenance window) constitutes an unauthorized change. The resulting incorrect invoices demonstrate exactly why change controls exist — to prevent untested, unreviewed changes from disrupting production services.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'Which of the following BEST describes the purpose of a Configuration Management Database (CMDB)?',
 '["A tool for writing application source code", "A backup system for financial databases", "A project management scheduling tool", "A repository that stores information about IT assets (configuration items) and their relationships, providing a single source of truth for the IT environment"]'::jsonb,
 3,
 'A CMDB maintains records of all configuration items (CIs) — servers, applications, databases, network devices, and their interconnections. It provides visibility into the IT environment, supports impact analysis for changes (which systems are affected if this server goes down), and enables effective incident and problem management.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'During a disaster recovery test, an organization discovers that restoring its financial database from backup takes 8 hours, but the RTO specified in the DRP is 4 hours. What should the organization do?',
 '["Accept the 8-hour recovery time since the test was just a drill", "Revise the recovery strategy to meet the 4-hour RTO, which may include implementing faster backup technology, warm standby databases, or replication", "Increase the RTO to 8 hours to match current capabilities without any analysis", "Cancel future DR tests to avoid discovering more gaps"]'::jsonb,
 1,
 'When DR testing reveals that recovery time exceeds the RTO, the organization must improve its recovery strategy to close the gap. Options include faster backup media (disk-based vs. tape), warm standby databases that require less restoration time, replication to reduce data transfer needs, or pre-staged recovery environments. Simply adjusting the RTO without analyzing business impact is irresponsible.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An organization uses N+1 redundancy for its database servers, operating three active servers plus one standby server. What does the N+1 redundancy model provide?',
 '["Triple the processing capacity of a single server", "One additional server beyond the minimum required, providing failover capacity if any single active server fails", "Backup capability for only half the active servers", "Complete protection against all possible failure scenarios"]'::jsonb,
 1,
 'N+1 redundancy means operating one more component than the minimum required (N) for normal operations. With three active servers and one standby, any single server failure is covered by the standby automatically taking over. This is more cost-effective than N+N (full duplication) while providing protection against single-point failures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'What is the PRIMARY purpose of a post-implementation review (PIR) after a system change has been deployed?',
 '["To assign blame for any problems that occurred", "To evaluate whether the change achieved its objectives, identify any issues, and capture lessons learned for future changes", "To permanently lock the system configuration so no further changes can be made", "To calculate the exact cost of the change for billing purposes"]'::jsonb,
 1,
 'A PIR assesses whether the change met its stated objectives, whether any unintended side effects occurred, whether the change process was followed correctly, and what lessons can be applied to future changes. It is a continuous improvement mechanism, not a blame exercise, configuration lock, or purely financial accounting activity.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company''s change management policy defines four categories: standard, normal, major, and emergency changes. Which category applies to a pre-approved, low-risk, routine change such as adding a new user account?',
 '["Emergency change", "Major change", "Normal change", "Standard change"]'::jsonb,
 3,
 'Standard changes are pre-approved, low-risk, frequently performed changes with a documented and proven procedure. Examples include adding user accounts, installing approved software, or applying pre-tested routine patches. They follow a predefined workflow and do not require individual CAB approval for each occurrence because the process has already been assessed and approved.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An emergency change is needed to patch a critical zero-day vulnerability in the financial reporting application that is being actively exploited. How should the organization handle this under proper change management?',
 '["Follow the standard change process including scheduling the change for the next monthly maintenance window", "Invoke the emergency change procedure, which allows expedited approval (verbal or email from authorized managers), immediate implementation, and retrospective documentation and CAB review", "Ignore the vulnerability until the next scheduled patch cycle", "Shut down the application permanently until a regular change can be scheduled"]'::jsonb,
 1,
 'Emergency change procedures provide a fast-track approval path for urgent situations where the risk of not implementing the change immediately exceeds the risk of bypassing the normal process. The change is approved through an expedited mechanism (emergency CAB, authorized manager), implemented immediately, and then documented and reviewed retrospectively.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An auditor reviews a company''s change management records and finds that 40% of all changes are classified as emergency changes. What concern does this raise?',
 '["This is a normal and healthy ratio of emergency to planned changes", "A high percentage of emergency changes suggests inadequate planning, poor change management discipline, or potential misuse of the emergency process to bypass normal controls", "Emergency changes are always safer than planned changes", "The auditor should not question the classification of changes"]'::jsonb,
 1,
 'Industry benchmarks suggest emergency changes should represent less than 5-10% of all changes. A 40% rate indicates systemic issues: poor capacity planning that causes urgent failures, developers bypassing normal controls by labeling changes as emergencies, or insufficient change management maturity. Each emergency change that bypasses the normal review process increases the risk of production incidents.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company implements automated failover for its primary database server. During a test, the failover to the secondary server completes in 30 seconds, but the application takes an additional 10 minutes to reconnect to the new database server. What does this reveal?',
 '["The failover is working perfectly", "The infrastructure failover is fast, but the application layer lacks automated reconnection logic, creating a gap between infrastructure recovery and service recovery", "The secondary server is too powerful", "Database failover should never be tested"]'::jsonb,
 1,
 'This test reveals that infrastructure-level failover (database server switching) and application-level recovery (reconnecting and resuming) are separate concerns. Even with fast infrastructure failover, the total service recovery time includes application reconnection, session re-establishment, and cache warming. End-to-end RTO must account for all layers, not just infrastructure.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'Which of the following metrics measures the average time a system operates between failures?',
 '["Mean Time to Repair (MTTR)", "Mean Time Between Failures (MTBF)", "Recovery Time Objective (RTO)", "Recovery Point Objective (RPO)"]'::jsonb,
 1,
 'Mean Time Between Failures (MTBF) measures the average operational time between system failures, indicating system reliability. Higher MTBF means greater reliability. MTTR measures the average time to restore after failure, RTO is the target recovery time, and RPO is the acceptable data loss window. MTBF and MTTR are actual measurements; RTO and RPO are objectives.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company''s change management process requires a rollback plan for every production change. What is the PRIMARY purpose of a rollback plan?',
 '["To document the change for compliance records", "To provide a predefined procedure to reverse the change and restore the system to its previous state if the change causes unexpected problems", "To ensure the change is implemented faster", "To eliminate the need for testing before deployment"]'::jsonb,
 1,
 'A rollback plan is a predefined set of steps to reverse a change and return the system to its pre-change state. It is a safety net that ensures the organization can recover quickly if a change introduces defects, performance degradation, or unexpected behavior. Every production change should have a tested rollback plan before deployment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An organization''s BCP identifies that the maximum tolerable downtime (MTD) for the payroll system is 24 hours. The current RTO is 8 hours. What is the significance of the gap between MTD and RTO?',
 '["There is no significance; MTD and RTO should always be equal", "The 16-hour gap provides a safety margin — the organization aims to recover in 8 hours but can tolerate up to 24 hours before the disruption causes unacceptable business impact", "The RTO should be increased to match the MTD", "The MTD should be reduced to match the RTO"]'::jsonb,
 1,
 'MTD represents the absolute maximum time a process can be unavailable before causing unacceptable damage (missed payroll deadlines, regulatory violations, employee hardship). The RTO is the operational target set below the MTD to provide a safety margin for recovery complications. If recovery takes longer than expected, the margin prevents immediate business failure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company''s release management process bundles multiple individual changes into a single release deployed during a scheduled maintenance window. What is the PRIMARY benefit of release management?',
 '["It eliminates the need for change management", "It coordinates multiple changes into a single, planned deployment, reducing the number of production disruptions and enabling comprehensive testing of changes as a group", "It allows changes to be deployed without testing", "It removes the need for CAB approval"]'::jsonb,
 1,
 'Release management groups related changes into a coordinated deployment package. This reduces production disruptions (one maintenance window instead of many), enables integration testing of changes that may interact with each other, provides a single rollback point, and improves communication with stakeholders about what is changing and when.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An organization''s patch management process classifies patches as critical, high, medium, and low severity. Critical patches must be applied within 48 hours. An auditor finds that 25% of critical patches are applied more than 30 days after release. What risk does this create?',
 '["No risk because patches are eventually applied", "Extended exposure to known vulnerabilities that attackers can exploit, as vulnerability details are often publicly available once patches are released", "The servers will automatically shut down if patches are not applied on time", "The patch vendor will revoke the company''s software licenses"]'::jsonb,
 1,
 'When patches are released, the vulnerability details often become public through CVE disclosures and vendor advisories. Attackers actively scan for unpatched systems. Each day a critical patch remains unapplied, the organization is exposed to known, exploitable vulnerabilities. A 30-day delay on critical patches represents a significant and unnecessary security risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company uses geographic redundancy by maintaining its primary data center in New York and a disaster recovery site in Chicago. Which risk does this geographic separation primarily mitigate?',
 '["Software bugs in the application code", "A regional disaster (hurricane, earthquake, power grid failure) that could simultaneously affect both primary and backup systems if they were co-located", "Employee turnover in the IT department", "Vendor price increases for cloud services"]'::jsonb,
 1,
 'Geographic separation ensures that a regional event (natural disaster, widespread power outage, network disruption) cannot simultaneously destroy both the primary and recovery sites. If both sites were in the same city or region, a single disaster could eliminate both, defeating the purpose of having a backup facility.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'During a BIA, the finance department determines that the general ledger system is critical because month-end close must complete within 3 business days of month-end. If the system is unavailable for more than 2 days during the close period, the company will miss SEC filing deadlines. Which BIA output does this scenario illustrate?',
 '["Maximum Tolerable Downtime (MTD) of 2 days during the close period, which drives the RTO requirement", "A routine system maintenance schedule", "A software licensing requirement", "An employee training need"]'::jsonb,
 0,
 'This scenario identifies the MTD for the GL system during the critical close period as 2 days. If downtime exceeds this threshold, the company faces SEC filing violations. The MTD then drives the RTO (which must be less than 2 days during close) and the recovery strategy selection. BIA quantifies these business impacts to prioritize recovery investments.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An organization tests its disaster recovery plan by performing a full-interruption test. What does this involve?',
 '["Reviewing the plan document for completeness", "Conducting a verbal walkthrough of recovery procedures", "Actually shutting down primary systems and activating the recovery site to process real workloads, verifying end-to-end recovery capability", "Sending an email to all employees about the DR plan"]'::jsonb,
 2,
 'A full-interruption test is the most comprehensive and realistic DR test. It involves actually shutting down primary production systems and failing over to the disaster recovery site to process real or simulated workloads. This validates the entire recovery process end-to-end but carries the highest risk of actual business disruption if the recovery fails.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company''s change management policy requires that all changes include a back-out plan. During a recent database upgrade, the back-out plan called for restoring from the pre-change backup. The backup was taken, but no one verified that the backup was restorable. The upgrade failed, and the backup was found to be corrupt. What lesson does this illustrate?',
 '["Back-out plans are unnecessary for database upgrades", "Back-out plans must be tested and verified before the change implementation begins — an untested backup is not a reliable recovery mechanism", "Database upgrades never fail", "Corrupt backups are acceptable if the original change succeeds"]'::jsonb,
 1,
 'This scenario demonstrates that a back-out plan is only as reliable as its last successful test. Taking a backup without verifying its integrity (test restore) creates a false sense of security. Before any production change, the back-out mechanism (backup, snapshot, replication failover) should be validated to ensure it actually works when needed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'Which of the following high availability techniques distributes identical copies of data across multiple storage devices so that if one device fails, data remains accessible from the remaining devices?',
 '["Data compression", "RAID (Redundant Array of Independent Disks)", "Data deduplication", "File archiving"]'::jsonb,
 1,
 'RAID technology distributes and/or replicates data across multiple disk drives to provide fault tolerance. Different RAID levels (1, 5, 6, 10) offer varying combinations of mirroring and striping with parity. If one drive fails, the data can be reconstructed from the remaining drives, preventing data loss and maintaining system availability.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An organization''s change management metrics show that the change success rate has dropped from 95% to 78% over the past quarter. Which analysis should the change manager perform FIRST?',
 '["Immediately stop all production changes", "Analyze failed changes to identify common root causes — such as inadequate testing, poor impact assessment, or insufficient resources — and implement targeted process improvements", "Increase the number of changes to compensate for the failures", "Lower the definition of change success to improve the metric"]'::jsonb,
 1,
 'Root cause analysis of failed changes is the appropriate response to a declining success rate. Common causes include rushed implementations, insufficient testing, incomplete impact assessments, or resource constraints. Identifying patterns enables targeted improvements. Stopping all changes disrupts business, increasing volume worsens the problem, and redefining success masks the issue.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A cloud-hosted financial application uses auto-scaling to handle variable user load during month-end close. What does auto-scaling provide?',
 '["Automatic data backup during peak periods", "Dynamic adjustment of computing resources (adding or removing servers) based on real-time demand, ensuring performance during peaks without over-provisioning during quiet periods", "Automatic software updates during scaling events", "Encryption of data during transmission"]'::jsonb,
 1,
 'Auto-scaling automatically adjusts the number of active compute instances based on predefined metrics (CPU utilization, request count, response time). During month-end close when user activity peaks, additional servers are provisioned to maintain performance. When demand subsides, instances are removed to reduce costs. This elastic capacity matches resources to actual demand.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An auditor reviews a company''s change log and identifies that a developer made direct changes to the production database outside the change management process. No change request, approval, or testing documentation exists. What should the auditor classify this as?',
 '["A pre-approved standard change", "An unauthorized change that represents a significant control deficiency in the change management process", "A normal approved change with streamlined documentation", "An emergency change with appropriate retrospective documentation"]'::jsonb,
 1,
 'A production change with no RFC, no approval, no testing, and no documentation is an unauthorized change — a control deficiency regardless of whether the change itself was technically correct. Unauthorized changes bypass all safeguards designed to prevent production incidents and demonstrate that the change management controls are not operating effectively.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An organization''s DRP includes procedures for three types of recovery sites. The warm site has pre-installed hardware but requires data restoration from offsite backups that takes approximately 6 hours. If the RPO is 24 hours (daily backups) and the RTO is 12 hours, does the warm site meet both objectives?',
 '["No, because warm sites never meet any recovery objectives", "Yes — the daily backup satisfies the 24-hour RPO, and the 6-hour data restoration plus system startup time fits within the 12-hour RTO", "No, because the warm site has no hardware", "Yes, but only if the warm site is in the same building as the primary site"]'::jsonb,
 1,
 'With daily backups, the maximum data loss is 24 hours (meets RPO). The warm site has pre-installed hardware, so recovery involves restoring data (6 hours) plus system configuration and startup (a few additional hours), which fits within the 12-hour RTO. This demonstrates how RTO and RPO requirements drive the selection of recovery site type and backup frequency.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company implements a configuration management process that requires all production server configurations to be documented in the CMDB. During an audit, the auditor finds that 30% of production servers are not recorded in the CMDB. What risk does this present?',
 '["No risk because the CMDB is optional", "Undocumented servers cannot be properly assessed for change impact, may be missed during security patching, and create blind spots in disaster recovery planning", "The undocumented servers will perform better than documented ones", "The CMDB will automatically discover and document the missing servers"]'::jsonb,
 1,
 'Servers not in the CMDB are effectively invisible to IT management processes. They may be missed during security patch deployments (creating vulnerabilities), excluded from impact assessments when changes are planned (causing unexpected outages), and overlooked in DR planning (creating recovery gaps). Configuration management only works when the CMDB is complete and accurate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'Which of the following BEST describes a cold site in the context of disaster recovery?',
 '["A fully operational facility with current data, ready for immediate failover", "A facility with pre-installed hardware and network connectivity but no current data", "A facility providing only physical space, power, and basic environmental controls, requiring full hardware installation and data restoration", "A mobile trailer with satellite connectivity"]'::jsonb,
 2,
 'A cold site is the most basic and least expensive DR facility, providing only the physical space, power, cooling, and basic connectivity. The organization must install and configure all hardware, software, and restore data before operations can resume. This results in the longest recovery time (days to weeks) but lowest ongoing cost.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company''s BCP team identifies that the payroll processing function depends on three systems: the ERP payroll module, the time-and-attendance system, and the direct deposit banking interface. A failure in any one of these systems prevents payroll from running. What does this interdependency analysis reveal?',
 '["Payroll is not a critical function", "Each of the three systems is a single point of failure for the payroll process, and all three must be included in recovery planning with aligned RTOs", "Only the ERP system needs disaster recovery protection", "The systems should be combined into one to reduce complexity"]'::jsonb,
 1,
 'Dependency mapping reveals that payroll requires all three systems to function. Each system is a single point of failure for the overall payroll process. The RTO for payroll drives the RTO for all three systems — the slowest system to recover determines the actual payroll recovery time. DR planning must address all dependencies, not just the primary application.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An organization defines three tiers of system criticality for change management: Tier 1 (mission-critical financial systems), Tier 2 (important business systems), and Tier 3 (non-critical support systems). How should the change approval process differ across tiers?',
 '["All tiers should follow the same approval process regardless of criticality", "Tier 1 changes require full CAB review with extensive testing, Tier 2 requires manager approval with standard testing, and Tier 3 follows a streamlined pre-approved process", "Tier 3 changes should receive more scrutiny than Tier 1", "Change approval should be based solely on the developer''s confidence level"]'::jsonb,
 1,
 'Tiered change management aligns the rigor of the approval and testing process with the criticality of the system being changed. Mission-critical financial systems warrant the most thorough review because a failed change has the highest business impact. Lower tiers receive proportionally less rigorous (but still controlled) processes to balance risk management with operational efficiency.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company experiences a power outage at its primary data center. The UPS (Uninterruptible Power Supply) keeps systems running for 15 minutes before the diesel generator starts. What is the PRIMARY purpose of the UPS in this scenario?',
 '["To provide permanent backup power for the entire data center", "To bridge the gap between power loss and generator startup, preventing any interruption to running systems during the transition", "To charge laptop batteries for employees", "To filter internet traffic during the outage"]'::jsonb,
 1,
 'A UPS provides immediate, short-duration backup power (typically 15-30 minutes) that bridges the gap between a power failure and generator activation. Without a UPS, systems would crash during the seconds or minutes it takes for generators to start and stabilize. The UPS ensures continuous power delivery during this critical transition period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'An organization implements database mirroring for its financial reporting database. The primary database in New York synchronously replicates every transaction to a mirror database in New Jersey. What availability benefit does this provide?',
 '["Faster query performance for end users", "If the primary database fails, the mirror can be activated almost immediately with zero data loss, providing high availability and data protection", "Reduced storage costs through data compression", "Elimination of the need for user authentication"]'::jsonb,
 1,
 'Synchronous database mirroring ensures that every committed transaction exists on both the primary and mirror databases before being acknowledged. If the primary fails, the mirror contains an identical copy of all data (zero data loss, RPO = 0) and can be activated rapidly (low RTO). This provides both high availability and data protection for mission-critical financial data.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'System Availability and Change Management',
 'A company''s patch management policy requires testing patches in a staging environment before production deployment. The staging environment was built two years ago and no longer matches the production configuration. What risk does this configuration drift create?',
 '["Staging environments do not need to match production", "Patches that test successfully in the outdated staging environment may fail or cause unexpected issues in production because the environments are no longer equivalent", "Configuration drift improves security by adding diversity", "The staging environment should always be older than production"]'::jsonb,
 1,
 'Configuration drift between staging and production undermines the entire purpose of pre-deployment testing. A patch that works in staging but fails in production because of configuration differences provides false confidence. Staging environments must be regularly synchronized with production configurations to ensure test results are valid and predictive of production behavior.',
 'hard');



-- ISC Chunk 2: Security Frameworks, Threats, Security Controls, Incident Response

-- =============================================================================
-- Security and Control Frameworks (38 questions)
-- Difficulty: 11 easy, 19 medium, 8 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A CPA firm is advising a client on establishing a cybersecurity program. The client asks which NIST CSF function involves understanding the organization''s assets, business environment, and risk tolerance. Which function should the CPA recommend as the starting point?',
 '["Protect", "Identify", "Detect", "Respond"]'::jsonb,
 1,
 'The Identify function is the foundation of the NIST Cybersecurity Framework and involves developing an organizational understanding of cybersecurity risk to systems, assets, data, and capabilities. It includes asset management, business environment analysis, governance, risk assessment, and risk management strategy — all of which must be understood before protective measures can be designed.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'Under the NIST Cybersecurity Framework, an organization has deployed intrusion detection systems and established continuous monitoring processes. These activities fall under which core function?',
 '["Identify", "Detect", "Protect", "Recover"]'::jsonb,
 1,
 'The Detect function encompasses activities to identify the occurrence of cybersecurity events in a timely manner. This includes continuous security monitoring, anomaly and event detection, and detection processes. Intrusion detection systems and continuous monitoring are core capabilities within the Detect function that enable organizations to discover cybersecurity events quickly.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization experiences a ransomware attack and activates its business continuity plan to restore operations from backup systems. Under the NIST CSF, this activity falls under which core function?',
 '["Protect", "Detect", "Respond", "Recover"]'::jsonb,
 3,
 'The Recover function supports timely recovery to normal operations after a cybersecurity incident. Activating business continuity plans and restoring systems from backups are recovery activities. The Respond function covers containment and communication during the incident, while Recover focuses on restoring capabilities and services that were impaired.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'Which NIST SP 800-53 control family specifically addresses an organization''s contingency planning requirements, including backup and recovery procedures?',
 '["Access Control (AC)", "Contingency Planning (CP)", "Audit and Accountability (AU)", "System and Communications Protection (SC)"]'::jsonb,
 1,
 'The Contingency Planning (CP) control family in NIST SP 800-53 addresses the establishment, maintenance, and effective implementation of plans for emergency response, backup operations, and post-disaster recovery. It includes controls for contingency plan development, testing, alternate processing sites, and system backup procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A government agency must classify its information systems according to their potential impact on confidentiality, integrity, and availability. Which NIST publication provides the standards for this categorization?',
 '["NIST SP 800-53", "FIPS 199", "NIST SP 800-171", "NIST CSF"]'::jsonb,
 1,
 'FIPS 199 (Standards for Security Categorization of Federal Information and Information Systems) establishes security categories for federal information and information systems based on potential impact (low, moderate, high) to confidentiality, integrity, and availability. This categorization drives the selection of security controls from NIST SP 800-53.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An IT auditor notes that a client has implemented ISO 27001 and maintains a Statement of Applicability (SoA). What is the primary purpose of the SoA?',
 '["To document which Annex A controls are applicable and justify any exclusions based on the risk assessment", "To list all employees with access to sensitive data", "To record all cybersecurity incidents in the past year", "To define the organization''s budget for information security"]'::jsonb,
 0,
 'The Statement of Applicability (SoA) is a required ISO 27001 document that lists all Annex A controls, states whether each is applicable, provides justification for inclusions and exclusions, and indicates implementation status. It bridges the risk assessment results to the control selection and is a key document reviewed during certification audits.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'ISO 27001 requires organizations to follow a Plan-Do-Check-Act (PDCA) cycle for their ISMS. Which phase involves conducting internal audits and management reviews to evaluate ISMS performance?',
 '["Plan", "Check", "Do", "Act"]'::jsonb,
 1,
 'The Check phase of the PDCA cycle involves monitoring, measuring, analyzing, and evaluating the ISMS through internal audits, management reviews, and performance metrics. This ensures the ISMS is operating as intended and identifies areas for improvement. Plan establishes the ISMS, Do implements it, and Act takes corrective action based on findings.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A company''s IT governance team is mapping COBIT 2019 to their organizational structure. Which COBIT 2019 concept distinguishes between setting direction and oversight (board level) versus planning and executing IT activities (management level)?',
 '["Design factors", "Governance and management objectives", "Focus areas", "Enterprise goals"]'::jsonb,
 1,
 'COBIT 2019 clearly separates governance objectives (Evaluate, Direct, and Monitor — performed by the board) from management objectives (Align, Plan, Organize; Build, Acquire, Implement; Deliver, Service, Support; Monitor, Evaluate, Assess — performed by management). This distinction ensures accountability at appropriate levels and prevents governance gaps.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'In COBIT 2019, design factors are used to customize the governance system. Which of the following is an example of a design factor?',
 '["Enterprise strategy, such as growth/acquisition or innovation/differentiation", "The color scheme of the company''s website", "The brand of hardware used in the data center", "The number of employees in the IT department"]'::jsonb,
 0,
 'COBIT 2019 uses 11 design factors to tailor the governance system to the enterprise''s specific context. Enterprise strategy (e.g., growth/acquisition, innovation/differentiation, cost leadership) is a key design factor that influences which governance and management objectives are prioritized and how the governance system is configured.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization is implementing the CIS Controls (formerly CIS Critical Security Controls). The controls are organized into three implementation groups (IGs). Which implementation group represents the minimum standard of information security for ALL enterprises?',
 '["IG1", "IG2", "IG3", "IG0"]'::jsonb,
 0,
 'CIS Implementation Group 1 (IG1) represents essential cyber hygiene and is the minimum standard recommended for all enterprises. IG1 contains a subset of controls that provide the most fundamental protections against common attacks. IG2 adds controls for enterprises with more complex risk profiles, and IG3 adds advanced controls for enterprises facing sophisticated adversaries.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A mid-size accounting firm wants to select a cybersecurity framework. The firm has moderate IT complexity and handles sensitive client financial data. Which CIS Implementation Group would be MOST appropriate?',
 '["IG1 only, because the firm is not a critical infrastructure provider", "IG2, because the firm handles sensitive data and has moderate complexity requiring additional controls beyond basic hygiene", "IG3, because all firms handling financial data must implement the highest level", "None — CIS Controls are only for government agencies"]'::jsonb,
 1,
 'IG2 is designed for enterprises that have IT staff managing infrastructure and handle sensitive client or enterprise data. An accounting firm with moderate IT complexity and sensitive financial data fits the IG2 profile, which adds controls for configuration management, data protection, and enhanced access control beyond the essential IG1 hygiene controls.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A COSO-aligned organization is evaluating how its entity-level controls map to IT general controls. Which COSO component MOST directly addresses the design and implementation of IT application controls?',
 '["Control Environment", "Control Activities", "Risk Assessment", "Monitoring Activities"]'::jsonb,
 1,
 'Control Activities include the policies, procedures, and mechanisms that help ensure management directives are carried out and risks are addressed. IT application controls — such as input validation, authorization checks, and processing controls — are a subset of control activities. While the control environment sets the tone, control activities represent the specific controls implemented to mitigate identified risks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An auditor is reviewing how COSO''s monitoring component applies to IT systems. Which of the following is an example of ongoing monitoring in an IT context?',
 '["Automated log analysis tools that continuously check for configuration deviations and alert on anomalies", "Hiring a new CISO to oversee the IT department", "Updating the employee handbook with new IT policies", "Conducting an annual SOC 2 Type II audit"]'::jsonb,
 0,
 'Ongoing monitoring involves continuous, real-time or near-real-time activities built into normal operations. Automated log analysis tools that continuously check for deviations and generate alerts exemplify ongoing monitoring in IT. An annual SOC 2 audit is a separate evaluation (not ongoing), and hiring or policy updates are organizational activities, not monitoring mechanisms.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A zero trust architecture operates on a fundamental principle that distinguishes it from traditional perimeter-based security. Which statement BEST captures this principle?',
 '["All internal network traffic is trusted by default", "Trust is implicit once a user passes the perimeter firewall", "Never trust, always verify — every access request must be authenticated and authorized regardless of network location", "Trust is established once per session and maintained until logout"]'::jsonb,
 2,
 'Zero trust architecture eliminates the concept of implicit trust based on network location. Every access request — whether from inside or outside the network — must be authenticated, authorized, and encrypted before access is granted. This approach assumes breach and verifies every transaction, contrasting with perimeter-based models that trust internal traffic.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization adopting zero trust architecture is implementing micro-segmentation across its financial systems. What is the PRIMARY benefit of micro-segmentation in a zero trust context?',
 '["It eliminates the need for user authentication", "It reduces the total number of firewalls needed", "It creates granular security zones that limit lateral movement, so a compromised system cannot freely access other resources", "It allows all users to access all segments equally"]'::jsonb,
 2,
 'Micro-segmentation divides the network into small, isolated segments with individual access policies. In a zero trust context, this limits lateral movement — if an attacker compromises one system, they cannot freely move to other systems because each segment enforces its own authentication and authorization. This containment minimizes the blast radius of a breach.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A security architect is designing policies for an organization''s new security program. Which document type provides high-level, mandatory statements of management''s intent and direction for information security?',
 '["Procedures", "Guidelines", "Policies", "Baselines"]'::jsonb,
 2,
 'Policies are high-level documents that express management''s intent, expectations, and direction for information security. They are mandatory and set the foundation for the security program. Procedures provide step-by-step instructions, guidelines offer recommended practices that are typically optional, and baselines define minimum configuration requirements for systems.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization has a security policy requiring encryption of sensitive data. The IT team creates a document specifying that AES-256 must be used for data at rest and TLS 1.3 for data in transit. This document is BEST classified as a:',
 '["Policy", "Guideline", "Procedure", "Standard"]'::jsonb,
 3,
 'A standard defines mandatory, specific requirements that support a policy. Specifying AES-256 for data at rest and TLS 1.3 for data in transit provides the mandatory technical requirements that implement the encryption policy. The policy states the intent (encrypt sensitive data), while the standard specifies the how (which algorithms and protocols must be used).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An IT team creates a step-by-step document showing exactly how to configure a server to meet the organization''s encryption standards, including screenshots and command-line instructions. This document is BEST classified as a:',
 '["Policy", "Standard", "Guideline", "Procedure"]'::jsonb,
 3,
 'A procedure provides detailed, step-by-step instructions for implementing standards and policies. The document described includes specific configuration steps, screenshots, and commands — all characteristics of a procedure. Policies state intent, standards define mandatory requirements, and guidelines offer recommended (non-mandatory) practices.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization is determining which NIST SP 800-53 control families to implement for its moderate-impact information system. The security team proposes skipping the Personnel Security (PS) family because they believe it only applies to HR. Why is this approach incorrect?',
 '["Personnel Security only applies to high-impact systems", "Personnel Security is an optional control family in NIST SP 800-53", "Personnel Security controls are already covered by the Access Control family", "Personnel Security controls address screening, termination, transfer, and access agreements — all of which directly affect IT security and are required for moderate-impact systems"]'::jsonb,
 3,
 'The Personnel Security (PS) family in NIST SP 800-53 includes controls for personnel screening, termination and transfer processes, access agreements, and third-party personnel security. These controls directly affect IT security because people are the primary users and administrators of information systems. Moderate-impact systems require PS controls to ensure only authorized, vetted individuals access systems.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An auditor discovers that a client claims compliance with ISO 27001 but has never engaged an accredited certification body. What should the auditor conclude?',
 '["The client may have implemented ISO 27001 controls but cannot claim certification without a formal audit by an accredited certification body", "Self-declaration is sufficient for ISO 27001 certification", "ISO 27001 does not require third-party audits", "The client should switch to NIST CSF, which requires no certification"]'::jsonb,
 0,
 'ISO 27001 certification requires a formal audit by an accredited certification body that assesses whether the ISMS meets all standard requirements. While an organization can implement ISO 27001 controls and self-declare alignment, certification specifically requires independent third-party assessment. The distinction between implementation and certification is important for auditors to understand.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'In COBIT 2019, the process assessment model uses capability levels from 0 to 5. An organization''s IT process has been assessed at Capability Level 0. What does this indicate?',
 '["The process is optimized and continuously improved", "The process is managed with defined metrics", "The process is incomplete — it either does not exist or fails to achieve its purpose", "The process is established with standardized practices"]'::jsonb,
 2,
 'COBIT 2019 Capability Level 0 (Incomplete) means the process does not exist or fails to achieve its process purpose. There is little or no evidence of any systematic achievement of the process purpose. This is the lowest level and indicates a significant gap that needs to be addressed through process establishment and implementation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A financial services firm uses the NIST CSF to organize its cybersecurity program. During a board presentation, the CISO explains that the firm has implemented Framework Profiles. What is the PRIMARY purpose of a Framework Profile?',
 '["To align the framework''s categories and subcategories with the organization''s business requirements, risk tolerance, and resources to represent its current or target cybersecurity posture", "To list all employees in the cybersecurity team", "To define the organization''s annual cybersecurity budget", "To rank the five core functions in order of importance"]'::jsonb,
 0,
 'A NIST CSF Framework Profile represents the alignment of the framework''s functions, categories, and subcategories with the organization''s specific business requirements, risk tolerance, and available resources. Organizations create a Current Profile (as-is state) and Target Profile (desired state), then analyze the gap to prioritize improvement activities.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization compares its NIST CSF Current Profile to its Target Profile and identifies gaps in the Detect function. Which approach BEST addresses this gap analysis?',
 '["Immediately implement all missing controls regardless of cost", "Abandon the NIST CSF and select a different framework", "Prioritize gap remediation based on risk, business impact, and available resources to create an actionable improvement plan", "Ignore the gaps because the Detect function is less important than Protect"]'::jsonb,
 2,
 'Gap analysis between Current and Target Profiles should drive a prioritized, risk-based improvement plan. Not all gaps carry equal risk or urgency, so organizations should evaluate each gap against potential business impact, threat likelihood, and available resources to create a practical implementation roadmap. All five functions are important and interconnected.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'Under NIST SP 800-53 Revision 5, security and privacy controls are organized into control families. Which of the following pairs correctly matches a control family abbreviation to its full name?',
 '["RA — Risk Assessment; IA — Identification and Authentication", "AC — Audit Control; SA — System Assessment", "CM — Crisis Management; IR — Information Recovery", "PL — Physical Layout; PE — Personnel Evaluation"]'::jsonb,
 0,
 'RA stands for Risk Assessment (controls for assessing risk to organizational operations, assets, and individuals) and IA stands for Identification and Authentication (controls for identifying and authenticating users, devices, and processes). The other pairings contain incorrect expansions of the control family abbreviations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An IT auditor is evaluating whether a client''s security program addresses all five COSO components. The client demonstrates strong policies and ethical culture (Control Environment), conducts annual risk assessments (Risk Assessment), and has robust access controls (Control Activities). However, the auditor identifies that security metrics are not tracked and no regular review of control effectiveness occurs. Which COSO component is MOST deficient?',
 '["Control Environment", "Risk Assessment", "Control Activities", "Monitoring Activities"]'::jsonb,
 3,
 'The absence of security metrics tracking and regular review of control effectiveness indicates a deficiency in Monitoring Activities. COSO requires both ongoing monitoring (built into operations) and separate evaluations (periodic assessments) to determine whether controls continue to operate effectively. Without monitoring, the organization cannot detect control failures or degradation over time.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'ISO 27002:2022 reorganized its controls into four themes. Which of the following correctly lists these four themes?',
 '["Administrative, Technical, Physical, Operational", "Preventive, Detective, Corrective, Compensating", "Confidentiality, Integrity, Availability, Privacy", "Organizational, People, Physical, Technological"]'::jsonb,
 3,
 'ISO 27002:2022 reorganized its 93 controls into four themes: Organizational (37 controls), People (8 controls), Physical (14 controls), and Technological (34 controls). This restructuring replaced the 14-domain structure of the 2013 version and provides a more intuitive grouping that aligns with how organizations implement controls across different areas.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A CPA conducting an IT audit notes that the client uses COBIT 2019 for IT governance and NIST CSF for cybersecurity. The client asks whether implementing both frameworks creates unnecessary duplication. What is the BEST response?',
 '["No — the frameworks are complementary; COBIT provides broader IT governance while NIST CSF focuses specifically on cybersecurity risk management, and their controls can be mapped to avoid duplication", "Yes — the client should choose one framework and eliminate the other", "COBIT automatically includes all NIST CSF requirements, making NIST CSF redundant", "NIST CSF is only for government agencies and should not be used by private companies"]'::jsonb,
 0,
 'COBIT 2019 and NIST CSF are complementary frameworks with different scopes. COBIT addresses the full range of IT governance and management, while NIST CSF focuses specifically on cybersecurity risk management. Organizations commonly map controls between frameworks to identify overlaps, eliminate redundancy, and ensure comprehensive coverage across both governance and cybersecurity domains.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization''s CISO presents a zero trust implementation roadmap to the board. A board member asks what the FIRST step should be. According to zero trust principles, which action should come first?',
 '["Deploy micro-segmentation across all network zones", "Replace all firewalls with next-generation models", "Identify and classify all assets, data flows, and users to understand what needs protection", "Require biometric authentication for all users immediately"]'::jsonb,
 2,
 'Zero trust implementation begins with comprehensive visibility — identifying and classifying all assets (devices, applications, data), mapping data flows, and understanding user populations. Without this foundational understanding, the organization cannot define appropriate access policies or determine where to enforce controls. Technology deployments like micro-segmentation and authentication upgrades come after this discovery phase.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'The CIS Controls prioritize Control 1 as "Inventory and Control of Enterprise Assets" and Control 2 as "Inventory and Control of Software Assets." Why are these inventory controls placed first?',
 '["Because you cannot protect what you do not know exists — asset and software inventories are foundational to all other security controls", "Because regulatory agencies require them to be implemented first", "Because they generate the most audit evidence", "Because they are the easiest to implement"]'::jsonb,
 0,
 'The CIS Controls place asset and software inventories first because they are foundational to every other security activity. Without knowing what hardware and software exists in the environment, organizations cannot apply patches, manage configurations, enforce access controls, or monitor for threats effectively. The principle that you cannot protect unknown assets underpins the entire control framework.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A company''s security governance structure includes a Chief Information Security Officer (CISO) who reports directly to the CIO. An external auditor raises a concern about this reporting structure. What is the auditor''s MOST likely concern?',
 '["The CISO should report to the CFO instead", "The CIO role should be eliminated", "Having the CISO report to the CIO creates a potential conflict of interest because IT operational priorities may override security concerns, and best practice is for the CISO to have independent reporting to the board or CEO", "The CISO position is unnecessary if a CIO exists"]'::jsonb,
 2,
 'When the CISO reports to the CIO, there is an inherent conflict of interest because IT operations (speed, cost, convenience) may conflict with security requirements (restriction, control, investment). Best practices recommend the CISO have independent reporting to the CEO, board, or a risk committee to ensure security concerns are not subordinated to operational pressures.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An auditor reviews a client''s IT security policies and finds that they were last updated three years ago, despite significant changes in the technology environment. Which security program element is the auditor MOST concerned about?',
 '["The policies may no longer reflect current threats, technologies, and business processes, creating gaps between documented controls and actual practices", "The policies are too old to be legally enforceable", "Three years is the standard policy review cycle so no concern exists", "Policy age does not affect security posture"]'::jsonb,
 0,
 'Security policies should be reviewed and updated regularly (typically annually) to reflect changes in the threat landscape, technology environment, business operations, and regulatory requirements. Stale policies create a gap between documented expectations and actual practices, leading to inconsistent control implementation and potential compliance failures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A hospital system is selecting a framework to manage cybersecurity risk for its medical devices and patient data systems. Which NIST publication specifically provides guidance on managing cybersecurity risk for healthcare and critical infrastructure sectors?',
 '["NIST SP 800-53 only", "NIST SP 800-171 only", "NIST CSF is not applicable to healthcare organizations", "NIST SP 800-66 (HIPAA implementation guidance) in conjunction with the NIST CSF for overall cybersecurity risk management"]'::jsonb,
 3,
 'NIST SP 800-66 provides implementation guidance specifically for HIPAA security requirements, while the NIST CSF provides the overarching framework for managing cybersecurity risk. Healthcare organizations commonly use both in conjunction — SP 800-66 for regulatory compliance and the CSF for broader cybersecurity program management across all systems including medical devices.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization is documenting its security program. A new analyst asks about the difference between a security standard and a security guideline. Which explanation is correct?',
 '["Standards are mandatory requirements that must be followed; guidelines are recommended practices that provide flexibility in implementation", "Standards are optional; guidelines are mandatory", "There is no difference between the two", "Guidelines must be approved by regulators; standards are internal only"]'::jsonb,
 0,
 'Standards define mandatory requirements that support policies and must be followed by all applicable personnel and systems. Guidelines provide recommended practices that offer flexibility — they suggest best practices but allow alternative approaches. This distinction is important for compliance: failure to meet a standard is a deficiency, while departure from a guideline may be acceptable if justified.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'During a COBIT 2019 assessment, an auditor notes that the organization has established a governance body that evaluates IT proposals, sets strategic direction, and monitors performance against targets. Which COBIT governance domain BEST describes these activities?',
 '["Align, Plan and Organize (APO)", "Build, Acquire and Implement (BAI)", "Deliver, Service and Support (DSS)", "Evaluate, Direct and Monitor (EDM)"]'::jsonb,
 3,
 'Evaluate, Direct and Monitor (EDM) is the governance domain in COBIT 2019. It encompasses the board or governing body''s responsibilities to evaluate strategic options, direct management on the chosen strategy, and monitor performance outcomes. APO, BAI, and DSS are management domains covering planning, implementation, and operations respectively.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization is implementing the NIST Risk Management Framework (RMF). After categorizing its information system as moderate-impact, the security team selects an initial set of security controls. What is the NEXT step in the RMF?',
 '["Monitor the controls", "Authorize the system to operate", "Implement the selected controls in the information system", "Prepare for organization-wide risk management"]'::jsonb,
 2,
 'The NIST RMF steps are: Prepare, Categorize, Select, Implement, Assess, Authorize, and Monitor. After selecting controls, the next step is to implement those controls within the information system and document how they are deployed. Assessment of whether the controls are working correctly follows implementation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'A large financial institution operates under multiple regulatory requirements (SOX, PCI DSS, GLBA) and uses COBIT 2019 as its overarching IT governance framework. What is the PRIMARY advantage of using COBIT as an umbrella framework in this multi-compliance environment?',
 '["COBIT eliminates the need to comply with individual regulations", "COBIT is a regulatory requirement for financial institutions", "COBIT replaces SOX and PCI DSS requirements entirely", "COBIT provides a unified governance structure that can map to multiple regulatory requirements, reducing duplication of effort and enabling integrated compliance management"]'::jsonb,
 3,
 'COBIT''s comprehensive structure allows organizations to map multiple regulatory requirements to a single governance framework. This creates a unified control environment where one control implementation can satisfy overlapping requirements from SOX, PCI DSS, GLBA, and other regulations simultaneously, reducing duplication, cost, and management complexity.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization''s security program includes policies, standards, procedures, and guidelines. A systems administrator needs to configure a new database server. Which document type should the administrator consult for step-by-step configuration instructions?',
 '["The information security policy", "The database security standard", "The database server hardening procedure", "The security guidelines document"]'::jsonb,
 2,
 'Procedures provide detailed, step-by-step instructions for performing specific tasks. A database server hardening procedure would contain the specific commands, configurations, and verification steps needed to securely configure the server. The policy provides high-level direction, the standard defines mandatory requirements (e.g., required encryption strength), and guidelines offer optional recommendations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security and Control Frameworks',
 'An organization operating in the financial services sector must comply with multiple frameworks. The compliance team discovers that a single access control implemented for SOX compliance also satisfies requirements in PCI DSS and GLBA. This scenario demonstrates which framework integration concept?',
 '["Framework conflict", "Regulatory arbitrage", "Control mapping — identifying where a single control satisfies requirements across multiple frameworks, reducing redundant implementations and audit effort", "Framework obsolescence"]'::jsonb,
 2,
 'Control mapping identifies overlapping requirements across frameworks so that a single control implementation can satisfy multiple compliance obligations. For example, an access control that meets SOX requirements for financial system access may also satisfy PCI DSS Requirement 7 (restrict access by business need) and GLBA safeguard provisions. This reduces duplication and streamlines audit evidence collection.',
 'medium');

-- =============================================================================
-- Threats, Attacks, and Vulnerabilities (34 questions)
-- Difficulty: 10 easy, 17 medium, 7 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A company''s file server has been infected with malware that encrypts all files and displays a message demanding payment in cryptocurrency for the decryption key. The malware also threatens to publish stolen data if payment is not made. This dual-extortion technique is characteristic of:',
 '["Double-extortion ransomware", "Adware", "A logic bomb", "Traditional ransomware"]'::jsonb,
 0,
 'Double-extortion ransomware combines traditional file encryption with data theft. Attackers exfiltrate sensitive data before encrypting files, then threaten to publish the stolen data if the ransom is not paid — creating two pressure points. This technique makes backups alone insufficient as a defense because even if files are restored, the data exposure threat remains.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An employee receives an email appearing to be from the company''s CEO, urgently requesting a wire transfer to a specific account. The email address is one character different from the CEO''s actual address. Upon closer inspection, "ceo@company.com" was replaced with "ceo@cornpany.com." This attack is BEST described as:',
 '["Vishing", "Smishing", "Spear phishing using a homoglyph domain", "A brute force attack"]'::jsonb,
 2,
 'This is spear phishing using a homoglyph (look-alike) domain, where attackers register a domain that visually resembles the legitimate one by substituting similar characters (''rn'' for ''m''). Spear phishing targets specific individuals, and the use of a deceptive domain adds credibility. Vishing uses voice calls, smishing uses SMS, and brute force attacks guess credentials.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A threat actor calls an organization''s help desk, impersonates an executive, and convinces the technician to reset the executive''s password and provide the new credentials. This attack technique is known as:',
 '["Pretexting", "Phishing", "Tailgating", "SQL injection"]'::jsonb,
 0,
 'Pretexting is a social engineering technique where the attacker fabricates a scenario (pretext) to manipulate a victim into providing information or performing an action. By impersonating an executive and creating a believable story, the attacker exploits the help desk technician''s trust and desire to be helpful. Phishing uses electronic messages, tailgating involves physical following, and SQL injection targets databases.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'Which type of social engineering attack involves leaving a malware-infected USB drive in a parking lot, hoping an employee will pick it up and plug it into a company computer?',
 '["Phishing", "Pretexting", "Baiting", "Whaling"]'::jsonb,
 2,
 'Baiting is a social engineering technique that exploits human curiosity or greed by offering something enticing — such as a USB drive labeled "Confidential Salary Data" left in a visible location. When the victim inserts the device, malware is installed on their system. This attack bypasses technical controls by targeting human behavior rather than system vulnerabilities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An unauthorized person follows an authorized employee through a secure door without swiping their own badge. This physical security breach is known as:',
 '["Shoulder surfing", "Dumpster diving", "Tailgating (piggybacking)", "Watering hole attack"]'::jsonb,
 2,
 'Tailgating (also called piggybacking) occurs when an unauthorized person follows an authorized individual through a secured entrance without presenting their own credentials. This exploits social norms (holding doors open) and bypasses physical access controls. Shoulder surfing involves watching someone enter credentials, dumpster diving searches through trash, and watering hole attacks target websites.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A web application accepts user input in a search field without proper sanitization. An attacker enters a script tag that executes in other users'' browsers when they view the search results page. This vulnerability is classified as:',
 '["Stored (persistent) cross-site scripting (XSS)", "Cross-site request forgery (CSRF)", "Buffer overflow", "SQL injection"]'::jsonb,
 0,
 'Stored (persistent) XSS occurs when malicious script is permanently stored on the target server (e.g., in a database or search results cache) and executes in the browser of every user who views the affected page. This is more dangerous than reflected XSS because it does not require the victim to click a specific link — simply viewing the compromised page triggers the attack.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An attacker tricks an authenticated user''s browser into submitting a forged request to a web application, causing the application to perform an action the user did not intend. This attack is known as:',
 '["Cross-site scripting (XSS)", "SQL injection", "Cross-site request forgery (CSRF)", "Directory traversal"]'::jsonb,
 2,
 'CSRF exploits the trust that a web application has in an authenticated user''s browser. The attacker crafts a malicious request that the user''s browser automatically sends with the user''s authentication cookies, causing the application to process the request as if the user initiated it. Unlike XSS which targets the user, CSRF exploits the server''s trust in the user.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'During a security assessment, a penetration tester identifies that a client''s web application is vulnerable to SQL injection. The tester demonstrates that entering '' OR 1=1 -- into the login form bypasses authentication. What is the ROOT CAUSE of this vulnerability?',
 '["Failure to validate and parameterize user input before passing it to the database query", "Weak password requirements", "Lack of encryption on the login page", "Insufficient server memory"]'::jsonb,
 0,
 'SQL injection occurs because the application concatenates user input directly into SQL queries without validation or parameterization. The root cause is the failure to use parameterized queries (prepared statements) that separate SQL logic from data. Input validation and parameterization prevent the database from interpreting user input as executable SQL commands.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An organization''s website becomes unavailable after receiving an enormous volume of traffic from thousands of compromised devices worldwide. This attack is classified as a:',
 '["Man-in-the-middle attack", "Distributed Denial of Service (DDoS) attack", "Phishing campaign", "Insider threat"]'::jsonb,
 1,
 'A Distributed Denial of Service (DDoS) attack uses multiple compromised systems (often a botnet) to flood a target with traffic, overwhelming its resources and making it unavailable to legitimate users. The distributed nature makes DDoS harder to mitigate than a single-source DoS because traffic comes from thousands of different IP addresses worldwide.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A DDoS attack targets a company''s web application by sending millions of HTTP requests that require intensive database queries, exhausting the application server''s processing capacity. This type of DDoS is classified as:',
 '["Volumetric attack", "Application layer (Layer 7) attack", "Protocol attack", "Physical attack"]'::jsonb,
 1,
 'Application layer (Layer 7) DDoS attacks target the web application itself by sending seemingly legitimate HTTP requests that consume disproportionate server resources (CPU, memory, database connections). These attacks are harder to detect because individual requests appear normal. Volumetric attacks overwhelm bandwidth, and protocol attacks exploit protocol weaknesses (e.g., SYN floods).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An attacker positions themselves between a user and a legitimate website, intercepting and potentially modifying the communication without either party''s knowledge. This is known as:',
 '["Denial of service", "Brute force attack", "Man-in-the-middle (MitM) attack", "Privilege escalation"]'::jsonb,
 2,
 'A man-in-the-middle (MitM) attack occurs when an attacker secretly intercepts and potentially alters communication between two parties who believe they are communicating directly. The attacker can eavesdrop on sensitive data, modify transactions, or inject malicious content. TLS encryption and certificate validation are primary defenses against MitM attacks.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A malware variant installs itself deep within the operating system kernel, modifying system calls to hide its presence from antivirus software and system administrators. This type of malware is classified as a:',
 '["Worm", "Rootkit", "Trojan", "Adware"]'::jsonb,
 1,
 'A rootkit operates at the kernel or firmware level to hide its presence and maintain persistent access. By modifying system calls and OS functions, rootkits can hide files, processes, network connections, and registry entries from detection tools. They are extremely difficult to detect and remove because they operate below the level that most security tools monitor.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A piece of malware spreads across a network by exploiting a known vulnerability in the SMB file-sharing protocol without requiring any user interaction. This self-propagating behavior is characteristic of:',
 '["A worm", "A Trojan horse", "Spyware", "A virus"]'::jsonb,
 0,
 'Worms are self-propagating malware that spread across networks without requiring user interaction (unlike viruses, which need a host file, or Trojans, which disguise themselves as legitimate software). By exploiting network vulnerabilities like those in SMB, worms can rapidly infect large numbers of systems. The WannaCry and NotPetya attacks are well-known worm examples.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An employee downloads what appears to be a legitimate PDF viewer from an unofficial website. After installation, the application functions normally but also secretly captures keystrokes and sends them to an external server. This malware is classified as:',
 '["A Trojan horse with keylogger functionality", "A worm", "Ransomware", "A logic bomb"]'::jsonb,
 0,
 'A Trojan horse disguises itself as legitimate software to trick users into installing it. This example contains keylogger functionality (a type of spyware) that operates covertly alongside the legitimate application. Unlike worms, Trojans do not self-propagate — they rely on user action for installation. The dual nature (useful function plus hidden malicious function) defines the Trojan category.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A CPA firm''s network administrator notices that a recently terminated system administrator''s credentials were used to access the firm''s financial databases over the weekend. The former employee downloaded client tax return data. This scenario BEST illustrates:',
 '["An external threat actor using stolen credentials", "A zero-day exploit", "An insider threat exploiting access that was not properly revoked during the offboarding process", "A phishing attack"]'::jsonb,
 2,
 'This is a classic insider threat scenario where a former employee retains access after termination due to failures in the offboarding process. Insider threats are particularly dangerous because the individual has legitimate knowledge of systems, data locations, and potential security gaps. Timely access revocation during employee termination is a critical preventive control.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A sophisticated threat group targets a defense contractor over several months, first compromising a third-party IT service provider that has VPN access to the contractor''s network, then using that access to exfiltrate classified documents. Which threat category does this represent?',
 '["Advanced Persistent Threat (APT) with a supply chain vector", "Opportunistic script kiddie attack", "Denial of service", "Accidental data exposure"]'::jsonb,
 0,
 'This describes an APT with a supply chain attack vector. APTs are characterized by sophistication, persistence, and specific targeting — typically nation-state or organized crime groups. The supply chain vector (compromising a trusted third-party provider to reach the true target) is a hallmark of advanced attacks that bypass direct defenses.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An organization wants to understand its external attack surface. Which assessment type involves automated scanning to identify known weaknesses in systems, configurations, and software versions WITHOUT actively exploiting them?',
 '["Penetration testing", "Red team exercise", "Social engineering test", "Vulnerability scanning"]'::jsonb,
 3,
 'Vulnerability scanning uses automated tools to identify known weaknesses by comparing system attributes (OS versions, patch levels, configurations, open ports) against databases of known vulnerabilities. Unlike penetration testing, vulnerability scanning does not attempt to exploit vulnerabilities — it identifies and reports them for remediation prioritization.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A security team conducts a penetration test and discovers they can chain three individually low-severity vulnerabilities to achieve unauthorized administrative access to the ERP system. What does this finding demonstrate about vulnerability assessment?',
 '["Low-severity vulnerabilities never need remediation", "The penetration test methodology was flawed", "Only critical vulnerabilities matter in risk assessment", "Vulnerability chaining can escalate the combined impact well beyond individual risk ratings, making remediation of even low-severity findings important when they exist in related systems"]'::jsonb,
 3,
 'Vulnerability chaining demonstrates that individually minor weaknesses can be combined to create a significant attack path. A low-severity misconfiguration, a minor information disclosure, and a weak access control might independently pose little risk, but together they can enable administrative compromise. This is why penetration testing (which tests attack chains) provides value beyond automated scanning.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A phishing email targets the company''s CFO specifically, using personalized information about a recent board meeting to add credibility. This targeted approach aimed at a senior executive is called:',
 '["Spam", "Smishing", "Whaling", "Vishing"]'::jsonb,
 2,
 'Whaling is a specialized form of spear phishing that specifically targets senior executives (the "big fish" or "whales") such as CEOs, CFOs, and board members. Whaling attacks use highly personalized content based on research about the target and their role, making them more convincing. Smishing uses SMS, vishing uses voice calls, and spam is untargeted bulk email.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An attacker sends text messages to hundreds of employees claiming to be from the IT department, with a link to "verify their corporate credentials." Several employees click the link and enter their usernames and passwords on a fake login page. This attack is known as:',
 '["Vishing", "Baiting", "Pretexting", "Smishing"]'::jsonb,
 3,
 'Smishing (SMS phishing) uses text messages to trick recipients into revealing sensitive information or clicking malicious links. Like email phishing, smishing creates urgency and impersonates trusted entities, but uses the SMS channel. Vishing uses voice calls, baiting uses physical objects (like USB drives), and pretexting involves fabricating scenarios in person or over the phone.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'During a threat assessment, an analyst categorizes a SYN flood attack. In which DDoS category does a SYN flood belong?',
 '["Volumetric attack", "Application layer attack", "Social engineering attack", "Protocol attack"]'::jsonb,
 3,
 'A SYN flood is a protocol attack that exploits the TCP three-way handshake by sending a flood of SYN requests without completing the handshake. This exhausts the target server''s connection state table (half-open connections) rather than consuming bandwidth (volumetric) or targeting the application layer. Other protocol attacks include Smurf attacks and fragmented packet attacks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A software company discovers that attackers compromised their build server and injected malicious code into the latest software update. Customers who installed the update unknowingly deployed the backdoor. Which attack vector does this describe?',
 '["Supply chain attack targeting the software build pipeline", "Phishing", "Denial of service", "Brute force"]'::jsonb,
 0,
 'This is a supply chain attack targeting the software build and distribution pipeline. By compromising the build server, attackers inject malicious code that is distributed to all customers through the trusted software update mechanism. This attack is particularly effective because customers trust updates from their software vendors and deploy them without suspicion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An organization''s security team discovers spyware on several executive laptops that has been capturing screenshots, recording audio through the microphone, and monitoring email activity. What is the PRIMARY risk posed by this spyware?',
 '["Reduced system performance", "Increased bandwidth usage", "Confidentiality breach — sensitive business information, trade secrets, and strategic plans may have been exfiltrated to an unauthorized party", "Hard drive failure"]'::jsonb,
 2,
 'The primary risk of spyware on executive laptops is a confidentiality breach. Executives handle sensitive information including strategic plans, financial data, M&A activities, and client information. Spyware capturing screenshots, audio, and email provides an attacker with a comprehensive view of confidential business operations. While performance issues may occur, the information exposure is the critical risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An IT auditor is evaluating the client''s vulnerability management program. The auditor finds that vulnerability scans are run quarterly but remediation takes an average of 120 days for critical vulnerabilities. What is the auditor''s PRIMARY concern?',
 '["Quarterly scanning is too infrequent for a meaningful vulnerability management program", "The 120-day remediation window for critical vulnerabilities creates an extended exposure period during which known vulnerabilities can be exploited by attackers", "Both the scanning frequency and remediation timeline are concerns — critical vulnerabilities should be scanned at least monthly and remediated within 30 days or less", "No concern — 120 days is an acceptable remediation timeframe"]'::jsonb,
 2,
 'Both issues are concerning. Quarterly scanning means new vulnerabilities may go undetected for up to 90 days, and 120-day remediation for critical vulnerabilities creates unacceptable exposure. Industry best practices recommend continuous or at least monthly scanning, with critical vulnerabilities remediated within 15-30 days. Together, a critical vulnerability could persist for over 200 days from introduction to remediation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An organization''s web application uses a Content Delivery Network (CDN) to serve static content. An attacker targets the CDN provider to inject malicious JavaScript into files served to the application''s users. This is an example of:',
 '["A supply chain attack targeting a third-party service provider", "Direct exploitation of the web application", "A denial of service attack", "A physical security breach"]'::jsonb,
 0,
 'Compromising a CDN to inject malicious content is a supply chain attack because the attacker targets a trusted third-party service provider rather than the organization directly. Users receive malicious content through the trusted CDN channel, making detection difficult. This highlights the importance of subresource integrity (SRI) checks and vendor security assessment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A threat actor sends a voice call to an accounts payable clerk, impersonating a vendor and requesting that future payments be sent to a new bank account. The caller has detailed knowledge of recent invoices. This attack is classified as:',
 '["Smishing", "Ransomware", "DNS spoofing", "Vishing (voice phishing)"]'::jsonb,
 3,
 'Vishing (voice phishing) uses telephone calls to deceive victims. In this scenario, the attacker uses voice communication combined with specific invoice knowledge to add credibility. The detailed knowledge of recent invoices suggests the attacker may have previously compromised email or financial systems. Smishing uses text messages, and the other options are unrelated to voice-based social engineering.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A penetration tester attempts to gain access to a secured facility by dressing as a delivery driver and asking an employee to hold the door open while carrying large boxes. This technique combines which social engineering methods?',
 '["Phishing and SQL injection", "Baiting and shoulder surfing", "Vishing and smishing", "Pretexting and tailgating"]'::jsonb,
 3,
 'This combines pretexting (creating a false scenario as a delivery driver) with tailgating (following an authorized person through a secured entrance). The pretexting adds credibility to the tailgating attempt by providing a plausible reason for needing help with the door. Physical security penetration tests commonly use combined social engineering techniques to test employee awareness.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An attacker exploits a web application vulnerability that allows them to traverse the file system and access files outside the intended directory, such as /etc/passwd on a Linux server. This attack is known as:',
 '["SQL injection", "Cross-site scripting", "Session fixation", "Directory traversal (path traversal)"]'::jsonb,
 3,
 'Directory traversal (path traversal) allows an attacker to access files and directories outside the web application''s root directory by manipulating file path references (e.g., using ../ sequences). This can expose sensitive system files, configuration files, and source code. Proper input validation and restricting file access to the application''s document root prevent this vulnerability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A company''s threat intelligence feed reports that a new zero-day vulnerability affecting their firewall vendor has been actively exploited in the wild. No patch is available yet. What is the MOST appropriate immediate response?',
 '["Wait for the vendor to release a patch before taking action", "Replace all firewalls immediately with a different vendor", "Implement compensating controls such as additional monitoring, restricting access to the affected service, and applying any vendor-recommended mitigations while awaiting the patch", "Ignore the alert because zero-day vulnerabilities are rare"]'::jsonb,
 2,
 'When a zero-day vulnerability is being actively exploited and no patch exists, organizations must implement compensating controls to reduce risk. This includes applying vendor-recommended workarounds, increasing monitoring for indicators of compromise, restricting access to affected services, and implementing additional network controls. Waiting for a patch leaves the organization exposed to active exploitation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An organization conducts an annual penetration test. The scope includes external network testing, web application testing, and social engineering. Which of the following BEST describes the value of including social engineering in the penetration test scope?',
 '["It evaluates the effectiveness of the organization''s security awareness training and human-focused controls by simulating real-world social engineering attacks", "It tests whether employees are aware of physical security procedures only", "It is required by all compliance frameworks", "It only provides entertainment value and has no security benefit"]'::jsonb,
 0,
 'Including social engineering in penetration tests evaluates whether security awareness training and policies translate into employee behavior. It tests the human layer — often the weakest link — by simulating realistic phishing, pretexting, and physical access attempts. Results identify specific awareness gaps and provide evidence for improving training programs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A disgruntled database administrator plants malicious code that will automatically delete all financial records on a future date if they are terminated. This time-delayed malicious code is known as:',
 '["A worm", "Adware", "A logic bomb", "A rootkit"]'::jsonb,
 2,
 'A logic bomb is malicious code that activates when specific conditions are met — such as a date, event, or the absence of a certain user account. An insider planting code triggered by their termination is a classic logic bomb scenario. Unlike worms, logic bombs do not self-propagate; they lay dormant until their trigger condition occurs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'An auditor reviews the organization''s threat landscape and notes that the MOST likely initial attack vector for ransomware infection, based on industry statistics, is:',
 '["Phishing emails with malicious attachments or links", "Direct exploitation of public-facing databases", "Insider sabotage", "Physical USB drive insertion"]'::jsonb,
 0,
 'Industry data consistently shows that phishing emails are the most common initial attack vector for ransomware. Attackers send emails with malicious attachments (e.g., macro-enabled documents) or links to exploit kits. This highlights the importance of email security controls (filtering, sandboxing) and security awareness training as primary defenses against ransomware.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'During a security assessment, a tester discovers that an organization''s web application displays detailed error messages to users, including database table names, SQL query structures, and internal server paths. What is the security concern with this information disclosure?',
 '["Detailed error messages have no security impact", "The disclosed information helps attackers map the application''s internal architecture and craft targeted attacks such as SQL injection, significantly reducing the effort required for a successful breach", "Error messages only affect system performance", "Only the IT team can see error messages"]'::jsonb,
 1,
 'Information disclosure through verbose error messages provides attackers with valuable reconnaissance data. Database table names and SQL structures enable more precise SQL injection attacks, and internal server paths reveal the application architecture. This information significantly reduces the attacker''s effort. Applications should display generic error messages to users while logging detailed errors securely server-side.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Threats, Attacks, and Vulnerabilities',
 'A newly discovered vulnerability in a widely used open-source library affects thousands of applications. The vulnerability has a CVSS score of 9.8 (Critical) and a proof-of-concept exploit has been published. The organization uses this library in its customer-facing application. What risk factors make this situation particularly urgent?',
 '["Only the CVSS score matters", "The combination of widespread impact, critical severity, public exploit availability, and customer-facing exposure creates maximum urgency — exploitation is likely imminent", "The risk is low because open-source software is inherently secure", "The organization should wait for others to test patches first"]'::jsonb,
 1,
 'Multiple risk factors converge: a critical CVSS score indicates severe potential impact, a public proof-of-concept exploit means attackers have a ready-made tool, the library''s widespread use makes it an attractive target, and customer-facing exposure provides a direct attack path. This combination demands immediate remediation through patching, compensating controls, or both.',
 'hard');

-- =============================================================================
-- Security Controls and Monitoring (34 questions)
-- Difficulty: 10 easy, 17 medium, 7 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization implements controls to prevent unauthorized access (badge readers), detect unauthorized access (surveillance cameras), and correct access violations (disabling compromised accounts). Which of the following correctly categorizes these controls?',
 '["All are preventive controls", "All are detective controls", "Badge readers are corrective, cameras are preventive, disabling accounts is detective", "Badge readers are preventive, cameras are detective, disabling accounts is corrective"]'::jsonb,
 3,
 'Preventive controls stop incidents before they occur (badge readers prevent unauthorized physical access). Detective controls identify incidents that have occurred or are occurring (cameras detect unauthorized presence). Corrective controls remediate or fix the impact after detection (disabling accounts stops ongoing unauthorized access). These three control types form a complementary defense strategy.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization''s primary firewall fails. A secondary firewall with reduced functionality activates to maintain basic network protection. The secondary firewall is an example of which control type?',
 '["Preventive control", "Detective control", "Corrective control", "Compensating control"]'::jsonb,
 3,
 'A compensating control is an alternative measure that provides a similar level of protection when the primary control cannot be implemented or has failed. The secondary firewall compensates for the failed primary firewall by maintaining basic network protection, even if at reduced functionality. Compensating controls are common in business continuity and disaster recovery scenarios.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'AES-256 is a widely used encryption algorithm. Which type of encryption does AES represent?',
 '["Asymmetric encryption", "Hash function", "Symmetric encryption", "Digital signature"]'::jsonb,
 2,
 'AES (Advanced Encryption Standard) is a symmetric encryption algorithm, meaning the same key is used for both encryption and decryption. AES-256 uses a 256-bit key and is widely adopted for encrypting data at rest and in transit. Symmetric encryption is faster than asymmetric but requires secure key distribution since both parties must share the same secret key.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization needs to establish a secure communication channel where two parties who have never met can exchange encrypted messages. Which encryption approach is MOST appropriate for initial key exchange?',
 '["Symmetric encryption using a pre-shared key", "ROT13 cipher", "No encryption is needed if the parties trust each other", "Asymmetric (public key) encryption using RSA or ECC, where each party shares their public key while keeping their private key secret"]'::jsonb,
 3,
 'Asymmetric encryption solves the key distribution problem by using key pairs — a public key (shared openly) and a private key (kept secret). When two parties need to communicate securely without prior key exchange, they can use each other''s public keys to encrypt messages that only the corresponding private key can decrypt. RSA and ECC are common asymmetric algorithms.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'A company uses TLS 1.3 to encrypt web traffic between customers and its e-commerce site. What does TLS protect against?',
 '["Eavesdropping and tampering with data transmitted between the user''s browser and the server", "Physical theft of the web server", "SQL injection attacks against the database", "Social engineering phone calls"]'::jsonb,
 0,
 'TLS (Transport Layer Security) encrypts data in transit between a client and server, protecting against eavesdropping (reading the data) and tampering (modifying the data). TLS 1.3 specifically improves security by removing legacy cipher suites and reducing the handshake to one round trip. It does not protect against application-layer attacks, physical theft, or social engineering.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An auditor verifies that a client uses digital signatures on all outgoing financial reports. What THREE properties do digital signatures provide?',
 '["Confidentiality, availability, and speed", "Encryption, compression, and backup", "Authorization, accounting, and auditing", "Authentication, integrity, and non-repudiation"]'::jsonb,
 3,
 'Digital signatures provide authentication (verifying the signer''s identity), integrity (ensuring the document has not been altered since signing), and non-repudiation (the signer cannot deny having signed the document). These properties are achieved through hashing the document and encrypting the hash with the signer''s private key. Recipients verify using the signer''s public key.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'A company''s IT department manages digital certificates for its internal and external services using a Public Key Infrastructure (PKI). Which entity in a PKI is responsible for issuing and signing digital certificates?',
 '["Registration Authority (RA)", "Key Distribution Center (KDC)", "Certificate Authority (CA)", "Certificate Revocation List (CRL)"]'::jsonb,
 2,
 'The Certificate Authority (CA) is the trusted entity in a PKI that issues, signs, and manages digital certificates. The CA verifies the identity of certificate requestors and digitally signs certificates to attest to their validity. The Registration Authority (RA) may handle identity verification before forwarding requests to the CA, and the CRL is a list of revoked certificates.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization requires multi-factor authentication (MFA) for all remote access. An employee logs in using a password and a fingerprint scan. Which MFA factors are used?',
 '["Something you know and something you know", "Something you know and something you are", "Something you have and something you are", "Something you have and something you have"]'::jsonb,
 1,
 'MFA requires two or more different authentication factors. The three categories are: something you know (password, PIN), something you have (token, smart card, phone), and something you are (biometric — fingerprint, iris, face). In this scenario, the password is "something you know" and the fingerprint is "something you are," satisfying the MFA requirement with two distinct factor types.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An employee uses a password and a one-time code from a hardware token to authenticate. Another employee uses a password and a security question. Which employee is using TRUE multi-factor authentication?',
 '["Both employees", "Only the employee using the password and security question", "Neither employee", "Only the employee using the password and hardware token"]'::jsonb,
 3,
 'Only the password plus hardware token combination constitutes true MFA because it uses two different factor categories: something you know (password) and something you have (hardware token). A password and security question both fall under "something you know" — this is two-step verification using a single factor category, not true multi-factor authentication.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization implements role-based access control (RBAC) and also enforces the principle of separation of duties. An accounts payable clerk can create vendor invoices but cannot approve payments. Why is this separation critical?',
 '["It improves system performance", "It reduces the number of user accounts needed", "It prevents a single individual from both initiating and approving a financial transaction, reducing the risk of fraud or error going undetected", "It simplifies the password management process"]'::jsonb,
 2,
 'Separation of duties divides critical tasks among different individuals so no single person can control all phases of a transaction. In accounts payable, separating invoice creation from payment approval ensures that fraudulent or erroneous invoices require collusion between two people to result in payment. This is a fundamental internal control principle for financial processes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'Attribute-Based Access Control (ABAC) differs from Role-Based Access Control (RBAC) in a key way. Which statement BEST describes ABAC?',
 '["ABAC assigns permissions based on job titles only", "ABAC is simpler to implement than RBAC", "ABAC does not support the principle of least privilege", "ABAC makes access decisions based on multiple attributes including user characteristics, resource properties, environmental conditions, and action types — providing more granular control than role-based assignments"]'::jsonb,
 3,
 'ABAC evaluates multiple attributes (user department, clearance level, resource classification, time of day, location, etc.) to make dynamic access decisions. This provides more granular control than RBAC, which assigns permissions to predefined roles. For example, ABAC can allow access to financial reports only during business hours from corporate devices by a user in the finance department.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization deploys a next-generation firewall (NGFW) to replace its traditional stateful firewall. Which capability distinguishes a NGFW from a traditional stateful firewall?',
 '["Application-level inspection, intrusion prevention, and threat intelligence integration that enable visibility and control beyond traditional port and protocol filtering", "Packet filtering based on IP addresses and ports", "Basic NAT (Network Address Translation)", "Simple access control lists (ACLs)"]'::jsonb,
 0,
 'Next-generation firewalls extend traditional stateful inspection with deep packet inspection, application awareness (identifying applications regardless of port), integrated intrusion prevention (IPS), threat intelligence feeds, and often SSL/TLS decryption. This enables security policies based on application identity, user identity, and content rather than just IP addresses and port numbers.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization deploys a Web Application Firewall (WAF) in front of its customer portal. A WAF operates at which layer of the OSI model?',
 '["Layer 3 (Network)", "Layer 7 (Application)", "Layer 4 (Transport)", "Layer 1 (Physical)"]'::jsonb,
 1,
 'A WAF operates at Layer 7 (Application) of the OSI model, inspecting HTTP/HTTPS traffic to detect and block web application attacks such as SQL injection, XSS, and CSRF. By understanding application-layer protocols, WAFs can analyze request content, headers, cookies, and parameters — providing protection that network-layer firewalls cannot achieve.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization''s SIEM system generates an alert when it correlates a failed VPN login from Country A with a successful login from Country B five minutes later using the same credentials. What type of SIEM capability detected this?',
 '["Log storage", "Report generation", "Event correlation — analyzing relationships between events from different sources to identify patterns indicative of security incidents", "Backup management"]'::jsonb,
 2,
 'Event correlation is a core SIEM capability that analyzes relationships between events from different data sources to identify patterns that individual events alone would not reveal. Correlating a failed login from one country with a successful login from another country minutes later suggests credential compromise. This cross-source analysis is what distinguishes a SIEM from simple log collection.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'A SIEM analyst notices that alert volume has increased by 300% after deploying new detection rules, with most alerts being false positives. What is the PRIMARY risk of excessive false positives?',
 '["Alert fatigue — analysts may begin ignoring or deprioritizing alerts, causing genuine security incidents to be missed or responded to slowly", "Increased storage costs for log data", "Improved security posture due to more monitoring", "Reduced need for security staff"]'::jsonb,
 0,
 'Alert fatigue is a significant operational risk. When analysts are overwhelmed by false positives, they may develop a tendency to dismiss or deprioritize alerts, potentially missing genuine security incidents among the noise. Effective SIEM tuning involves refining rules to reduce false positives while maintaining detection of true threats — balancing sensitivity and specificity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization implements a Data Loss Prevention (DLP) solution. The DLP system can operate in three modes based on data state. Which data states does DLP typically monitor?',
 '["Data at rest, data in motion, and data in use", "Data created, data modified, and data deleted", "Data encrypted, data compressed, and data archived", "Data internal, data external, and data shared"]'::jsonb,
 0,
 'DLP solutions monitor data in three states: data at rest (stored in databases, file shares, endpoints), data in motion (transmitted over networks via email, web, FTP), and data in use (being accessed or processed by applications on endpoints). Each state requires different monitoring techniques — endpoint agents for data at rest/in use, and network sensors for data in motion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization implements Endpoint Detection and Response (EDR) on all workstations. How does EDR differ from traditional antimalware software?',
 '["EDR only scans files at rest", "EDR replaces the need for firewalls", "EDR continuously monitors endpoint activity, records telemetry data, detects suspicious behavior patterns, and enables investigation and response — going beyond signature-based detection", "EDR and traditional antimalware are identical"]'::jsonb,
 2,
 'EDR provides continuous monitoring of endpoint activities (process execution, file operations, network connections, registry changes), behavioral analysis to detect unknown threats, forensic investigation capabilities, and automated response actions. Unlike traditional antimalware that primarily relies on signature matching, EDR uses behavioral detection and provides the telemetry needed for incident investigation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'A network architect segments the corporate network so that the accounting department, HR, and general staff each occupy separate network segments with controlled traffic between them. What is the PRIMARY security benefit of this network segmentation?',
 '["Limiting lateral movement — if one segment is compromised, the attacker cannot freely move to other segments containing sensitive data", "Faster network speeds for all departments", "Reduced hardware costs", "Simplified network administration"]'::jsonb,
 0,
 'Network segmentation limits the blast radius of a security incident by isolating network zones. If an attacker compromises a device in the general staff segment, the segmentation (enforced by firewalls or ACLs between segments) prevents direct access to the accounting or HR segments. This containment strategy protects sensitive data and gives defenders time to detect and respond.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An IDS and an IPS both monitor network traffic for suspicious activity. What is the KEY functional difference between them?',
 '["An IDS generates alerts about suspicious traffic but does not block it; an IPS can actively block or drop malicious traffic in real time", "An IPS only generates alerts; an IDS blocks traffic", "There is no functional difference", "An IDS is hardware and an IPS is software"]'::jsonb,
 0,
 'The key difference is response capability: an Intrusion Detection System (IDS) monitors traffic passively and generates alerts for security personnel to investigate, but does not take action on the traffic. An Intrusion Prevention System (IPS) sits inline with traffic and can automatically block, drop, or modify malicious packets in real time, providing active protection.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An auditor evaluates a client''s encryption implementation and finds that the same symmetric key has been used to encrypt all data for the past five years without rotation. What risk does this create?',
 '["No risk — key longevity improves efficiency", "The data will decrypt faster", "Key rotation is only necessary for asymmetric keys", "Extended key usage increases the risk that the key will be compromised through cryptanalysis, side-channel attacks, or exposure, and a single compromise would expose all data encrypted with that key"]'::jsonb,
 3,
 'Using the same encryption key for an extended period increases the volume of ciphertext available for cryptanalysis, increases the probability of key exposure through operational incidents, and means that if the key is compromised, all data encrypted over the entire five-year period is exposed. Regular key rotation limits the exposure window and volume of compromised data.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'A company uses Elliptic Curve Cryptography (ECC) for its digital certificates instead of RSA. What is the PRIMARY advantage of ECC over RSA?',
 '["ECC is older and more widely tested", "ECC does not require a certificate authority", "ECC only works for symmetric encryption", "ECC provides equivalent security to RSA with significantly smaller key sizes, resulting in faster operations and lower computational overhead"]'::jsonb,
 3,
 'ECC achieves equivalent security levels to RSA with much smaller key sizes. For example, a 256-bit ECC key provides comparable security to a 3072-bit RSA key. This results in faster key generation, signing, and verification operations, smaller certificates, and reduced bandwidth and storage requirements — particularly beneficial for mobile devices and IoT with limited resources.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization implements a privileged access workstation (PAW) for its systems administrators. What is the security purpose of a PAW?',
 '["To provide administrators with a faster computer", "To replace multi-factor authentication", "To provide a hardened, isolated workstation dedicated exclusively to administrative tasks, reducing the risk of credential theft from general-purpose computing activities", "To allow administrators to work remotely from any device"]'::jsonb,
 2,
 'A Privileged Access Workstation (PAW) is a dedicated, hardened workstation used exclusively for administrative tasks. By separating administrative activities from general computing (email, web browsing), PAWs reduce the attack surface for credential theft. Malware from a phishing email or compromised website on a general workstation cannot access administrative credentials on the PAW.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'A security team configures their SIEM to aggregate logs from firewalls, servers, applications, and endpoints. The team normalizes log formats and establishes a centralized timeline. What security challenge does centralized log aggregation address?',
 '["Enabling cross-source correlation and providing a unified view for detecting multi-stage attacks that span multiple systems", "Reducing the total volume of log data", "Eliminating the need for individual system logging", "Replacing intrusion detection systems"]'::jsonb,
 0,
 'Centralized log aggregation enables analysts to see events across the entire environment in a unified timeline, making it possible to detect multi-stage attacks that involve multiple systems. An attacker might probe a firewall, exploit a web server, and move laterally to a database — events that appear innocuous individually but reveal an attack pattern when correlated across sources.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization''s access control policy requires that no single person can both create a purchase order and approve the corresponding payment. This is an example of:',
 '["Least privilege", "Need-to-know", "Separation of duties", "Mandatory access control"]'::jsonb,
 2,
 'Separation of duties (also called segregation of duties) divides critical functions among different individuals to prevent fraud, errors, and abuse. By requiring different people to create purchase orders and approve payments, the organization ensures that committing fraud requires collusion between at least two people, significantly reducing the risk compared to a single-person control.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An auditor reviews a client''s firewall rule base and finds that the final rule permits all traffic that was not explicitly denied by previous rules (an "allow all" default). What is the security concern?',
 '["This is best practice and requires no change", "The default-allow approach means any traffic not specifically blocked by a rule is permitted, potentially allowing unknown or malicious traffic through — best practice is a default-deny posture where only explicitly permitted traffic is allowed", "The firewall should have no default rule", "Default-allow only affects inbound traffic"]'::jsonb,
 1,
 'A default-allow (implicit allow) firewall policy permits any traffic not explicitly blocked, creating a permissive environment where new or unknown traffic passes through automatically. Best practice is a default-deny posture where all traffic is blocked unless explicitly permitted by a rule. This ensures that only authorized, known traffic flows through the firewall.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization requires all employees to use a VPN when working remotely. The VPN uses IPsec with AES-256 encryption. What security function does the VPN provide in this context?',
 '["It prevents all cyberattacks", "It creates an encrypted tunnel between the remote device and the corporate network, protecting data in transit from eavesdropping on untrusted networks", "It replaces the need for antivirus software", "It encrypts data stored on the employee''s laptop"]'::jsonb,
 1,
 'A VPN creates an encrypted tunnel between the remote device and the corporate network, ensuring that all traffic traversing untrusted networks (home Wi-Fi, public hotspots, internet backbone) is protected from eavesdropping and tampering. IPsec with AES-256 provides strong encryption for this tunnel. VPNs protect data in transit but do not address data at rest, malware, or other threats.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An IT auditor finds that a client''s SIEM stores logs for only 30 days before automatic deletion. The organization is subject to regulatory requirements mandating log retention for one year. What should the auditor recommend?',
 '["30 days is sufficient for all organizations", "Extend log retention to meet the one-year regulatory requirement, potentially using tiered storage with hot storage for recent logs and cold storage for older logs to manage costs", "Delete logs immediately to reduce storage costs", "Regulatory requirements for log retention do not exist"]'::jsonb,
 1,
 'Log retention must meet regulatory and organizational requirements. A 30-day retention period is insufficient when regulations mandate one year. Tiered storage addresses cost concerns — recent logs stay in fast, searchable hot storage (SIEM), while older logs move to cost-effective cold storage (archive) that can be retrieved for investigations or audits as needed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization implements certificate pinning in its mobile banking application. What does certificate pinning protect against?',
 '["SQL injection", "Man-in-the-middle attacks using fraudulent certificates — by accepting only pre-defined certificates, the application rejects connections even if an attacker presents a valid certificate from a compromised or rogue certificate authority", "Brute force password attacks", "Denial of service"]'::jsonb,
 1,
 'Certificate pinning hardcodes or embeds the expected server certificate (or its public key) in the application. If an attacker intercepts traffic using a fraudulent certificate — even one signed by a legitimate but compromised CA — the application rejects the connection because the presented certificate does not match the pinned certificate. This provides defense-in-depth against MitM attacks.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'During a review of the client''s access management process, the auditor finds that user access reviews are conducted annually. Several users have accumulated permissions from previous roles that are no longer required. This accumulation is known as:',
 '["Privilege escalation", "Privilege creep (access creep) — the gradual accumulation of access rights beyond what is needed for a user''s current role", "Role explosion", "Access denial"]'::jsonb,
 1,
 'Privilege creep (also called access creep) occurs when users accumulate access permissions over time as they change roles, join projects, or receive temporary access that is never revoked. Annual reviews may not catch this quickly enough. Organizations should conduct regular access reviews (at least quarterly for privileged access) and implement role-based provisioning that automatically adjusts access with job changes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization implements a Security Orchestration, Automation, and Response (SOAR) platform alongside its SIEM. What is the PRIMARY benefit of SOAR?',
 '["SOAR replaces the SIEM entirely", "SOAR automates repetitive incident response tasks (triage, enrichment, containment) through playbooks, reducing response times and freeing analysts to focus on complex investigations", "SOAR is only used for compliance reporting", "SOAR eliminates the need for security analysts"]'::jsonb,
 1,
 'SOAR platforms complement SIEMs by automating repetitive, time-consuming tasks in the incident response process through predefined playbooks. When a SIEM alert triggers, SOAR can automatically gather threat intelligence, enrich indicators, isolate affected systems, and create tickets — reducing mean time to respond (MTTR) while allowing analysts to focus on complex threats that require human judgment.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization uses a combination of symmetric and asymmetric encryption for secure email. The email body is encrypted with AES (symmetric), and the AES key is encrypted with the recipient''s RSA public key (asymmetric). Why is this hybrid approach used?',
 '["It is required by all email standards", "Symmetric encryption is fast for large data but has key distribution challenges; asymmetric encryption solves key distribution but is slow for large data — the hybrid approach uses each for its strength", "Asymmetric encryption cannot encrypt data at all", "This approach provides no security benefit over using one method alone"]'::jsonb,
 1,
 'The hybrid approach leverages the strengths of both encryption types. AES symmetric encryption efficiently handles the bulk data (email body) with high speed, while RSA asymmetric encryption securely delivers the AES session key without requiring pre-shared secrets. This pattern is fundamental to protocols like TLS, PGP, and S/MIME because it provides both performance and secure key exchange.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'A company''s IT security policy requires that all laptops use full-disk encryption. An auditor discovers that 15% of laptops have encryption disabled. Which type of control would BEST address this gap on an ongoing basis?',
 '["A detective control — periodic compliance scans that identify and report non-compliant devices to IT for remediation", "A physical control — locking all laptops in a cabinet", "A corrective control — sending a company-wide email about the policy", "No control is needed if the policy exists"]'::jsonb,
 0,
 'A detective control such as automated compliance scanning identifies devices that deviate from the encryption standard. By running regular scans and reporting non-compliant devices, the organization creates an ongoing mechanism to detect policy violations. This feeds into a corrective process where IT can re-enable encryption. The policy alone is insufficient without mechanisms to detect non-compliance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An organization implements network access control (NAC) that checks each device for up-to-date antivirus, current OS patches, and enabled encryption before granting network access. Devices that fail are placed on a quarantine VLAN. What type of control is NAC?',
 '["A purely detective control", "A preventive control that enforces security baseline compliance before allowing network access, combined with corrective capabilities through quarantine remediation", "A physical access control", "A manual control requiring administrator intervention for each device"]'::jsonb,
 1,
 'NAC functions primarily as a preventive control by blocking non-compliant devices from accessing the production network. The quarantine VLAN adds corrective capability by providing a restricted environment where devices can be updated to meet compliance requirements. This automated enforcement ensures that only devices meeting the security baseline can access sensitive network resources.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Security Controls and Monitoring',
 'An auditor reviews a client''s identity and access management (IAM) program and finds that service accounts (used by applications and automated processes) have not been included in the quarterly access review process. Why is this a significant finding?',
 '["Service accounts pose no security risk", "Service accounts often have elevated privileges, do not expire with employee departures, and can be exploited if compromised — excluding them from access reviews creates an unmonitored pathway for unauthorized access", "Service accounts are automatically secured by the operating system", "Access reviews are only required for human user accounts"]'::jsonb,
 1,
 'Service accounts frequently have elevated privileges needed for application operations, run continuously, and are not tied to individual employees (so they survive personnel changes). Without regular review, service accounts may retain unnecessary privileges, use weak or shared credentials, or be exploited by attackers who discover them. Including service accounts in access reviews is essential for comprehensive IAM.',
 'hard');

-- =============================================================================
-- Incident Response and Recovery (30 questions)
-- Difficulty: 9 easy, 15 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An organization is building its incident response capability. Which of the following is a critical component of an incident response plan that should be established BEFORE any incidents occur?',
 '["A list of all past security incidents", "A detailed forensic analysis of the most recent breach", "Defined roles and responsibilities, communication procedures, and escalation paths for the incident response team", "A complete inventory of all attacker tools and techniques"]'::jsonb,
 2,
 'An effective incident response plan must establish clear roles and responsibilities, communication procedures (internal and external), and escalation paths before incidents occur. Without pre-defined assignments, organizations waste critical time during incidents determining who is responsible for what. The plan should also include contact lists, severity classifications, and authority matrices.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'According to NIST SP 800-61, the incident response lifecycle consists of four phases. What is the correct order?',
 '["Detection, Containment, Recovery, Preparation", "Analysis, Response, Recovery, Documentation", "Planning, Execution, Review, Closure", "Preparation, Detection and Analysis, Containment/Eradication/Recovery, Post-Incident Activity"]'::jsonb,
 3,
 'NIST SP 800-61 defines four phases: (1) Preparation — establishing the IR capability and preventive measures; (2) Detection and Analysis — identifying and validating incidents; (3) Containment, Eradication, and Recovery — limiting damage, removing the threat, and restoring systems; (4) Post-Incident Activity — lessons learned and process improvement. These phases may overlap and cycle iteratively.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'During the preparation phase of incident response, which of the following activities is MOST important?',
 '["Establishing and training the incident response team, deploying detection tools, and creating response playbooks", "Analyzing malware samples from previous incidents", "Notifying law enforcement of potential future incidents", "Purchasing cyber insurance"]'::jsonb,
 0,
 'Preparation is the foundation of effective incident response. Key activities include forming and training the IR team, deploying detection and monitoring tools, creating response playbooks for common incident types, establishing communication channels, and conducting tabletop exercises. Without adequate preparation, the organization cannot respond effectively when an incident occurs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'A security analyst receives a SIEM alert indicating potential data exfiltration. Before escalating, the analyst gathers additional log data, correlates events, and confirms the incident is genuine. This activity falls under which IR phase?',
 '["Preparation", "Containment", "Post-Incident Activity", "Detection and Analysis"]'::jsonb,
 3,
 'Detection and Analysis involves identifying potential incidents through alerts and indicators, gathering and analyzing evidence to confirm whether an incident has occurred, assessing its scope and impact, and prioritizing it for response. The analyst''s actions — reviewing logs, correlating events, and validating the alert — are core detection and analysis activities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'After confirming a ransomware infection on a workstation, the incident response team''s FIRST containment action should be:',
 '["Pay the ransom to restore files quickly", "Reformat the entire network immediately", "Isolate the infected workstation from the network to prevent lateral spread", "Notify the media about the breach"]'::jsonb,
 2,
 'The immediate priority during containment is to prevent the incident from spreading. Isolating the infected workstation (disconnecting from the network) stops the ransomware from propagating to file shares, other workstations, and servers. Paying ransom is not recommended, reformatting the entire network is excessive and premature, and media notification is a communication step that comes later.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'During containment of a security incident, the IR team must choose between short-term and long-term containment strategies. Which example represents a long-term containment measure?',
 '["Disconnecting the affected server from the network", "Blocking the attacker''s IP address on the firewall", "Disabling the compromised user account", "Rebuilding the compromised system on a clean image with updated patches and enhanced monitoring before reconnecting it to the production network"]'::jsonb,
 3,
 'Long-term containment involves sustainable measures that allow normal operations to continue while maintaining security. Rebuilding a system on a clean image with patches and enhanced monitoring provides a durable solution. Short-term measures like network disconnection, IP blocking, and account disabling are immediate but temporary — they stop the bleeding but don''t resolve the underlying issue.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'After containing and eradicating a malware infection, the IR team begins the recovery phase. Which activity is part of recovery?',
 '["Restoring affected systems from verified clean backups and gradually returning them to production with enhanced monitoring", "Identifying the initial attack vector", "Conducting employee interviews about the incident", "Writing the final incident report"]'::jsonb,
 0,
 'Recovery involves restoring systems to normal operation, which includes restoring from clean backups, rebuilding systems, validating system integrity, and gradually returning services to production while monitoring for signs of persistent compromise. The recovery phase bridges containment/eradication and normal operations, ensuring systems are clean before resuming full service.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'After resolving a significant security incident, the IR team conducts a lessons-learned meeting. What is the PRIMARY purpose of this post-incident activity?',
 '["To assign blame to the individual who caused the incident", "To calculate the total cost of the incident for insurance purposes only", "To identify what worked well, what failed, and what improvements should be made to prevent similar incidents and improve response effectiveness", "To generate marketing material about the organization''s security capabilities"]'::jsonb,
 2,
 'The lessons-learned (post-incident) meeting identifies what worked well, what could be improved, and what changes should be made to policies, procedures, tools, and training. This continuous improvement process strengthens the organization''s security posture and incident response capability. It should be conducted without blame to encourage honest discussion and focus on systemic improvements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'A forensic investigator arrives at the scene of a suspected data breach and must collect evidence from a running server. According to digital forensics best practices, what should the investigator do FIRST?',
 '["Power off the server immediately to preserve the hard drive", "Begin interviewing employees about what happened", "Reboot the server to clear any malware", "Capture volatile evidence (RAM contents, running processes, network connections) before any other action because it will be lost when the system is powered off"]'::jsonb,
 3,
 'Volatile evidence (RAM, running processes, active network connections, logged-in users, clipboard contents) exists only while the system is powered on and is lost upon shutdown or reboot. The order of volatility dictates collecting the most volatile evidence first. Powering off or rebooting the server would destroy this critical forensic evidence. Hard drive data (non-volatile) can be captured afterward.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'During a forensic investigation, a technician creates a bit-for-bit copy of a suspect''s hard drive. This forensic copy is called:',
 '["A backup", "A file copy", "A forensic image (disk image)", "A snapshot"]'::jsonb,
 2,
 'A forensic image is a bit-for-bit (sector-by-sector) copy of the entire storage device, including deleted files, slack space, and unallocated space. Unlike a regular backup that copies only active files, a forensic image captures everything on the drive. The original drive is write-protected during imaging to maintain integrity, and hash values verify the image is an exact copy.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'A chain of custody document is maintained throughout a forensic investigation. What is the PRIMARY purpose of maintaining chain of custody?',
 '["To document every person who handled the evidence, when, and what they did with it — ensuring evidence integrity and admissibility in legal proceedings", "To track the cost of the investigation", "To list all software installed on the forensic workstation", "To record the attacker''s identity"]'::jsonb,
 0,
 'Chain of custody documentation tracks the complete lifecycle of evidence: who collected it, when, how it was stored and transported, who accessed it, and what was done with it at each step. This unbroken chain demonstrates that evidence has not been tampered with, which is essential for admissibility in court and credibility in regulatory proceedings.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'A forensic analyst must decide the order in which to collect evidence from a compromised system. The order of volatility ranks evidence from most to least volatile. Which sequence correctly orders evidence from MOST volatile to LEAST volatile?',
 '["Hard drive → RAM → network connections → CPU registers", "CPU registers → RAM → network connections → hard drive", "Hard drive → network connections → RAM → CPU registers", "Network connections → hard drive → RAM → CPU registers"]'::jsonb,
 1,
 'The order of volatility, from most to least volatile: CPU registers/cache (nanoseconds), RAM (lost at power-off), network connections and process state (can change at any moment), temporary files and swap space, hard drive data, removable media, and archived/backup data. Forensic best practice requires collecting the most volatile evidence first.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An incident response team classifies an incident where an employee accidentally emails a spreadsheet containing customer Social Security numbers to an external recipient. How should this incident be classified?',
 '["Malware infection", "Unauthorized disclosure (data breach) of personally identifiable information", "Denial of service", "Physical security incident"]'::jsonb,
 1,
 'This is an unauthorized disclosure incident — sensitive PII (Social Security numbers) was transmitted to an unauthorized external recipient. Even though the disclosure was accidental rather than malicious, it constitutes a data breach that may trigger regulatory notification requirements (e.g., state breach notification laws, HIPAA if healthcare-related). The incident should be treated with the same urgency as a malicious breach.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An organization defines incident severity levels. A Severity 1 (Critical) incident is defined as one that threatens the organization''s ability to operate or involves confirmed compromise of highly sensitive data. Which of the following scenarios should be classified as Severity 1?',
 '["A single employee receiving a phishing email that was blocked by the email filter", "A failed login attempt on a non-critical test server", "A confirmed ransomware attack encrypting the primary financial database and backup systems simultaneously", "A minor website defacement on an informational page"]'::jsonb,
 2,
 'A ransomware attack encrypting both the primary financial database and backup systems simultaneously meets Severity 1 criteria: it threatens the organization''s ability to operate (financial systems unavailable) and involves confirmed compromise of critical systems. The loss of both primary and backup systems makes recovery significantly more difficult and requires immediate executive-level response.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'NIST SP 800-61 recommends that organizations establish relationships with external parties BEFORE incidents occur. Which external entity would be MOST useful to have a pre-established relationship with for a ransomware incident?',
 '["A marketing agency", "A website design company", "A staffing agency", "Law enforcement (FBI/CISA), a digital forensics firm, and outside legal counsel with breach experience"]'::jsonb,
 3,
 'Pre-established relationships with external incident response resources are critical because assembling them during a crisis causes delays. Law enforcement (FBI, CISA) can provide threat intelligence and assist with investigation. Digital forensics firms provide specialized analysis capabilities. Outside legal counsel guides regulatory compliance, breach notification, and evidence preservation requirements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An organization conducts a tabletop exercise for its incident response team. What is the PRIMARY purpose of a tabletop exercise?',
 '["To walk through a simulated incident scenario in a discussion-based format, testing the IR plan''s effectiveness, clarifying roles, and identifying gaps without disrupting operations", "To test the organization''s backup restoration speed", "To measure network throughput under stress", "To evaluate employee typing speed"]'::jsonb,
 0,
 'Tabletop exercises are discussion-based simulations where the IR team walks through a realistic incident scenario step by step. The purpose is to test the IR plan, clarify roles and responsibilities, identify communication gaps, and validate decision-making processes — all without impacting production systems. They are lower cost and lower risk than full technical simulations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An organization''s mean time to detect (MTTD) a security incident is 45 days, and its mean time to respond (MTTR) after detection is 30 days. What is the PRIMARY concern with these metrics?',
 '["Both metrics are within industry best practice", "A 45-day detection window gives attackers extensive time to move laterally and exfiltrate data, and the combined 75-day timeline significantly increases the scope and cost of a breach", "Only the MTTR is concerning", "These metrics are not meaningful for security assessment"]'::jsonb,
 1,
 'Long MTTD and MTTR directly correlate with breach severity and cost. A 45-day detection gap allows attackers ample time for lateral movement, privilege escalation, and data exfiltration. The combined 75-day timeline means a breach persists for over two months. Industry leaders target MTTD of hours to days, not weeks. Reducing these metrics through improved detection and response automation is critical.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'During the eradication phase of incident response, what is the PRIMARY objective?',
 '["Restoring systems to normal operation", "Completely removing the threat from the environment, including all malware, backdoors, and unauthorized access mechanisms the attacker may have established", "Notifying affected customers", "Calculating the financial impact of the incident"]'::jsonb,
 1,
 'Eradication focuses on completely removing the threat from the environment. This includes removing malware, closing backdoors, eliminating unauthorized accounts, patching exploited vulnerabilities, and verifying that no persistence mechanisms remain. Incomplete eradication risks re-compromise. Recovery (restoring operations) follows eradication, and notification and cost analysis are separate activities.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'A forensic investigator needs to prove that a forensic disk image is an exact copy of the original drive. Which technique is used?',
 '["Comparing file sizes", "Visually inspecting the files", "Checking the creation timestamps", "Generating and comparing cryptographic hash values (MD5/SHA-256) of both the original drive and the image"]'::jsonb,
 3,
 'Cryptographic hash values (MD5, SHA-1, SHA-256) create a unique digital fingerprint of the data. By computing hashes of both the original drive and the forensic image, the investigator can prove they are identical — any difference, even a single bit, would produce a completely different hash. This mathematical verification is the standard method for proving forensic image integrity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An organization''s IR plan specifies that during a data breach involving customer PII, the legal team must be notified within one hour, affected individuals within 72 hours, and regulators as required by applicable law. This component of the IR plan addresses:',
 '["Technical containment procedures", "Evidence preservation", "System recovery procedures", "Communication and notification requirements"]'::jsonb,
 3,
 'Communication and notification requirements define who must be informed, when, and through what channels during an incident. This includes internal stakeholders (legal, executive management, PR), external parties (regulators, law enforcement, affected individuals), and the timelines for each notification. Clear communication procedures prevent delays that could increase legal liability and reputational damage.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'During a forensic investigation, the analyst must differentiate between volatile and non-volatile evidence. Which of the following is an example of NON-volatile evidence?',
 '["Contents of RAM", "Active network connections", "Running processes", "Files stored on the hard drive"]'::jsonb,
 3,
 'Non-volatile evidence persists even after the system is powered off. Files stored on the hard drive (including deleted files, log files, and application data) are non-volatile and can be collected after shutdown. RAM contents, active network connections, and running processes are all volatile — they exist only while the system is running and are lost upon power-off.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An organization conducts a full-scale incident response simulation where the IR team responds to a realistic attack scenario in a test environment, performing actual technical response actions. How does this differ from a tabletop exercise?',
 '["There is no difference", "A tabletop exercise is more rigorous", "A full-scale simulation involves hands-on technical execution in a realistic environment, testing both processes and technical capabilities, while a tabletop exercise is discussion-based with no actual technical actions", "Full-scale simulations are only for military organizations"]'::jsonb,
 2,
 'Full-scale simulations (also called functional exercises or red team/blue team exercises) involve the IR team executing actual response actions in a realistic environment — isolating systems, conducting forensics, deploying countermeasures. This tests both procedural knowledge and technical capability. Tabletop exercises discuss responses theoretically without taking physical actions, making them complementary but less rigorous.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An IR team discovers during post-incident analysis that the attacker initially gained access through a phishing email three months before detection. The team creates a detailed timeline of attacker activities from initial compromise to discovery. This timeline is known as:',
 '["An attack timeline (kill chain reconstruction) documenting the full scope of the intrusion from initial access through all attacker activities to detection", "A chain of custody log", "A backup restoration log", "A change management record"]'::jsonb,
 0,
 'An attack timeline reconstructs the full sequence of attacker activities from initial access through persistence, lateral movement, privilege escalation, data access, and exfiltration to detection. This kill chain reconstruction is a critical post-incident analysis artifact that identifies all affected systems, data exposure scope, and the gaps that allowed the attack to succeed and persist undetected.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'A forensic investigator is handling digital evidence that may be used in criminal prosecution. The investigator must ensure the evidence is legally admissible. Which practice is MOST critical for admissibility?',
 '["Using the fastest forensic tools available", "Maintaining an unbroken chain of custody, using write-blocking devices during evidence collection, and documenting every step of the forensic process", "Analyzing evidence on the original device to save time", "Emailing evidence copies to the legal team for review"]'::jsonb,
 1,
 'For digital evidence to be admissible in court, investigators must demonstrate its authenticity and integrity throughout the entire process. This requires write-blocking devices (preventing any modification to original evidence), maintaining an unbroken chain of custody (documenting every person who handles evidence), and thorough documentation of all forensic procedures and findings.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'After a security incident, the IR team determines that the attacker exploited an unpatched vulnerability in a web server that had been flagged in a vulnerability scan six months earlier but never remediated. What should the lessons-learned report PRIMARILY recommend?',
 '["Conducting more frequent vulnerability scans", "Replacing the web server with a different vendor", "Terminating the employee who missed the patch", "Improving the vulnerability management program to ensure critical findings are remediated within defined SLAs, and establishing accountability for patch management"]'::jsonb,
 3,
 'The root cause was not the vulnerability itself but the failure of the vulnerability management process to ensure timely remediation. The lessons-learned recommendation should address the systemic issue: establishing SLAs for remediation by severity, creating accountability mechanisms, and implementing tracking to ensure identified vulnerabilities are patched within acceptable timeframes.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An organization''s incident response plan designates an incident commander for each major incident. What is the incident commander''s PRIMARY role?',
 '["Performing all technical forensic analysis personally", "Handling all media inquiries personally", "Writing the post-incident report", "Coordinating the overall response effort, making key decisions, managing resources, and serving as the central point of communication between the IR team, management, and external parties"]'::jsonb,
 3,
 'The incident commander leads the response effort by coordinating activities across technical, legal, communications, and management teams. They make key decisions (containment strategies, escalation, external notifications), manage resources, and serve as the central communication point. The role ensures unified command rather than fragmented, uncoordinated responses from multiple teams.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'During incident recovery, the IR team restores a compromised server from a backup taken two days before the incident. After restoration, what verification step is MOST important before returning the server to production?',
 '["Checking that the server boots successfully", "Verifying the backup itself is clean (not already compromised at the time of backup), validating system integrity, and monitoring for indicators of compromise before reconnecting to the production network", "Updating the server''s desktop wallpaper", "Renaming the server"]'::jsonb,
 1,
 'Before returning a restored server to production, the team must verify that the backup predates the compromise (otherwise the backup itself may contain the attacker''s persistence mechanisms), validate the system''s integrity, apply any missing patches (especially the one exploited in the attack), and monitor for indicators of compromise during a controlled reintroduction period.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An organization''s IR plan includes an escalation matrix. What is the purpose of an escalation matrix?',
 '["To rank employees by seniority", "To schedule employee vacations", "To determine server rack placement", "To define clear criteria for when and to whom incidents should be escalated based on severity, impact, and type — ensuring appropriate management awareness and resource allocation"]'::jsonb,
 3,
 'An escalation matrix specifies the conditions under which an incident must be escalated to higher levels of management, specific roles (CISO, legal counsel, CEO), or external parties (law enforcement, regulators). It defines severity thresholds, required notification timelines, and responsible parties. This ensures that critical incidents receive appropriate executive attention and resources without delay.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'A security analyst finds evidence that an attacker used a legitimate remote administration tool (already installed in the environment) to move laterally between systems. This technique of using pre-existing tools rather than custom malware is known as:',
 '["Zero-day exploitation", "Living off the land (LOtL) — using legitimate tools and binaries already present in the environment to avoid detection", "Denial of service", "Phishing"]'::jsonb,
 1,
 'Living off the land (LOtL) techniques use legitimate system tools, scripts, and administration utilities already present in the environment (e.g., PowerShell, WMI, PsExec, RDP) for malicious purposes. Because these tools are expected in the environment, their malicious use is harder to detect than custom malware. Detection requires behavioral analysis of how these tools are being used, not just their presence.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Incident Response and Recovery',
 'An organization''s incident response plan requires preserving evidence before any containment actions that might alter the system state. What is the rationale for this requirement?',
 '["Evidence preservation is only important for insurance claims", "Containment actions such as rebooting, patching, or isolating systems can destroy volatile evidence and alter system state, making it impossible to determine the full scope of the incident or support legal proceedings", "There is no reason to preserve evidence before containment", "Evidence preservation slows down response unnecessarily"]'::jsonb,
 1,
 'Containment actions — while critical for limiting damage — can destroy volatile evidence (RAM, network connections, running processes) and alter the system state. Capturing evidence first (memory dumps, disk images, log snapshots) preserves the forensic record needed to understand the full attack scope, identify all affected systems, and support potential legal or regulatory proceedings.',
 'medium');
-- ISC Chunk 3: Privacy, SOC Engagements, SOC Reporting/TSC, IT General Controls, IT Audit Frameworks, SOC Testing, SOC Reporting

-- =============================================================================
-- Topic 1: Privacy Requirements and Data Protection (35 questions)
-- Difficulty: 11 easy, 17 medium, 7 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under the GDPR, a company that determines the purposes and means of processing personal data is classified as which of the following?',
 '["Data processor", "Supervisory authority", "Data protection officer", "Data controller"]'::jsonb,
 3,
 'A data controller is the entity that determines the purposes and means of processing personal data under the GDPR. The data processor, by contrast, processes data on behalf of the controller. The DPO is an individual role, and the supervisory authority is a government oversight body.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Which of the following is NOT recognized as a lawful basis for processing personal data under the GDPR?',
 '["Consent of the data subject", "Legitimate interests pursued by the controller", "The data subject''s implied agreement through continued use of a website", "Performance of a contract to which the data subject is party"]'::jsonb,
 2,
 'The GDPR requires an explicit lawful basis for processing. The six lawful bases are consent, contract performance, legal obligation, vital interests, public task, and legitimate interests. Implied agreement through website use does not constitute valid consent under GDPR, which requires a clear affirmative action.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under the GDPR, within what timeframe must a data controller notify the supervisory authority after becoming aware of a personal data breach?',
 '["24 hours", "48 hours", "72 hours", "30 days"]'::jsonb,
 2,
 'Article 33 of the GDPR requires data controllers to notify the relevant supervisory authority of a personal data breach without undue delay and, where feasible, within 72 hours of becoming aware of it. If notification is not made within 72 hours, the controller must provide reasons for the delay.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A hospital experiences a ransomware attack that encrypts patient records, making them temporarily unavailable for 36 hours. Under GDPR, what is the hospital''s primary obligation regarding this incident?',
 '["Notify the supervisory authority within 72 hours if the breach is likely to result in a risk to individuals'' rights", "No notification is required because no data was exfiltrated", "Notify only affected patients within 24 hours", "Wait until the investigation is complete before making any notifications"]'::jsonb,
 0,
 'A breach under GDPR includes any security incident that leads to unauthorized access, loss, alteration, or unavailability of personal data. Even though no data was exfiltrated, the unavailability of patient records constitutes a breach. The controller must notify the supervisory authority within 72 hours if it is likely to result in a risk to individuals'' rights and freedoms.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under GDPR, which data subject right allows an individual to request that their personal data be transmitted directly from one controller to another?',
 '["Right of access", "Right to erasure", "Right to data portability", "Right to rectification"]'::jsonb,
 2,
 'The right to data portability (Article 20) allows data subjects to receive their personal data in a structured, commonly used, and machine-readable format, and to have that data transmitted directly to another controller where technically feasible. This right applies when processing is based on consent or contract and carried out by automated means.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A data subject requests that a social media company correct inaccurate personal information in their profile. Which GDPR right is the data subject exercising?',
 '["Right to erasure", "Right to restrict processing", "Right to object", "Right to rectification"]'::jsonb,
 3,
 'The right to rectification (Article 16) allows data subjects to obtain the correction of inaccurate personal data without undue delay. The controller must also complete incomplete personal data if the data subject requests it. This is distinct from erasure (deletion), restriction (limiting processing), and objection (opposing processing).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under the GDPR, which of the following organizations is required to appoint a Data Protection Officer (DPO)?',
 '["Any company with more than 250 employees", "Any company that processes personal data of EU residents", "Only companies headquartered in the EU", "A public authority that processes personal data"]'::jsonb,
 3,
 'Article 37 of the GDPR requires a DPO to be appointed when processing is carried out by a public authority or body, when core activities involve regular and systematic monitoring of data subjects on a large scale, or when core activities involve large-scale processing of special categories of data. Company size alone does not trigger the requirement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under the CCPA as amended by the CPRA, which of the following rights is available to California consumers?',
 '["Right to opt out of the sale or sharing of personal information", "Right to have all personal data deleted within 24 hours", "Right to prevent any company from collecting personal information", "Right to receive monetary compensation for data breaches"]'::jsonb,
 0,
 'The CCPA/CPRA grants California consumers the right to opt out of the sale or sharing of their personal information. Businesses must provide a clear ''Do Not Sell or Share My Personal Information'' link. The law does not guarantee 24-hour deletion, blanket prevention of collection, or automatic monetary compensation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A California-based retailer collects biometric data from its loyalty program members for identity verification. Under the CPRA, this data is classified as which of the following?',
 '["Sensitive personal information requiring additional protections", "General personal information with no special requirements", "De-identified data exempt from CPRA", "Publicly available information"]'::jsonb,
 0,
 'The CPRA defines sensitive personal information to include biometric data, precise geolocation, racial or ethnic origin, religious beliefs, and other categories. Consumers have the right to limit the use and disclosure of their sensitive personal information. Businesses processing such data must provide notice and honor opt-out requests.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under HIPAA, which of the following entities is classified as a covered entity?',
 '["A health plan that provides or pays the cost of medical care", "A software vendor that develops electronic health record systems", "A janitorial service that cleans a hospital", "An accounting firm that audits a health plan''s financial statements"]'::jsonb,
 0,
 'HIPAA covered entities include health plans, healthcare clearinghouses, and healthcare providers who transmit health information electronically. A health plan that provides or pays for medical care is a covered entity. Software vendors, janitorial services, and accounting firms may be business associates but are not covered entities themselves.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A hospital contracts with an external billing company that will have access to patient records to process insurance claims. Under HIPAA, what agreement must be in place before sharing PHI with this company?',
 '["A non-disclosure agreement", "A data processing addendum", "A service level agreement", "A business associate agreement"]'::jsonb,
 3,
 'HIPAA requires covered entities to enter into a business associate agreement (BAA) with any third party that creates, receives, maintains, or transmits protected health information on their behalf. The BAA must specify the permitted uses and disclosures of PHI and require the business associate to implement appropriate safeguards.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A physician''s office is responding to a patient''s request for medical records. Under HIPAA''s minimum necessary standard, which approach should the office take?',
 '["Provide the patient''s complete medical record without restriction", "Provide only the specific records the patient requested", "Deny the request because the minimum necessary standard limits all disclosures", "Provide the records but redact all diagnosis codes"]'::jsonb,
 0,
 'The minimum necessary standard does not apply to disclosures made to the individual who is the subject of the information. When a patient requests their own medical records, the covered entity must provide access to the designated record set. The minimum necessary standard applies to other uses and disclosures, such as those for payment or healthcare operations.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'An organization is planning to deploy a new customer analytics platform that will process large volumes of personal data. Under GDPR, what assessment should be conducted before implementation?',
 '["A data protection impact assessment", "A financial impact assessment", "A business continuity assessment", "A vendor risk assessment"]'::jsonb,
 0,
 'Article 35 of the GDPR requires a Data Protection Impact Assessment (DPIA) when processing is likely to result in a high risk to the rights and freedoms of natural persons, particularly when using new technologies or processing data on a large scale. The DPIA must describe the processing, assess necessity and proportionality, and identify measures to mitigate risks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A company wants to incorporate privacy protections into its new mobile application from the earliest design stages rather than adding them after development. This approach is best described as which of the following?',
 '["Privacy by default", "Privacy impact assessment", "Privacy shield", "Privacy by design"]'::jsonb,
 3,
 'Privacy by design is a framework that embeds privacy protections into the design and architecture of systems and business practices from the outset. It is proactive rather than reactive and is required by Article 25 of the GDPR. Privacy by default, a related concept, means that only necessary personal data is processed by default without user intervention.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A multinational company headquartered in the United States needs to transfer personal data of EU employees to its U.S. payroll processing center. Under GDPR, which of the following mechanisms can legally authorize this cross-border transfer?',
 '["Standard contractual clauses approved by the European Commission", "A verbal agreement between the company''s EU and U.S. offices", "The company''s internal privacy policy posted on its website", "Registration with the local chamber of commerce in the EU country"]'::jsonb,
 0,
 'Cross-border transfers of personal data outside the EU require appropriate safeguards under GDPR Chapter V. Standard contractual clauses (SCCs) approved by the European Commission are one recognized mechanism. Other valid mechanisms include adequacy decisions, binding corporate rules (BCRs), and explicit consent. Verbal agreements, privacy policies, and business registrations are insufficient.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A global pharmaceutical company wants to establish a single set of data protection rules that apply across all its subsidiaries worldwide for intra-group transfers of personal data from the EU. Which GDPR mechanism is most appropriate?',
 '["Standard contractual clauses", "Binding corporate rules", "An adequacy decision", "Consent from each data subject"]'::jsonb,
 1,
 'Binding corporate rules (BCRs) are internal policies adopted by a multinational group to allow intra-group transfers of personal data outside the EU. BCRs must be approved by the competent supervisory authority and provide enforceable data subject rights. They are specifically designed for multinational corporate groups with regular intra-group data flows.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under GDPR, when a controller relies on consent as the lawful basis for processing, which of the following requirements must be satisfied?',
 '["Consent must be freely given, specific, informed, and unambiguous", "Consent may be bundled with acceptance of terms of service without separate indication", "Implied consent through continued use of a service is sufficient", "Consent is only required for processing special categories of data"]'::jsonb,
 0,
 'Article 7 of the GDPR establishes that consent must be freely given, specific, informed, and given by a clear affirmative action. Pre-ticked boxes, silence, or inactivity do not constitute valid consent. The controller must be able to demonstrate that consent was obtained, and the data subject must be able to withdraw consent at any time.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A data subject submits a request to a company under GDPR Article 15 asking what personal data the company holds about them. The company must respond within what timeframe?',
 '["7 calendar days", "60 calendar days", "90 calendar days", "30 calendar days"]'::jsonb,
 3,
 'Under GDPR Article 12, a data controller must respond to a data subject access request without undue delay and within one month (approximately 30 calendar days) of receipt. This period may be extended by two additional months for complex or numerous requests, but the data subject must be informed of the extension within the initial one-month period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A European Commission adequacy decision regarding a non-EU country means which of the following for GDPR purposes?',
 '["Personal data can be transferred to that country without additional safeguards", "The country''s companies are exempt from all GDPR requirements", "The country''s data protection authority has jurisdiction over EU controllers", "Companies in that country automatically become data processors under GDPR"]'::jsonb,
 0,
 'An adequacy decision by the European Commission under Article 45 of the GDPR determines that a third country provides an adequate level of data protection. Once an adequacy decision is in place, personal data can flow from the EU to that country without any further safeguards. The decision does not exempt the country''s companies from GDPR when processing EU data.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A healthcare organization is implementing a new telemedicine platform. Under HIPAA, which of the following types of information would be classified as protected health information (PHI)?',
 '["A patient''s name linked to their diagnosis and treatment plan", "Aggregate statistics about disease prevalence with no individual identifiers", "De-identified data that has been processed through expert determination", "A physician''s professional credentials and licensure information"]'::jsonb,
 0,
 'PHI under HIPAA includes individually identifiable health information that relates to a person''s past, present, or future health condition, provision of healthcare, or payment for healthcare. A patient''s name linked to their diagnosis is individually identifiable health information. De-identified data, aggregate statistics, and provider credentials are not PHI.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under the CCPA/CPRA, a consumer submits a verified request to delete their personal information held by an online retailer. Which of the following exceptions would allow the retailer to deny the deletion request?',
 '["The retailer prefers to retain data for future marketing campaigns", "The data is stored in a cloud-based system that makes deletion technically inconvenient", "The retailer has already collected the data and considers it a business asset", "The data is needed to complete a transaction the consumer initiated"]'::jsonb,
 3,
 'The CCPA/CPRA includes exceptions to the right to delete, including when the data is necessary to complete a transaction, detect security incidents, comply with legal obligations, or engage in research. Marketing preference and business asset claims are not valid exceptions, nor is technical inconvenience.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A company operating in multiple EU countries experiences a data breach affecting individuals in France, Germany, and Spain. Under GDPR, to which supervisory authority should the company report the breach?',
 '["All three supervisory authorities simultaneously", "The supervisory authority in the country where the breach originated", "The lead supervisory authority where the company''s main establishment is located", "The European Data Protection Board directly"]'::jsonb,
 2,
 'Under the GDPR one-stop-shop mechanism, a company with establishments in multiple member states reports to its lead supervisory authority, determined by the location of its main establishment (central administration or the establishment where decisions about processing are made). The lead authority then cooperates with concerned authorities in other affected countries.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A company collects extensive personal data from customers but only uses a small fraction for its stated purpose. Under GDPR, which principle is the company most likely violating?',
 '["Integrity and confidentiality", "Purpose limitation", "Data minimization", "Lawfulness"]'::jsonb,
 2,
 'The data minimization principle (Article 5(1)(c)) requires that personal data be adequate, relevant, and limited to what is necessary in relation to the purposes for which it is processed. Collecting more data than needed for the stated purpose violates this principle. Companies should only collect the minimum personal data required to fulfill the processing purpose.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under GDPR, a data subject exercises their right to erasure ("right to be forgotten"). In which of the following situations can the controller refuse this request?',
 '["The data subject no longer uses the controller''s services", "The controller has invested significant resources in collecting the data", "The processing is necessary for compliance with a legal obligation under EU or member state law", "The data was collected more than five years ago"]'::jsonb,
 2,
 'Article 17 provides the right to erasure but includes exceptions. A controller may refuse when processing is necessary for compliance with a legal obligation, exercise of freedom of expression, public health purposes, archiving in the public interest, or establishment of legal claims. Investment in data collection and age of data are not valid grounds for refusal.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A marketing technology company profiles website visitors using cookies and tracks their browsing behavior across multiple websites to serve targeted advertisements. Under the GDPR, which lawful basis is most commonly relied upon for this type of processing?',
 '["Legitimate interests of the controller without further action needed", "Performance of a contract with the data subject", "Consent obtained through a compliant cookie consent mechanism", "Vital interests of the data subject"]'::jsonb,
 2,
 'Cross-site tracking for targeted advertising typically requires consent under the GDPR and the ePrivacy Directive. The European Data Protection Board has clarified that legitimate interests alone generally cannot justify online behavioral tracking across websites. A compliant cookie consent mechanism that provides clear information and obtains affirmative consent is the appropriate lawful basis.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under HIPAA, a covered entity must conduct a risk analysis as part of its security management process. Which of the following best describes the purpose of this requirement?',
 '["To calculate the financial cost of potential data breaches for insurance purposes", "To determine which employees should have access to all patient records", "To establish pricing for the covered entity''s services", "To identify and assess potential risks and vulnerabilities to the confidentiality, integrity, and availability of ePHI"]'::jsonb,
 3,
 'The HIPAA Security Rule requires covered entities to conduct a thorough assessment of potential risks and vulnerabilities to the confidentiality, integrity, and availability of electronic protected health information (ePHI). The risk analysis is the foundation of the security management process and informs the selection of appropriate security measures and safeguards.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A data processing agreement between a controller and processor under GDPR Article 28 must include which of the following provisions?',
 '["Instructions from the controller on how the processor shall process personal data", "A clause transferring all liability for data breaches to the processor", "A requirement that the processor independently determine retention periods", "Authorization for the processor to use the data for its own marketing"]'::jsonb,
 0,
 'Article 28 of the GDPR requires a written contract that sets out the subject matter, duration, nature, and purpose of processing, the type of personal data and categories of data subjects, and the obligations and rights of the controller. The processor must process data only on documented instructions from the controller and cannot use the data for its own purposes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A social media platform automatically enrolls all new users into a feature that shares their location data with advertisers. Users must navigate through multiple settings screens to disable this sharing. Under GDPR, which principle does this practice most likely violate?',
 '["Accuracy", "Storage limitation", "Data protection by default", "Accountability"]'::jsonb,
 2,
 'Article 25 of the GDPR requires data protection by default, meaning that by default only personal data necessary for each specific purpose is processed. Settings should be configured to maximum privacy by default, and users should not be required to take affirmative action to protect their privacy. Opt-out models for data sharing violate this principle.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A financial services company transfers customer data to a third-party analytics firm in a country without an EU adequacy decision. The company relies on standard contractual clauses. Following the Schrems II ruling, what additional step must the company take?',
 '["No additional steps are required as SCCs are always sufficient", "Conduct a transfer impact assessment to evaluate the destination country''s legal framework", "Obtain individual consent from every affected data subject", "Cease all data transfers until an adequacy decision is issued"]'::jsonb,
 1,
 'Following the Schrems II decision by the Court of Justice of the EU, organizations relying on SCCs must conduct a transfer impact assessment to evaluate whether the third country''s legal framework provides essentially equivalent protection. If the assessment reveals that the laws undermine the effectiveness of the SCCs, supplementary measures must be implemented or transfers suspended.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under the CCPA/CPRA, which of the following businesses is subject to the law''s requirements?',
 '["A California sole proprietor with annual revenue of $15,000 that does not buy or sell personal information", "A for-profit entity doing business in California that annually buys, sells, or shares the personal information of 100,000 or more consumers", "A nonprofit organization that processes personal information of California residents", "A government agency that collects personal information for public safety purposes"]'::jsonb,
 1,
 'The CCPA/CPRA applies to for-profit entities doing business in California that meet one of several thresholds: annual gross revenue over $25 million, annually buying/selling/sharing personal information of 100,000 or more consumers or households, or deriving 50% or more of revenue from selling or sharing personal information. Nonprofits and government agencies are excluded.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'An organization is conducting a privacy impact assessment (PIA) for a new employee monitoring system. Which of the following should be a primary focus of the assessment?',
 '["Evaluating the return on investment of the monitoring technology", "Identifying privacy risks and determining whether the processing is proportionate to the legitimate aim", "Calculating the total cost of ownership for the monitoring system", "Determining the vendor''s market share in the monitoring software industry"]'::jsonb,
 1,
 'A privacy impact assessment evaluates how a project or system collects, uses, shares, and maintains personal information. Its primary focus is identifying privacy risks, assessing proportionality of the processing relative to its purpose, evaluating compliance with applicable regulations, and determining appropriate measures to mitigate identified risks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under GDPR Article 17, a data subject requests erasure of personal data that the controller has made public online. What additional obligation does the controller have beyond deleting its own copy?',
 '["No additional obligation exists once the controller deletes its own copy", "The controller must take reasonable steps to inform other controllers processing the data that erasure has been requested", "The controller must pay compensation to the data subject for the public disclosure", "The controller must obtain a court order to remove the data from all third-party sites"]'::jsonb,
 1,
 'When a controller has made personal data public and the data subject requests erasure, Article 17(2) requires the controller to take reasonable steps, considering available technology and cost, to inform other controllers processing the data that the data subject has requested erasure of any links to, copies of, or replications of the personal data.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A health insurance company wants to use de-identified patient data for research purposes. Under HIPAA, which method can be used to de-identify protected health information?',
 '["Removing only the patient''s name from the records", "Applying the Safe Harbor method by removing all 18 specified identifiers", "Encrypting the data while retaining all identifiers in the encryption key", "Obtaining verbal consent from each patient"]'::jsonb,
 1,
 'HIPAA provides two methods for de-identification: the Safe Harbor method (removing 18 specified identifiers including names, dates, geographic data, phone numbers, Social Security numbers, and others) and the Expert Determination method (having a qualified expert determine that re-identification risk is very small). Simply removing names alone is insufficient for de-identification.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'A company uses a consent management platform for its website visitors. Under GDPR, which of the following represents a valid approach to obtaining cookie consent?',
 '["Displaying a banner that states ''By continuing to browse, you consent to cookies''", "Pre-checking all cookie categories and requiring users to uncheck those they reject", "Providing granular options for different cookie categories with none pre-selected and an accept button", "Placing a consent notice in the website''s terms of service document"]'::jsonb,
 2,
 'Valid GDPR consent requires a clear affirmative action, must be freely given, and must be granular (allowing separate consent for different purposes). Pre-checked boxes, implied consent through browsing, and bundled consent within terms of service do not meet these requirements. A compliant mechanism provides granular options with no pre-selections.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'Privacy Requirements and Data Protection',
 'Under GDPR, the accountability principle requires the data controller to do which of the following?',
 '["Process personal data only when directed by a supervisory authority", "Transfer all data protection responsibilities to a data protection officer", "Obtain approval from the European Data Protection Board before any processing activity", "Demonstrate compliance with all GDPR principles through appropriate records and measures"]'::jsonb,
 3,
 'The accountability principle (Article 5(2)) requires controllers not only to comply with GDPR principles but also to be able to demonstrate that compliance. This includes maintaining records of processing activities, conducting DPIAs where required, implementing data protection policies, and adopting appropriate technical and organizational measures.',
 'medium');

-- =============================================================================
-- Topic 2: SOC Engagements (32 questions)
-- Difficulty: 10 easy, 16 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A SOC 1 engagement is primarily designed to address which of the following?',
 '["Controls at a service organization relevant to user entities'' internal control over financial reporting", "The security and availability of a service organization''s system", "General IT controls over network infrastructure", "Compliance with industry-specific privacy regulations"]'::jsonb,
 0,
 'A SOC 1 engagement (performed under SSAE 18 / AT-C 320) focuses on controls at a service organization that are relevant to user entities'' internal control over financial reporting (ICFR). It is designed to provide user entities and their auditors with information about the service organization''s controls that may affect the user entity''s financial statements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'Which professional standard governs SOC 1 engagements performed by a service auditor?',
 '["SSAE 18 (AT-C Section 320)", "SSAE 18 (AT-C Section 205)", "AU-C Section 315", "SAS No. 145"]'::jsonb,
 0,
 'SOC 1 engagements are performed under SSAE 18, specifically AT-C Section 320, Reporting on an Examination of Controls at a Service Organization Relevant to User Entities'' Internal Control Over Financial Reporting. AT-C 205 covers attestation standards generally, while AU-C 315 and SAS 145 relate to audit engagements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A SOC 2 engagement evaluates a service organization''s controls based on which of the following?',
 '["Generally accepted accounting principles", "The COSO internal control framework exclusively", "The Trust Services Criteria established by the AICPA", "The COBIT 2019 governance framework"]'::jsonb,
 2,
 'SOC 2 engagements evaluate a service organization''s controls relevant to security, availability, processing integrity, confidentiality, and privacy based on the Trust Services Criteria (TSC) established by the AICPA. While the TSC references COSO concepts, the criteria are specific to the AICPA''s Trust Services framework.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'Which of the following best describes the distribution restriction for a SOC 2 report?',
 '["It is a general-use report available to anyone", "It may only be viewed by the service organization''s management", "It is filed with the SEC and available to the public", "It is restricted to management of the service organization, user entities, and their auditors"]'::jsonb,
 3,
 'A SOC 2 report is a restricted-use report intended for management of the service organization, user entities, business partners, and prospective user entities who have sufficient knowledge of the system. Unlike a SOC 3 report, it is not designed for general public distribution.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'How does a SOC 3 report differ from a SOC 2 report?',
 '["A SOC 3 report is a general-use report that can be freely distributed and does not contain detailed test results", "A SOC 3 report contains more detailed testing information than a SOC 2 report", "A SOC 3 report evaluates controls relevant to ICFR while a SOC 2 does not", "A SOC 3 report can only be issued for Type II engagements"]'::jsonb,
 0,
 'A SOC 3 report is a general-use report that contains the service auditor''s opinion but does not include the detailed description of tests performed and results. It is suitable for a broad audience and can be used as a marketing tool, such as displaying a SOC 3 seal on a website. A SOC 2 report, by contrast, includes detailed test descriptions and is restricted-use.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'In a SOC Type I engagement, the service auditor evaluates which of the following?',
 '["The operating effectiveness of controls over a specified period", "Both the design and operating effectiveness of controls over a period", "Only the financial statements of the service organization", "The suitability of the design of controls at a specified point in time"]'::jsonb,
 3,
 'A SOC Type I engagement evaluates the suitability of the design of controls at a specific point in time (as of a specified date). It does not test the operating effectiveness of those controls over a period. A Type II engagement evaluates both the design suitability and operating effectiveness over a minimum six-month period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A user entity''s auditor is evaluating whether the controls at a payroll processing service organization operated effectively throughout the audit period. Which type of SOC report would provide the most relevant information?',
 '["SOC 1 Type I report", "SOC 2 Type I report", "SOC 3 report", "SOC 1 Type II report"]'::jsonb,
 3,
 'A SOC 1 Type II report evaluates both the design and operating effectiveness of controls over a period of time (typically six to twelve months). Since the user entity''s auditor needs assurance about controls relevant to ICFR operating throughout the audit period, a Type II report is most appropriate. A Type I report only addresses design at a point in time.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'During the planning phase of a SOC engagement, the service auditor must determine the scope of the engagement. Which of the following is a key consideration in scoping?',
 '["The boundaries of the system, including infrastructure, software, people, procedures, and data", "The number of employees at the service organization", "The service organization''s annual revenue", "The geographic location of the service organization''s headquarters"]'::jsonb,
 0,
 'Scoping a SOC engagement requires defining the boundaries of the system being examined, which includes the infrastructure, software, people, procedures, and data that support the services provided. The system description must clearly delineate what is included in and excluded from the scope. Revenue and employee count are not primary scoping factors.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'In a SOC 1 engagement, management of the service organization is responsible for providing which of the following?',
 '["The service auditor''s opinion on the effectiveness of controls", "The user entity''s assessment of internal controls", "A written assertion about the fairness of the system description and the design or operating effectiveness of controls", "The complementary user entity controls that user entities must implement"]'::jsonb,
 2,
 'Management of the service organization provides a written assertion that accompanies the system description. In a Type I, management asserts that the description fairly presents the system and that controls were suitably designed. In a Type II, management additionally asserts that controls operated effectively throughout the period. The service auditor provides the opinion, not management.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A service organization uses a subservice organization to host its data center operations. When preparing for a SOC engagement, which of the following approaches can be used to address the subservice organization?',
 '["Either the inclusive method or the carve-out method may be used", "The service organization must always include the subservice organization''s controls in its report", "The subservice organization must obtain its own separate SOC report before the service organization''s engagement", "The service auditor must directly test the subservice organization''s controls in all cases"]'::jsonb,
 0,
 'When a service organization uses a subservice organization, two methods are available: the inclusive method (the subservice organization''s controls are included in the scope and tested) or the carve-out method (the subservice organization''s controls are excluded from the scope but identified in the system description). The choice depends on the engagement circumstances.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'Which of the following best describes the service auditor''s responsibility in a SOC engagement?',
 '["To design and implement controls at the service organization", "To guarantee that no control deficiencies exist at the service organization", "To prepare the system description on behalf of management", "To express an opinion on the fairness of the system description and the suitability of design and/or operating effectiveness of controls"]'::jsonb,
 3,
 'The service auditor''s responsibility is to express an opinion on whether the system description is fairly presented, controls are suitably designed, and (for Type II) controls operated effectively during the specified period. The auditor does not design controls, guarantee their effectiveness, or prepare the system description, which is management''s responsibility.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A cloud computing provider offers infrastructure-as-a-service to hundreds of clients. The provider wants to demonstrate the security and availability of its platform to current and prospective customers. Which SOC engagement type is most appropriate?',
 '["SOC 1 Type I", "SOC 1 Type II", "SOC 2 Type II", "SOC for Cybersecurity"]'::jsonb,
 2,
 'A SOC 2 Type II engagement evaluates controls related to the Trust Services Criteria (security, availability, processing integrity, confidentiality, and privacy) and tests their operating effectiveness over a period. For a cloud provider demonstrating security and availability to customers, SOC 2 Type II is most appropriate. SOC 1 focuses on ICFR, not security and availability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'In planning a SOC 2 engagement, the service organization selects which Trust Services Criteria categories will be included in the scope. Which category is always required?',
 '["Availability", "Processing integrity", "Security (common criteria)", "Privacy"]'::jsonb,
 2,
 'The security category (common criteria) is mandatory in every SOC 2 engagement. The other categories — availability, processing integrity, confidentiality, and privacy — are optional and selected based on the service organization''s commitments and the needs of user entities. Security serves as the foundation for the Trust Services framework.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A service organization is undergoing its first SOC engagement and has only recently implemented its control environment. The organization wants to demonstrate that its controls are properly designed. Which engagement type is most appropriate for this situation?',
 '["SOC 1 Type II", "SOC 2 Type II", "SOC Type I (either SOC 1 or SOC 2)", "SOC 3"]'::jsonb,
 2,
 'A Type I engagement evaluates the design of controls at a point in time, which is appropriate for a service organization that has recently implemented controls and may not have a sufficient operating history for a Type II engagement. Type II requires controls to have been operating for a period (typically at least six months). The organization can progress to Type II after establishing an operating track record.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'During a SOC 1 Type II engagement, the service auditor discovers that a key automated control failed to operate for two weeks during the examination period due to a software update. How should the auditor address this finding?',
 '["Ignore the exception if management corrected the issue before the period end", "Withdraw from the engagement because the control failure invalidates the entire report", "Report the exception in the description of tests and results and evaluate its impact on the opinion", "Issue a qualified opinion automatically without further evaluation"]'::jsonb,
 2,
 'When the service auditor identifies a control deviation or exception, it must be reported in the description of tests performed and results thereof. The auditor evaluates the nature, cause, and extent of the deviation and its potential impact on user entities'' ICFR. The deviation does not automatically require withdrawal or a qualified opinion but must be assessed in context.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A financial services company is selecting a third-party claims processing vendor. The company''s auditor has requested a report addressing the vendor''s controls relevant to the company''s financial reporting. Which SOC report should the vendor provide?',
 '["SOC 1 report", "SOC 2 report", "SOC 3 report", "SOC for Supply Chain report"]'::jsonb,
 0,
 'When a user entity''s auditor needs information about controls at a service organization that are relevant to the user entity''s internal control over financial reporting, a SOC 1 report is appropriate. Claims processing directly affects financial statement amounts, making ICFR-relevant controls the primary concern. SOC 2 focuses on Trust Services Criteria rather than ICFR.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'Under SSAE 18, a user entity is defined as which of the following?',
 '["The entity that performs the SOC examination", "An entity that uses the services of the service organization and whose financial reporting may be affected", "The regulatory body that oversees the service organization", "The entity that develops the Trust Services Criteria"]'::jsonb,
 1,
 'A user entity is an entity that uses the services provided by the service organization. In a SOC 1 context, the user entity''s internal control over financial reporting may be affected by the controls at the service organization. User entities and their auditors are primary intended users of SOC 1 reports.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A service organization''s management provides a system description as part of a SOC engagement. Which of the following must be included in this description?',
 '["The service organization''s complete financial statements", "The user entity''s internal control policies", "The types of services provided, the components of the system used to provide those services, and the boundaries of the system", "The service auditor''s testing methodology"]'::jsonb,
 2,
 'The system description must include the types of services provided, the principal service commitments and system requirements, the components of the system (infrastructure, software, people, procedures, and data), and the boundaries of the system. It must clearly identify what is in scope and what is excluded, including any subservice organizations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A SaaS company wants to publicly display a trust mark on its website demonstrating that its controls have been independently evaluated. Which SOC report supports this use case?',
 '["SOC 1 Type I", "SOC 1 Type II", "SOC 2 Type II", "SOC 3"]'::jsonb,
 3,
 'A SOC 3 report is a general-use report that provides a summary-level opinion without detailed test results. Because it is designed for general distribution, a service organization can display a SOC 3 seal or trust mark on its website. SOC 1 and SOC 2 reports are restricted-use and should not be publicly distributed.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'In a SOC 2 Type II engagement covering security and availability, the examination period is January 1 through December 31. The service auditor issues the report on March 15 of the following year. What risk does this timing gap create for user entities?',
 '["No risk because the opinion covers the entire calendar year", "The report is invalid because it was issued more than 30 days after the period end", "A gap between the end of the examination period and the report date during which control changes may have occurred", "User entities must obtain a bridge letter to cover the gap"]'::jsonb,
 2,
 'The gap between the end of the examination period and the report issuance date creates a risk that controls may have changed or new issues may have arisen during that interval. User entities should consider whether any significant changes occurred after the period end. While bridge letters may be requested, they are not mandatory.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A service organization uses the carve-out method for a subservice organization in its SOC 2 report. Which of the following is required in the system description?',
 '["Detailed testing results of the subservice organization''s controls", "A separate opinion on the subservice organization''s controls", "The subservice organization''s financial statements", "Identification of the subservice organization and the nature of services provided, along with the controls expected to be in place at the subservice organization"]'::jsonb,
 3,
 'Under the carve-out method, the system description must identify the subservice organization, describe the nature of services it provides, and disclose the types of controls the service organization expects the subservice organization to have in place. The service auditor does not test the subservice organization''s controls under the carve-out method but may reference the subservice organization''s own SOC report.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A user entity auditor is reviewing a SOC 1 Type II report to assess the impact on the user entity''s financial statement audit. The auditor should pay particular attention to which section of the report?',
 '["The description of tests of controls and the results of those tests", "The service organization''s marketing materials included as appendices", "The service auditor''s engagement letter", "The service organization''s employee handbook"]'::jsonb,
 0,
 'The description of tests performed and results thereof is the most critical section for a user entity auditor. It details the specific controls tested, the testing procedures applied, and the results, including any exceptions or deviations identified. This information helps the user entity auditor assess the reliability of the service organization''s controls as they relate to the user entity''s financial reporting.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'During a SOC 2 engagement, the service auditor identifies a control that is described in the system description but has never been implemented. How should the auditor address this?',
 '["Report it as an operating effectiveness exception only", "Ignore it if other compensating controls exist", "Recommend that management implement the control after the report is issued", "Report it as a design deficiency because the control does not exist to achieve the related criteria"]'::jsonb,
 3,
 'A control described in the system description that has never been implemented represents a design deficiency. The system description states the control exists, but it does not. This affects both the fairness of the system description and the suitability of the design of controls. The auditor must report this finding and evaluate its impact on the opinion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A service organization provides payroll processing, benefits administration, and tax filing services. For a SOC 1 engagement, which services would most likely be in scope?',
 '["Only payroll processing because it has the highest transaction volume", "Only tax filing because it involves regulatory compliance", "All services that could affect user entities'' internal control over financial reporting", "Only benefits administration because it involves employee data"]'::jsonb,
 2,
 'The scope of a SOC 1 engagement includes all services that are relevant to user entities'' internal control over financial reporting. Payroll processing, benefits administration, and tax filing all generate transactions and data that flow into user entities'' financial statements. The scope should encompass all services that could affect ICFR, not just the highest-volume service.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'In a SOC engagement, the inclusive method for addressing a subservice organization requires which of the following?',
 '["The subservice organization''s controls are included in the scope and tested by the service auditor", "The subservice organization''s controls are excluded from the scope and identified in the system description", "The subservice organization must obtain its own SOC report before the engagement begins", "The service auditor issues a separate opinion on the subservice organization"]'::jsonb,
 0,
 'Under the inclusive method, the subservice organization''s relevant controls are included within the scope of the service organization''s SOC engagement. The service auditor tests these controls as part of the examination and includes them in the system description, control objectives/criteria, and testing results. This provides user entities with a more comprehensive view of the control environment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A SOC 1 Type II report covers the period January 1 through June 30. A user entity''s fiscal year ends December 31. What should the user entity''s auditor consider regarding the gap between the report period and the fiscal year end?',
 '["The SOC 1 report is unusable because it does not cover the full fiscal year", "The auditor can rely on the SOC 1 report without additional procedures because it covers part of the year", "The auditor must request a new SOC 1 report covering July 1 through December 31", "The auditor should consider whether controls have changed since the report period and may need to perform additional procedures to cover the gap"]'::jsonb,
 3,
 'When a SOC report does not cover the user entity''s full reporting period, the user entity''s auditor must consider whether controls changed after the report period. The auditor may need to perform additional procedures such as inquiring about changes, reviewing subsequent SOC reports, or requesting a bridge letter to address the gap period.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'Which of the following is a key difference between SOC 1 and SOC 2 engagements?',
 '["SOC 1 uses Trust Services Criteria while SOC 2 uses control objectives", "SOC 1 is always Type II while SOC 2 can be Type I or Type II", "SOC 1 addresses controls relevant to ICFR while SOC 2 addresses controls relevant to the Trust Services Criteria", "SOC 1 reports are general-use while SOC 2 reports are restricted-use"]'::jsonb,
 2,
 'The fundamental difference is the focus of the engagement. SOC 1 examines controls relevant to user entities'' internal control over financial reporting and uses control objectives defined by the service organization. SOC 2 evaluates controls based on the AICPA''s Trust Services Criteria (security, availability, processing integrity, confidentiality, privacy). Both can be Type I or Type II.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'Before beginning a SOC engagement, the service auditor must obtain an understanding of the service organization''s system. Which of the following procedures would the auditor most likely perform?',
 '["Review the service organization''s stock price history", "Audit the service organization''s financial statements", "Tour the facility, interview management, and review documentation of the system and controls", "Survey the service organization''s customers about their satisfaction"]'::jsonb,
 2,
 'To understand the service organization''s system, the service auditor performs procedures including touring facilities, interviewing key personnel, reviewing system documentation and policies, examining the IT infrastructure, and understanding the flow of transactions. This understanding is essential for evaluating the system description and planning the testing of controls.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A service organization has undergone significant system changes during the SOC 2 examination period, including migrating to a new cloud platform. How should the service auditor address this in the engagement?',
 '["Evaluate controls both before and after the migration and describe the changes in the system description and testing results", "Ignore the changes if the new system meets the same Trust Services Criteria", "Limit the examination period to only the time after the migration was completed", "Issue two separate SOC 2 reports — one for the old system and one for the new system"]'::jsonb,
 0,
 'When significant system changes occur during the examination period, the service auditor must evaluate controls in both environments. The system description should clearly describe the changes, and the testing results should address controls in both the pre-migration and post-migration periods. This provides user entities with a complete picture of the control environment throughout the period.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'In a SOC 1 engagement, control objectives are typically established by which party?',
 '["The service auditor unilaterally", "The user entity''s external auditor", "The AICPA through mandatory standards", "Management of the service organization, often in consultation with user entities"]'::jsonb,
 3,
 'In a SOC 1 engagement, control objectives are established by management of the service organization. These objectives describe the goals that the service organization''s controls are designed to achieve in relation to user entities'' ICFR. Management often considers the needs of user entities and their auditors when establishing these objectives.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A startup technology company wants to attract enterprise clients by demonstrating its commitment to data security. The company has limited resources and has never undergone a SOC examination. What is the recommended first step?',
 '["Immediately pursue a SOC 2 Type II engagement covering a 12-month period", "Begin with a readiness assessment to identify control gaps before committing to a formal SOC engagement", "Skip SOC entirely and obtain an ISO 27001 certification instead", "Perform a self-assessment and issue its own SOC report"]'::jsonb,
 1,
 'A readiness assessment helps organizations identify gaps in their control environment before undergoing a formal SOC examination. This allows the organization to remediate deficiencies, implement missing controls, and prepare documentation. Starting directly with a Type II engagement without adequate preparation increases the risk of significant exceptions and an unfavorable opinion.',
 'medium');

-- =============================================================================
-- Topic 3: SOC Reporting and Trust Services Criteria (30 questions)
-- Difficulty: 9 easy, 15 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'The AICPA Trust Services Criteria are organized into five categories. Which of the following is NOT one of those categories?',
 '["Security", "Availability", "Profitability", "Privacy"]'::jsonb,
 2,
 'The five Trust Services Criteria categories are security, availability, processing integrity, confidentiality, and privacy. Profitability is not a Trust Services category. Security is the foundational category and is required in all SOC 2 engagements, while the other four are optional based on the service organization''s commitments.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'In the Trust Services framework, which category addresses whether the system processes transactions in a complete, valid, accurate, timely, and authorized manner?',
 '["Security", "Availability", "Processing integrity", "Confidentiality"]'::jsonb,
 2,
 'Processing integrity addresses whether the system processes data completely, validly, accurately, timely, and with proper authorization. This category is important for service organizations that process transactions on behalf of user entities. Security protects against unauthorized access, availability addresses system uptime, and confidentiality protects designated information.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'Which Trust Services Criteria category is concerned with protecting information designated as confidential, such as trade secrets and intellectual property?',
 '["Privacy", "Confidentiality", "Security", "Processing integrity"]'::jsonb,
 1,
 'The confidentiality category addresses the protection of information designated as confidential per the entity''s commitments and agreements. This includes trade secrets, intellectual property, business plans, and other sensitive business information. Privacy specifically addresses personal information, while security addresses protection from unauthorized access broadly.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'The common criteria (CC1 through CC9) in the Trust Services framework map closely to which of the following frameworks?',
 '["ISO 27001", "NIST Cybersecurity Framework", "COSO Internal Control — Integrated Framework (2013)", "COBIT 2019"]'::jsonb,
 2,
 'The common criteria in the Trust Services framework are organized to map to the 17 principles of the COSO Internal Control — Integrated Framework (2013). CC1 addresses control environment, CC2 addresses communication and information, CC3 addresses risk assessment, CC4-CC5 address monitoring and control activities, and CC6-CC9 address logical and physical access, system operations, and change management.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'In the Trust Services framework, CC6 (Logical and Physical Access Controls) addresses which of the following?',
 '["How the entity communicates internally about control responsibilities", "How the entity identifies and assesses risks that could affect the system", "How the entity selects and develops monitoring activities", "How the entity restricts logical and physical access to the system, manages credentials, and removes access when no longer needed"]'::jsonb,
 3,
 'CC6 addresses logical and physical access controls, including how the entity restricts access, manages user credentials, prevents unauthorized access, and removes access rights when they are no longer appropriate. It encompasses user provisioning, authentication mechanisms, access reviews, and physical security measures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'Which common criteria group in the Trust Services framework addresses the entity''s change management processes, including changes to infrastructure, data, software, and procedures?',
 '["CC6 — Logical and Physical Access Controls", "CC7 — System Operations", "CC8 — Change Management", "CC9 — Risk Mitigation"]'::jsonb,
 2,
 'CC8 addresses change management, including how the entity authorizes, designs, develops, configures, documents, tests, approves, and implements changes to infrastructure, data, software, and procedures. Effective change management ensures that changes do not introduce vulnerabilities or disrupt the system''s ability to meet its service commitments.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'A service organization includes the availability category in its SOC 2 engagement. Which of the following controls would be most relevant to this category?',
 '["Disaster recovery planning, redundant infrastructure, and uptime monitoring", "Encryption of data at rest and in transit", "Background checks for new employees", "Segregation of duties in the accounting department"]'::jsonb,
 0,
 'The availability category addresses whether the system is available for operation and use as committed or agreed. Controls relevant to availability include disaster recovery planning, business continuity procedures, redundant infrastructure, performance monitoring, capacity management, and incident response for system outages.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'In a SOC 2 report, the system description must include which of the following elements?',
 '["The service organization''s complete financial statements and tax returns", "The user entity''s internal audit reports", "The principal service commitments, system requirements, and components of the system", "The service auditor''s detailed testing methodology and sampling plan"]'::jsonb,
 2,
 'The system description in a SOC 2 report must include the principal service commitments and system requirements, the components of the system (infrastructure, software, people, procedures, and data), the boundaries of the system, and relevant aspects of the control environment. It provides the context for understanding the controls being evaluated.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'Complementary user entity controls (CUECs) in a SOC report refer to which of the following?',
 '["Controls that the service organization implements as backup measures", "Controls tested by the service auditor at the user entity''s location", "Controls that the subservice organization must implement", "Controls that user entities are expected to implement at their own organizations to achieve the related control objectives or criteria"]'::jsonb,
 3,
 'Complementary user entity controls (CUECs) are controls that the service organization''s system is designed to assume are in place at user entities. These controls complement the service organization''s controls and are necessary for the overall control objectives or criteria to be achieved. For example, user entities may need to manage their own user access within the service organization''s application.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'Complementary subservice organization controls (CSOCs) are identified in a SOC report when which method is used for addressing a subservice organization?',
 '["The inclusive method only", "The carve-out method", "Both the inclusive and carve-out methods equally", "Neither method — CSOCs are not disclosed in SOC reports"]'::jsonb,
 1,
 'Complementary subservice organization controls (CSOCs) are identified when the carve-out method is used. Since the subservice organization''s controls are excluded from the scope under the carve-out method, the system description identifies the controls that the subservice organization is expected to have in place. Under the inclusive method, the subservice organization''s controls are directly tested.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'The privacy category within the Trust Services Criteria addresses personal information through criteria aligned with which of the following frameworks?',
 '["The NIST Privacy Framework exclusively", "Generally Accepted Privacy Principles (GAPP) and applicable privacy regulations", "The HIPAA Privacy Rule exclusively", "The GDPR exclusively"]'::jsonb,
 1,
 'The privacy category in the Trust Services framework is based on criteria that align with the AICPA''s Generally Accepted Privacy Principles (GAPP) and consider applicable privacy laws and regulations. The criteria address notice, choice and consent, collection, use and retention, access, disclosure, quality, and monitoring and enforcement of privacy commitments.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'In the Trust Services framework, CC1 addresses the control environment. Which of the following is a point of focus within CC1?',
 '["The entity demonstrates a commitment to integrity and ethical values", "The entity''s disaster recovery testing schedule", "The entity''s network segmentation architecture", "The entity''s encryption key management procedures"]'::jsonb,
 0,
 'CC1 (Control Environment) includes points of focus related to the entity''s commitment to integrity and ethical values, the board''s oversight responsibility, organizational structure, commitment to competence, and accountability. These align with COSO Principle 1 through Principle 5 and establish the foundation for the overall control environment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'A service organization''s SOC 2 report includes supplemental criteria for the availability category. These supplemental criteria address which of the following?',
 '["Requirements unique to the security category", "General financial reporting requirements", "Additional criteria beyond the common criteria that are specific to the availability commitment", "Employee compensation and benefits policies"]'::jsonb,
 2,
 'Each optional Trust Services category (availability, processing integrity, confidentiality, and privacy) has supplemental criteria in addition to the common criteria. For availability, the supplemental criteria address specific controls related to system availability, such as maintaining system performance, managing capacity, implementing redundancy, and defining availability commitments.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'CC7 (System Operations) in the Trust Services framework addresses which of the following areas?',
 '["How the entity detects and responds to system anomalies, security incidents, and operational disruptions", "The entity''s hiring and termination practices", "The entity''s financial reporting and budgeting processes", "The entity''s marketing and sales strategies"]'::jsonb,
 0,
 'CC7 (System Operations) addresses how the entity manages system operations, detects anomalies and security events, and responds to incidents. It includes monitoring infrastructure, detecting unauthorized activities, implementing incident response procedures, and recovering from disruptions. This category ensures the system operates as intended and threats are identified and addressed.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'A user entity receives a SOC 2 Type II report from its cloud provider. The report includes exceptions in the testing of CC6 (Logical and Physical Access Controls). What should the user entity''s management do?',
 '["Ignore the exceptions because they are the service organization''s responsibility", "Evaluate whether the exceptions affect the user entity''s own risk assessment and determine if compensating controls or additional procedures are needed", "Immediately terminate the contract with the cloud provider", "File a complaint with the AICPA about the service organization"]'::jsonb,
 1,
 'User entity management should evaluate the nature and significance of reported exceptions to determine their impact on the user entity''s own risk profile and control environment. This may involve assessing whether CUECs or other compensating controls mitigate the risk, implementing additional monitoring, or discussing remediation plans with the service organization.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'Points of focus in the Trust Services Criteria serve which of the following purposes?',
 '["They are mandatory requirements that must be addressed by every service organization", "They replace the common criteria for organizations that choose not to adopt COSO", "They define the specific tests that the service auditor must perform", "They provide guidance on important characteristics of each criterion to help the entity design and evaluate controls"]'::jsonb,
 3,
 'Points of focus are characteristics that may be important to addressing a criterion. They provide guidance to help management design controls and help auditors evaluate whether controls address the criteria. Points of focus are not mandatory requirements — an entity may address a criterion without explicitly addressing every point of focus if the criterion is otherwise met.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'CC2 (Communication and Information) in the Trust Services framework requires the entity to do which of the following?',
 '["Encrypt all internal communications using end-to-end encryption", "Obtain and generate relevant quality information and communicate it internally and externally to support the functioning of internal control", "Publish all system information on its public website", "Restrict all communication to formal written channels only"]'::jsonb,
 1,
 'CC2 addresses the entity''s ability to obtain and generate quality information relevant to internal control and to communicate that information internally and externally. This includes communicating control responsibilities to personnel, providing information about the system to user entities, and establishing channels for reporting control issues.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'CC3 (Risk Assessment) in the Trust Services framework requires which of the following?',
 '["The entity identifies and assesses risks to the achievement of its objectives, including risks arising from fraud", "The entity quantifies all risks in monetary terms", "The entity eliminates all identified risks before issuing the SOC report", "The entity delegates risk assessment entirely to external consultants"]'::jsonb,
 0,
 'CC3 requires the entity to specify clear objectives, identify and assess risks to achieving those objectives (including fraud risks), and assess the potential for significant changes in the environment that could affect the system. Risk assessment is an ongoing process that informs the design and implementation of controls.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'A service organization includes the processing integrity category in its SOC 2 engagement. A supplemental criterion for processing integrity requires the entity to address which of the following?',
 '["The physical security of the data center facility", "The entity''s financial viability and going concern status", "The entity''s compliance with employment laws", "The completeness, accuracy, timeliness, and authorization of system processing"]'::jsonb,
 3,
 'Supplemental criteria for processing integrity address whether the system processes data in a complete, accurate, timely, and authorized manner. This includes input validation, processing controls, output reconciliation, and error handling. These criteria ensure that data processed by the system maintains its integrity from input through output.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'CC9 (Risk Mitigation) in the Trust Services framework addresses which of the following?',
 '["How the entity monitors and evaluates internal controls", "How the entity recruits and trains employees", "How the entity identifies, selects, and develops risk mitigation activities, including controls over vendor and business partner risks", "How the entity markets its services to potential user entities"]'::jsonb,
 2,
 'CC9 addresses how the entity identifies, selects, and develops activities to mitigate risks, including the use of insurance, vendor management programs, and business continuity activities. It also addresses the entity''s processes for managing risks arising from business relationships with vendors and business partners.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'A service organization''s SOC 2 report describes controls that require user entities to restrict access to their own employees who need to use the service organization''s application. These controls are classified as which of the following?',
 '["Service organization controls", "Subservice organization controls", "Regulatory compliance controls", "Complementary user entity controls (CUECs)"]'::jsonb,
 3,
 'Controls that user entities are expected to implement at their own organizations are classified as complementary user entity controls (CUECs). In this case, the user entity is responsible for restricting access to its own employees. CUECs are identified in the SOC report to inform user entities of their responsibilities in the overall control environment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'The security category in the Trust Services framework is addressed through which of the following?',
 '["Only supplemental criteria specific to security", "The common criteria (CC1-CC9) which collectively address security", "A single criterion that requires implementation of a firewall", "External security certifications from third-party vendors"]'::jsonb,
 1,
 'The security category is addressed through the common criteria (CC1 through CC9), which collectively establish the controls necessary to protect the system from unauthorized access, both logical and physical. Because security is the foundation of the Trust Services framework, it is the only mandatory category and is addressed entirely through the common criteria.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'A SOC 2 report for a data analytics company includes the confidentiality category. Which of the following controls would be most directly relevant to the supplemental confidentiality criteria?',
 '["Procedures for identifying, classifying, and protecting confidential information throughout its lifecycle", "Annual employee performance reviews", "The company''s office lease agreements", "The company''s marketing budget allocation"]'::jsonb,
 0,
 'The supplemental criteria for confidentiality address how the entity identifies confidential information, protects it from unauthorized access or disclosure, and manages its lifecycle from creation through disposal. This includes data classification, access restrictions, encryption, secure disposal, and contractual agreements with parties who access confidential information.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'CC4 and CC5 in the Trust Services framework relate to which COSO components?',
 '["Control environment and risk assessment", "Monitoring activities and control activities", "Information and communication only", "All five COSO components equally"]'::jsonb,
 1,
 'CC4 addresses monitoring activities (COSO Component 5), which includes ongoing and separate evaluations of internal control, and evaluating and communicating deficiencies. CC5 addresses control activities (COSO Component 3), which includes selecting and developing control activities, selecting and developing general controls over technology, and deploying controls through policies and procedures.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'A user entity''s auditor reviews a SOC 2 report and notes that the service organization has identified 15 complementary user entity controls. The user entity has not implemented 3 of these CUECs. What is the implication?',
 '["The SOC 2 report is invalid and cannot be relied upon", "The user entity may have unmitigated risks in areas where the missing CUECs were expected to address control gaps", "The service organization is responsible for the user entity''s failure to implement CUECs", "The service auditor must reissue the report with a qualified opinion"]'::jsonb,
 1,
 'When a user entity fails to implement CUECs identified in a SOC report, the overall control environment may have gaps. The service organization''s controls were designed with the assumption that user entities would implement these complementary controls. The user entity''s management and auditor should assess the risk created by the missing CUECs and determine if compensating controls exist.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'In the Trust Services framework, which category specifically addresses the collection, use, retention, disclosure, and disposal of personal information?',
 '["Confidentiality", "Security", "Privacy", "Processing integrity"]'::jsonb,
 2,
 'The privacy category addresses how the entity collects, uses, retains, discloses, and disposes of personal information in conformity with its privacy commitments and applicable regulations. While confidentiality addresses business-sensitive information broadly, privacy specifically focuses on personal information and the entity''s obligations to individuals whose data it processes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'A service organization is preparing its system description for a SOC 2 engagement. The system description must delineate the boundaries of the system. Which of the following is NOT typically included as a system boundary component?',
 '["Infrastructure such as servers, networks, and facilities", "Software applications and databases", "The service organization''s marketing strategy and competitive positioning", "People, procedures, and data within the system"]'::jsonb,
 2,
 'System boundaries in a SOC 2 report encompass the five components of the system: infrastructure, software, people, procedures, and data. Marketing strategy and competitive positioning are business considerations, not system components. The system description should clearly identify what is within the boundaries and what is outside the scope of the examination.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'A service organization''s SOC 2 Type II report reveals that three out of twenty tested access review controls had exceptions during the examination period. The service auditor determines these exceptions are isolated and do not represent a systemic failure. How should this be reported?',
 '["The exceptions should be omitted from the report since they are isolated", "The exceptions must be described in the tests and results section, and the auditor evaluates their impact on the overall opinion", "The auditor must issue an adverse opinion due to any exceptions", "The exceptions should only be communicated verbally to management"]'::jsonb,
 1,
 'All exceptions identified during testing must be described in the tests and results section of the SOC report, regardless of whether they are isolated or systemic. The service auditor evaluates the nature, cause, frequency, and significance of exceptions to determine their impact on the opinion. Isolated exceptions do not automatically result in a qualified or adverse opinion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'The Trust Services framework requires that the entity''s principal service commitments and system requirements be described in the system description. Principal service commitments refer to which of the following?',
 '["The entity''s financial obligations to its lenders", "The entity''s commitments to its employees through employment contracts", "The commitments the entity makes to user entities through service agreements, published policies, and other communications", "The entity''s commitments to regulatory agencies"]'::jsonb,
 2,
 'Principal service commitments are the declarations made by the entity to user entities about how the system will perform and be managed. These commitments are typically found in service level agreements, contracts, published policies, and other communications. System requirements are the specifications the system must meet to fulfill these commitments.',
 'hard');

-- =============================================================================
-- Topic 4: IT General Controls (28 questions)
-- Difficulty: 8 easy, 14 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'A new employee joins the finance department and needs access to the enterprise resource planning (ERP) system. Which of the following best describes the first step in the user provisioning lifecycle?',
 '["Submitting a formal access request that includes the employee''s role, required access level, and manager approval", "Granting the employee full administrative access to expedite onboarding", "Allowing the employee to create their own account with self-selected permissions", "Copying all access rights from another finance department employee without review"]'::jsonb,
 0,
 'The user provisioning lifecycle begins with a formal access request that documents the employee''s role, the specific access needed, and management approval. This ensures that access is granted based on the principle of least privilege and that proper authorization is obtained before any system access is provided. Copying access from another user risks perpetuating inappropriate permissions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization conducts quarterly access reviews of its critical financial applications. What is the primary purpose of these access reviews?',
 '["To identify employees who have not logged in recently so their accounts can be deleted", "To generate reports for the IT help desk about password reset frequency", "To verify that user access rights remain appropriate based on current job responsibilities and to identify and remediate inappropriate access", "To evaluate the performance of the IT security team"]'::jsonb,
 2,
 'Access reviews (also called access recertification) verify that user access rights are still appropriate for each user''s current role and responsibilities. The review identifies users who have changed roles, left the organization, or accumulated excessive privileges. Inappropriate access is remediated by removing or modifying permissions to maintain the principle of least privilege.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'A database administrator has unrestricted access to production databases containing sensitive financial data. Which control is most important for managing this type of privileged access?',
 '["Requiring the administrator to use a shared account so that all DBAs can provide backup coverage", "Allowing the administrator to self-approve access requests for efficiency", "Rotating the administrator to a different department every 30 days", "Implementing privileged access management (PAM) with session monitoring, just-in-time access, and audit logging"]'::jsonb,
 3,
 'Privileged access management (PAM) is essential for controlling and monitoring high-risk administrative accounts. PAM solutions provide just-in-time access provisioning, session recording, credential vaulting, and comprehensive audit trails. Shared accounts eliminate accountability, self-approval bypasses segregation of duties, and frequent rotation disrupts operations without addressing the access risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization''s password policy requires a minimum of 12 characters, complexity requirements, and expiration every 90 days. A security assessment recommends replacing mandatory password expiration with which of the following?',
 '["No password requirements at all", "Requiring password changes every 30 days instead", "Allowing single-character passwords for ease of use", "Monitoring for compromised credentials and requiring password changes only when compromise is detected"]'::jsonb,
 3,
 'Current security guidance from NIST (SP 800-63B) recommends against mandatory periodic password expiration because it often leads users to create predictable password variations. Instead, organizations should monitor for compromised credentials through breach databases and threat intelligence, requiring password changes only when evidence of compromise exists. This approach reduces user burden while maintaining security.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization implements single sign-on (SSO) to allow employees to authenticate once and access multiple applications. Which of the following is a primary security benefit of SSO?',
 '["It reduces the number of credentials users must manage, decreasing the risk of weak or reused passwords across applications", "It eliminates the need for any authentication controls", "It automatically encrypts all data transmitted between applications", "It removes the need for multi-factor authentication"]'::jsonb,
 0,
 'SSO reduces the number of separate credentials users must manage, which decreases the likelihood of weak passwords, password reuse, and credential fatigue. By centralizing authentication, organizations can enforce stronger authentication policies consistently across all connected applications. SSO does not eliminate the need for MFA; in fact, SSO should be combined with MFA for enhanced security.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'A software development team is preparing to deploy a new feature to the production environment. Which of the following program change control procedures should be performed before the deployment?',
 '["Deploy the change directly to production during business hours for immediate user feedback", "Allow the developer who wrote the code to approve and deploy their own changes", "Complete development, perform testing in a non-production environment, obtain formal approval, and document the change before migrating to production", "Skip testing if the change is considered minor"]'::jsonb,
 2,
 'Proper program change controls require a defined lifecycle: development, testing in a separate environment (not production), formal approval by appropriate personnel, documentation of the change, and controlled migration to production. This process ensures that changes are validated before impacting the production environment and that proper segregation of duties is maintained.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization requires that the person who develops a code change cannot be the same person who approves and deploys it to production. This control addresses which principle?',
 '["Data minimization", "Segregation of duties", "Defense in depth", "Least privilege"]'::jsonb,
 1,
 'Segregation of duties ensures that no single individual controls all phases of a critical process. In change management, separating the development, approval, and deployment roles reduces the risk of unauthorized or untested changes being introduced into the production environment. This control prevents a developer from making and deploying changes without independent review.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization uses a version control system for all application source code. Which of the following is a primary benefit of version control in the context of IT general controls?',
 '["It automatically fixes bugs in the code", "It provides a complete audit trail of code changes, enables rollback to previous versions, and supports code review processes", "It eliminates the need for software testing", "It prevents all unauthorized access to source code"]'::jsonb,
 1,
 'Version control systems maintain a complete history of all code changes, including who made each change and when. This provides an audit trail for compliance, enables rollback to previous versions if issues are discovered, supports collaborative code review through pull requests or merge requests, and helps enforce change management policies.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization''s IT operations team is responsible for managing batch job scheduling for its financial applications. Which of the following controls is most important for batch job scheduling?',
 '["Allowing any employee to submit and modify batch jobs without restrictions", "Implementing controls to ensure jobs run in the correct sequence, monitoring for failures, and establishing procedures for handling job exceptions", "Running all batch jobs manually to maintain personal oversight", "Scheduling all batch jobs to run simultaneously to maximize system utilization"]'::jsonb,
 1,
 'Batch job scheduling controls ensure that critical processing jobs run in the correct sequence, complete successfully, and produce expected results. Monitoring for job failures and having documented exception handling procedures are essential. Automated scheduling with proper controls is more reliable than manual processing and reduces the risk of human error.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization''s backup procedures include nightly incremental backups and weekly full backups of all critical systems. Which additional control is essential to ensure the effectiveness of backup procedures?',
 '["Storing all backup media in the same location as the production servers", "Performing regular backup restoration tests to verify that data can be successfully recovered", "Encrypting backup media only if it contains financial data", "Retaining backups for a maximum of 7 days to minimize storage costs"]'::jsonb,
 1,
 'Performing regular restoration tests is essential to verify that backup data is complete, intact, and can be successfully recovered when needed. Without testing, an organization may discover that backups are corrupt, incomplete, or incompatible with the current environment only when a recovery is actually needed. Backups should also be stored offsite or in a separate location from production.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization''s IT monitoring systems detect that CPU utilization on a critical database server has consistently exceeded 85% over the past two weeks. This situation should trigger which type of IT operational control?',
 '["Change management procedures to deploy a code fix", "Capacity management procedures to assess current and future resource needs", "Incident management procedures to restore service immediately", "Physical security procedures to protect the server"]'::jsonb,
 1,
 'Consistently high resource utilization is a capacity management concern. Capacity management involves monitoring current resource usage, forecasting future needs, and planning for upgrades or optimization before performance degradation affects service delivery. While not an immediate incident, sustained high utilization signals the need for proactive capacity planning.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization''s data center has controls including badge-access entry doors, security cameras, environmental monitoring, and visitor logs. These controls are collectively classified as which type of IT general control?',
 '["Logical access controls", "Program change controls", "Physical and environmental controls", "Computer operations controls"]'::jsonb,
 2,
 'Physical and environmental controls protect the physical infrastructure that supports information systems. Badge access restricts physical entry, cameras provide surveillance, environmental monitoring detects temperature and humidity issues, and visitor logs track who enters the facility. These controls complement logical access controls to provide comprehensive protection.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'During an IT audit, the auditor discovers that 15 user accounts belonging to former employees remain active in the organization''s ERP system, with the oldest termination dating back 8 months. Which IT general control has failed?',
 '["Program change management", "Backup and recovery procedures", "User de-provisioning and access removal procedures", "Physical security controls"]'::jsonb,
 2,
 'The failure to promptly disable or remove accounts of terminated employees represents a breakdown in user de-provisioning controls. Effective access management requires timely revocation of system access when employees leave the organization. Stale accounts from former employees create security risks including unauthorized access and potential fraud. Most organizations should revoke access on or before the employee''s last day.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization implements a formal software development lifecycle (SDLC) for all application changes. Which phase of the SDLC focuses on verifying that the developed solution meets the specified requirements?',
 '["Requirements gathering", "Design", "Testing and quality assurance", "Deployment"]'::jsonb,
 2,
 'The testing and quality assurance phase verifies that the developed solution meets the specified requirements through various testing methods including unit testing, integration testing, system testing, and user acceptance testing. This phase identifies defects before the code is deployed to production, reducing the risk of introducing errors into the live environment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization maintains separate environments for development, testing, and production. A developer needs to debug an issue that can only be reproduced with production data. Which control should be applied?',
 '["Allow the developer full access to the production environment for debugging", "Copy production data to the testing environment after applying data masking or anonymization to protect sensitive information", "Give the developer read-only access to the production database permanently", "Ask the developer to estimate the fix without seeing the actual data"]'::jsonb,
 1,
 'When production data is needed for debugging, the data should be copied to a lower environment after being masked or anonymized to protect sensitive information such as personal data, financial records, and credentials. Granting developers access to production data directly violates the principle of environment separation and exposes sensitive data unnecessarily.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization''s access control policy requires multi-factor authentication (MFA) for all remote access to corporate systems. Which of the following combinations correctly represents multi-factor authentication?',
 '["A password and a security question (both knowledge factors)", "A password (knowledge factor) and a one-time code from an authenticator app (possession factor)", "A username and a password (both knowledge factors)", "Two separate passwords for two different systems"]'::jsonb,
 1,
 'Multi-factor authentication requires at least two different types of authentication factors: something you know (password, PIN), something you have (token, authenticator app, smart card), or something you are (biometric). A password combined with an authenticator app code uses two different factor types. Two passwords or a password and security question both use only knowledge factors.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization implements emergency change procedures for critical system fixes that cannot wait for the normal change management process. Which control is most important for emergency changes?',
 '["Waiving all documentation and approval requirements permanently for emergency changes", "Requiring retrospective documentation, review, and approval within a defined timeframe after the emergency change is implemented", "Allowing any employee to make emergency changes without oversight", "Prohibiting all emergency changes regardless of business impact"]'::jsonb,
 1,
 'Emergency change procedures allow critical fixes to be implemented quickly while maintaining accountability. The key control is retrospective review — requiring that emergency changes be documented, reviewed, and approved after implementation within a defined timeframe. This ensures that the change is recorded, assessed for unintended consequences, and brought into compliance with normal change management standards.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An auditor is evaluating an organization''s logical access controls and discovers that the organization uses role-based access control (RBAC). Which of the following best describes RBAC?',
 '["Each user is individually assigned specific permissions to each system resource", "Access permissions are assigned to roles, and users are assigned to roles based on their job functions", "All users receive the same level of access to all systems", "Access is granted based solely on the time of day the user logs in"]'::jsonb,
 1,
 'Role-based access control (RBAC) assigns permissions to defined roles rather than to individual users. Users are then assigned to roles based on their job functions and responsibilities. This approach simplifies access management, supports the principle of least privilege, and makes access reviews more efficient because reviewers evaluate role assignments rather than individual permissions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'A financial institution discovers that a system administrator has been granting themselves elevated privileges without going through the formal access request process. This situation represents a failure in which IT general control area?',
 '["Backup and recovery", "Privileged access management and segregation of duties", "Physical security", "Capacity management"]'::jsonb,
 1,
 'Self-granting elevated privileges bypasses the segregation of duties required in access management. Privileged access management controls should prevent administrators from unilaterally granting themselves additional access. Controls include requiring separate approval for privilege escalation, monitoring privileged account activities, and implementing just-in-time access that requires approval for each session.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization''s change management policy requires that all changes be tested in a staging environment that mirrors the production configuration. What is the primary purpose of this requirement?',
 '["To provide developers with a playground for experimenting with new technologies", "To identify potential issues and confirm that changes function correctly before they impact the production environment and end users", "To increase the organization''s server count for audit purposes", "To give the QA team something to do between production releases"]'::jsonb,
 1,
 'A staging environment that mirrors production allows changes to be tested under conditions similar to the live system. This identifies compatibility issues, performance problems, and functional defects before changes reach production. Without staging-environment testing, defects may not surface until they affect live users and business operations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'During an access review, an auditor finds that a payroll clerk also has the ability to approve new vendor accounts in the accounts payable system. Which risk does this represent?',
 '["A change management risk", "A segregation of duties conflict that could enable fraudulent payments", "A physical security vulnerability", "A backup and recovery deficiency"]'::jsonb,
 1,
 'Having both payroll processing and vendor account approval capabilities creates a segregation of duties conflict. The payroll clerk could potentially create a fictitious vendor, approve the account, and route payments to that vendor. Incompatible access combinations should be identified during access reviews and remediated by removing one of the conflicting roles.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization experiences a complete failure of its primary data center due to a natural disaster. Which IT general control area is most directly tested by this event?',
 '["Program change management", "Logical access controls", "Business continuity and disaster recovery procedures", "User provisioning lifecycle"]'::jsonb,
 2,
 'A data center failure directly tests the organization''s business continuity and disaster recovery (BC/DR) procedures. Effective BC/DR controls include offsite backup storage, alternate processing facilities, documented recovery procedures, regular DR testing, and defined recovery time and recovery point objectives (RTO/RPO). These controls are part of computer operations within IT general controls.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization''s change advisory board (CAB) reviews all proposed changes to production systems before approval. Which of the following best describes the CAB''s role?',
 '["To develop and write the code for proposed changes", "To evaluate proposed changes for risk, impact, resource requirements, and scheduling before authorizing deployment", "To perform all testing of proposed changes", "To monitor production systems for performance issues"]'::jsonb,
 1,
 'A change advisory board (CAB) evaluates proposed changes to assess risk, potential impact on services, resource requirements, and appropriate scheduling. The CAB provides a multi-perspective review that includes stakeholders from various functions such as operations, security, and business units. The CAB authorizes changes but does not develop or test them.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization implements data loss prevention (DLP) controls that monitor and restrict the transfer of sensitive data through email, USB devices, and cloud storage. These controls primarily address which IT general control objective?',
 '["Program change management", "Logical access controls and data protection", "Batch job scheduling", "System capacity management"]'::jsonb,
 1,
 'Data loss prevention controls are a component of logical access controls and data protection. DLP monitors data in motion (email, web), data at rest (file servers, databases), and data in use (endpoints) to detect and prevent unauthorized transmission of sensitive information. These controls complement traditional access controls by focusing on the data itself rather than just system access.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization has implemented automated controls within its ERP system that prevent journal entries from being posted without a second-level approval. This is an example of which type of control?',
 '["A detective control that identifies errors after they occur", "A preventive application control that enforces segregation of duties within the system", "A physical control that restricts facility access", "A corrective control that fixes errors after detection"]'::jsonb,
 1,
 'An automated control that prevents journal entries from being posted without approval is a preventive application control. It enforces segregation of duties by requiring a second approver before transactions are processed. Preventive controls stop errors or irregularities before they occur, unlike detective controls that identify issues after the fact or corrective controls that remediate identified issues.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization''s IT security team discovers that several service accounts used by automated processes have passwords that have not been changed in over two years. What is the primary risk associated with this finding?',
 '["The automated processes will stop functioning due to expired passwords", "Stale service account credentials increase the risk of compromise, especially if the credentials were exposed in a prior breach", "The IT security team will face regulatory fines for password non-compliance", "The service accounts will automatically lock after a defined period"]'::jsonb,
 1,
 'Service accounts with unchanging passwords represent a significant security risk because if the credentials are compromised, the exposure window is indefinite. Organizations should manage service account credentials through automated rotation, privileged access management solutions, or managed service identities that eliminate static passwords entirely.',
 'hard');

-- =============================================================================
-- Topic 5: IT Audit Frameworks (28 questions)
-- Difficulty: 8 easy, 14 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'COBIT 2019 is a governance framework developed by which organization?',
 '["The American Institute of CPAs (AICPA)", "ISACA (formerly the Information Systems Audit and Control Association)", "The International Organization for Standardization (ISO)", "The National Institute of Standards and Technology (NIST)"]'::jsonb,
 1,
 'COBIT (Control Objectives for Information and Related Technologies) 2019 is developed and maintained by ISACA. It provides a comprehensive framework for the governance and management of enterprise information and technology. ISACA is a global professional association focused on IT governance, risk management, cybersecurity, and information systems auditing.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'COBIT 2019 distinguishes between governance objectives and management objectives. Which of the following best describes this distinction?',
 '["There is no distinction — governance and management are the same in COBIT 2019", "Governance ensures stakeholder needs are evaluated and direction is set, while management plans, builds, runs, and monitors activities to align with governance direction", "Governance handles day-to-day operations while management sets strategic direction", "Governance applies only to IT departments while management applies to all departments"]'::jsonb,
 1,
 'In COBIT 2019, governance involves evaluating stakeholder needs, setting direction through prioritization and decision-making, and monitoring performance against agreed-upon direction. Management involves planning, building, running, and monitoring activities aligned with the governance body''s direction. This distinction separates strategic oversight from operational execution.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'In COBIT 2019, the governance system is composed of several components. Which of the following is one of those components?',
 '["Source code repositories", "Processes, organizational structures, policies and procedures, information flows, culture and behavior, skills and competencies, and services/infrastructure/applications", "Only technology infrastructure", "Only human resources policies"]'::jsonb,
 1,
 'COBIT 2019 identifies seven components of a governance system: processes, organizational structures, principles/policies/frameworks, information, culture/ethics/behavior, people/skills/competencies, and services/infrastructure/applications. These components work together to create a holistic governance system that extends beyond just technology or processes alone.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'COBIT 2019 introduced the concept of design factors. What role do design factors play in the framework?',
 '["They define the minimum number of controls every organization must implement", "They influence the design of the governance system by helping organizations tailor COBIT to their specific context and priorities", "They specify the exact technology products an organization must purchase", "They determine the number of IT auditors an organization must employ"]'::jsonb,
 1,
 'Design factors in COBIT 2019 are factors that influence the design of an organization''s governance system. They include enterprise strategy, goals, risk profile, IT-related issues, threat landscape, compliance requirements, role of IT, sourcing model, IT implementation methods, technology adoption strategy, and enterprise size. These factors help organizations customize their COBIT implementation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'COBIT 2019 includes focus areas that address specific governance topics. Which of the following is an example of a COBIT 2019 focus area?',
 '["Revenue recognition under ASC 606", "Small and medium enterprise IT governance, cybersecurity, or cloud computing", "Financial statement audit procedures", "Employee compensation benchmarking"]'::jsonb,
 1,
 'COBIT 2019 includes focus areas that provide additional guidance for specific governance and management topics. Examples include small and medium enterprise governance, cybersecurity, cloud computing, DevOps, and digital transformation. Focus areas build on the core COBIT framework and provide targeted guidance for specific organizational needs or technology contexts.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'ITIL 4 is a framework for IT service management. What is the central concept of ITIL 4?',
 '["The software development lifecycle", "The service value system (SVS), which describes how organizational components work together to create value through IT services", "The financial management of IT departments", "The physical security of IT infrastructure"]'::jsonb,
 1,
 'ITIL 4''s central concept is the service value system (SVS), which describes how all the components and activities of an organization work together to facilitate value creation through IT-enabled services. The SVS includes the service value chain, practices, guiding principles, governance, and continual improvement. It provides a holistic approach to service management.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'ITIL 4 defines seven guiding principles. Which of the following is one of those principles?',
 '["Maximize complexity to demonstrate technical sophistication", "Start where you are — assess the current state before making changes", "Always build custom solutions rather than using existing tools", "Focus exclusively on technology without considering people or processes"]'::jsonb,
 1,
 'ITIL 4''s seven guiding principles are: focus on value, start where you are, progress iteratively with feedback, collaborate and promote visibility, think and work holistically, keep it simple and practical, and optimize and automate. "Start where you are" emphasizes assessing the current state to understand what can be reused and built upon rather than starting from scratch.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'In the context of IT risk assessment, which of the following steps comes first in the risk management process?',
 '["Risk treatment — implementing controls to mitigate risks", "Risk identification — cataloging potential threats and vulnerabilities that could affect IT systems", "Risk acceptance — formally accepting all identified risks", "Risk transfer — purchasing insurance for all IT assets"]'::jsonb,
 1,
 'The IT risk management process begins with risk identification, where the organization catalogs potential threats, vulnerabilities, and scenarios that could affect its IT systems and data. This is followed by risk analysis (assessing likelihood and impact), risk evaluation (prioritizing risks), and risk treatment (selecting and implementing appropriate responses such as mitigation, transfer, acceptance, or avoidance).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'During IT risk analysis, an organization evaluates both the likelihood of a risk event occurring and its potential impact. What is the typical output of this analysis?',
 '["A risk register that ranks risks by their combined likelihood and impact rating", "A financial budget for the IT department", "A list of all IT vendors and their contract terms", "A software architecture diagram"]'::jsonb,
 0,
 'IT risk analysis produces a risk assessment that combines the likelihood of each identified risk event with its potential impact to determine a risk rating or score. These assessments are typically documented in a risk register that ranks and prioritizes risks, enabling the organization to allocate resources to the most significant risks.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'An organization has identified a high-impact IT risk related to a potential data breach. After evaluating options, the organization decides to purchase cyber insurance. This risk response strategy is best classified as which of the following?',
 '["Risk avoidance", "Risk mitigation", "Risk transfer", "Risk acceptance"]'::jsonb,
 2,
 'Risk transfer involves shifting the financial impact of a risk to a third party, typically through insurance or contractual arrangements. Purchasing cyber insurance transfers the financial consequences of a data breach to the insurer. Risk avoidance eliminates the activity creating the risk, risk mitigation reduces likelihood or impact through controls, and risk acceptance acknowledges the risk without further action.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'In COBIT 2019, the process capability model is used to assess the maturity of governance and management processes. How many capability levels does this model define?',
 '["Three levels: basic, intermediate, advanced", "Five levels: 0 (Incomplete) through 4 (Predictable), plus Level 5 (Optimizing)", "Two levels: pass and fail", "Seven levels corresponding to the seven guiding principles"]'::jsonb,
 1,
 'The COBIT 2019 process capability model defines six levels (0 through 5): Level 0 — Incomplete, Level 1 — Performed, Level 2 — Managed, Level 3 — Established, Level 4 — Predictable, and Level 5 — Optimizing. Each level builds upon the previous level, and organizations use this model to assess their current capability and plan improvements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'An organization wants to evaluate how well its IT governance practices align with its business objectives. Which framework-based tool would be most appropriate for this assessment?',
 '["An IT balanced scorecard that measures IT performance across multiple perspectives aligned with strategic goals", "A chart of accounts for the general ledger", "An employee satisfaction survey", "A physical inventory of IT hardware"]'::jsonb,
 0,
 'An IT balanced scorecard adapts the traditional balanced scorecard concept to IT governance by measuring performance across multiple perspectives, typically including business contribution, user orientation, operational excellence, and future orientation. It links IT metrics to business objectives, providing a balanced view of IT performance beyond just financial or operational measures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'ITIL 4 organizes IT management activities into practices rather than the processes used in earlier versions. Which of the following is an example of an ITIL 4 practice?',
 '["Double-entry bookkeeping", "Incident management — restoring normal service operation as quickly as possible after a disruption", "Annual financial statement preparation", "Inventory valuation using FIFO"]'::jsonb,
 1,
 'ITIL 4 defines 34 practices organized into general management practices, service management practices, and technical management practices. Incident management is a key service management practice focused on restoring normal service operation as quickly as possible following a disruption. Other examples include change enablement, problem management, and service desk.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'An auditor is assessing whether an organization''s IT controls achieve their intended objectives. The auditor compares the controls against defined criteria to determine whether they are properly designed and operating effectively. This process is best described as which of the following?',
 '["Financial statement auditing", "Evaluating control objectives through testing design adequacy and operating effectiveness", "Tax return preparation", "Business process reengineering"]'::jsonb,
 1,
 'Evaluating control objectives involves assessing whether controls are properly designed to achieve their intended objectives (design adequacy) and whether they are functioning as intended during the evaluation period (operating effectiveness). This process uses defined criteria or control objectives as benchmarks against which the controls are measured.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'In COBIT 2019, the governance domain is called "Evaluate, Direct, and Monitor" (EDM). What does this domain encompass?',
 '["Day-to-day IT operations and system maintenance", "Setting governance direction, evaluating stakeholder needs, and monitoring performance and compliance", "Software development and testing procedures", "Help desk and end-user support activities"]'::jsonb,
 1,
 'The EDM (Evaluate, Direct, and Monitor) domain in COBIT 2019 encompasses the governance activities of evaluating stakeholder needs and conditions, setting direction through prioritization and decision-making, and monitoring performance and conformance against the agreed-upon direction and objectives. This domain is the responsibility of the governing body, not operational management.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'ITIL 4''s service value chain consists of six activities. Which of the following is NOT one of those activities?',
 '["Plan", "Engage", "Depreciate", "Deliver and support"]'::jsonb,
 2,
 'The six activities in ITIL 4''s service value chain are: plan, improve, engage, design and transition, obtain/build, and deliver and support. Depreciate is a financial accounting concept, not an ITIL service value chain activity. These activities can be combined in various ways to create value streams that address specific organizational needs.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'An organization is using COBIT 2019 to design its IT governance system and identifies that it operates in a highly regulated industry. Under COBIT 2019, how does this context affect the governance design?',
 '["It has no effect — COBIT applies the same way regardless of industry", "Compliance requirements serve as a design factor that influences which governance components are prioritized and how processes are implemented", "The organization must implement every COBIT process at Level 5 maturity", "The organization is exempt from implementing COBIT because it already has regulatory requirements"]'::jsonb,
 1,
 'In COBIT 2019, compliance requirements are one of the design factors that influence the governance system design. Operating in a highly regulated industry means the organization must prioritize governance components related to regulatory compliance, potentially requiring higher capability levels for compliance-related processes and additional controls to meet regulatory obligations.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'IT risk evaluation involves comparing analyzed risks against defined risk criteria to determine which risks require treatment. What are risk criteria typically based on?',
 '["The number of IT staff employed by the organization", "The organization''s risk appetite, tolerance levels, legal requirements, and stakeholder expectations", "The market capitalization of the organization''s competitors", "The number of software applications in the organization''s portfolio"]'::jsonb,
 1,
 'Risk criteria are established based on the organization''s risk appetite (the amount of risk it is willing to accept in pursuit of objectives), risk tolerance levels (acceptable variation from the risk appetite), legal and regulatory requirements, and stakeholder expectations. These criteria provide the benchmark against which analyzed risks are evaluated to determine priority and treatment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'An organization decides to discontinue a cloud service that presents unacceptable security risks, choosing to develop an in-house solution instead. This risk response is classified as which of the following?',
 '["Risk acceptance", "Risk transfer", "Risk avoidance", "Risk mitigation"]'::jsonb,
 2,
 'Risk avoidance involves eliminating the activity or condition that gives rise to the risk. By discontinuing the cloud service and developing an in-house alternative, the organization avoids the specific risks associated with the cloud provider. Risk avoidance is appropriate when the risk exceeds the organization''s risk appetite and other responses are insufficient.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'In ITIL 4, the "focus on value" guiding principle emphasizes which of the following?',
 '["Every activity should contribute to the creation of value for stakeholders, whether directly or indirectly", "Organizations should focus exclusively on revenue generation from IT services", "IT departments should minimize all costs regardless of impact on service quality", "Value is determined solely by the IT department without stakeholder input"]'::jsonb,
 0,
 'The "focus on value" principle in ITIL 4 emphasizes that every activity the organization undertakes should link back, directly or indirectly, to value for stakeholders. Value is co-created with consumers and can take many forms including functionality, reliability, assurance, and experience. Understanding what stakeholders value is essential to providing effective services.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'A capability maturity model assessment reveals that an organization''s change management process is at Level 2 (Managed). What does this indicate?',
 '["The process does not exist or fails to achieve its purpose", "The process is planned, monitored, and adjusted, with work products appropriately established and controlled", "The process is fully optimized with continuous improvement mechanisms in place", "The process is defined at the organizational level with standardized procedures"]'::jsonb,
 1,
 'At Level 2 (Managed), a process is performed in a managed fashion — it is planned, monitored, and adjusted. Work products are appropriately established, controlled, and maintained. This means the organization has moved beyond ad hoc execution but has not yet standardized the process at the organizational level, which occurs at Level 3 (Established).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'An IT auditor uses a risk-based approach to planning the IT audit. Which of the following best describes how this approach determines the scope and focus of the audit?',
 '["All IT areas receive equal audit attention regardless of risk level", "Areas with the highest assessed risk receive more audit attention and resources, while lower-risk areas may receive less coverage", "Only areas that failed the previous audit are included in scope", "The scope is determined randomly to ensure auditor independence"]'::jsonb,
 1,
 'A risk-based audit approach allocates audit resources based on the assessed risk of each area. Areas with higher inherent risk, greater control risk, or significant prior findings receive more intensive audit procedures and resources. This ensures that audit effort is focused where it can provide the most value in identifying and addressing the organization''s most significant IT risks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'COBIT 2019 management objectives are organized into four domains. Which of the following correctly lists these four management domains?',
 '["Plan, Protect, Detect, Respond", "Align Plan and Organize (APO), Build Acquire and Implement (BAI), Deliver Service and Support (DSS), Monitor Evaluate and Assess (MEA)", "Identify, Protect, Detect, Respond, Recover", "Strategy, Design, Transition, Operation"]'::jsonb,
 1,
 'COBIT 2019''s four management domains are: APO (Align, Plan and Organize), BAI (Build, Acquire and Implement), DSS (Deliver, Service and Support), and MEA (Monitor, Evaluate and Assess). These domains, combined with the governance domain EDM (Evaluate, Direct and Monitor), encompass all governance and management objectives in the framework.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'An organization implements the ITIL 4 practice of "continual improvement." Which of the following best describes this practice?',
 '["Performing a one-time assessment of IT services and implementing all changes at once", "A recurring organizational activity performed at all levels to ensure alignment with changing business needs and sustained improvement of products and services", "Conducting an annual IT audit and filing the results with regulators", "Replacing all IT systems every three years with newer technology"]'::jsonb,
 1,
 'Continual improvement in ITIL 4 is a recurring activity that takes place at all levels of the organization. It ensures that an organization''s practices and services continually align with changing business needs through ongoing identification and improvement of services, components, and practices. It uses methods such as the ITIL continual improvement model and the concept of a continual improvement register.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'An IT audit team is evaluating whether an organization''s IT risk management process considers emerging threats such as AI-powered cyberattacks and quantum computing risks. This evaluation most directly relates to which step of the risk management process?',
 '["Risk treatment", "Risk identification — ensuring the threat landscape is current and comprehensive", "Risk acceptance", "Risk transfer"]'::jsonb,
 1,
 'Evaluating whether the organization considers emerging threats relates to risk identification, which must be a continuous process that adapts to the evolving threat landscape. A comprehensive risk identification process should include horizon scanning for new and emerging threats, not just historical risk categories. This ensures the organization''s risk profile remains current and complete.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'In COBIT 2019, the concept of a "governance system" means which of the following?',
 '["A single software application that automates all governance activities", "The set of components that work together to govern and manage enterprise information and technology, tailored to the organization''s needs", "A document that describes the organization''s IT policies", "The IT department''s organizational chart"]'::jsonb,
 1,
 'A governance system in COBIT 2019 is the set of interrelated components (processes, structures, policies, information, culture, skills, and services) that work together to govern and manage enterprise IT. It is tailored to the organization through design factors and can be customized based on the organization''s size, industry, risk profile, and strategic goals.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'ITIL 4 introduces the concept of "practices" which replace the "processes" of earlier ITIL versions. Which of the following best explains why this change was made?',
 '["Practices are simpler and require fewer resources than processes", "Practices provide a broader scope that encompasses not just process activities but also people, technology, partners, and value streams needed to achieve objectives", "Practices eliminate the need for documented procedures", "Practices are only applicable to large organizations"]'::jsonb,
 1,
 'ITIL 4 shifted from processes to practices to take a more holistic view. Practices are defined as sets of organizational resources designed to perform work or accomplish an objective. They encompass more than just process flows — they include the people, tools, partners, information, and value streams needed to achieve outcomes. This broader scope reflects the complexity of modern service management.',
 'medium');

-- =============================================================================
-- Topic 6: SOC Testing Controls (28 questions)
-- Difficulty: 8 easy, 14 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'In a SOC engagement, tests of design evaluate which of the following?',
 '["Whether controls operated effectively throughout the examination period", "Whether controls are suitably designed to achieve the related control objectives or meet the applicable criteria", "Whether the service organization''s financial statements are fairly presented", "Whether user entities have implemented complementary controls"]'::jsonb,
 1,
 'Tests of design evaluate whether controls, if operating as described, would be suitably designed to achieve the related control objectives or meet the applicable Trust Services Criteria. Design testing determines if the control, as described and placed in operation, is capable of effectively addressing the identified risk. It does not assess whether the control actually operated effectively.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'Which of the following procedures is commonly used to test the design of a control in a SOC engagement?',
 '["Reperformance of the control by the auditor", "Inquiry of management, inspection of documentation, and observation of the control being performed", "Statistical sampling of transactions", "Reconciliation of account balances"]'::jsonb,
 1,
 'Testing the design of controls typically involves inquiry of management and personnel, inspection of relevant documentation (policies, procedures, system configurations), and observation of the control being performed. These procedures allow the auditor to understand how the control is designed and whether it addresses the identified risk. Reperformance is used for testing operating effectiveness.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'Tests of operating effectiveness in a SOC Type II engagement determine which of the following?',
 '["Whether the control was properly designed at a point in time", "Whether the control operated as designed throughout the specified examination period", "Whether the service organization is financially viable", "Whether user entities are satisfied with the service"]'::jsonb,
 1,
 'Tests of operating effectiveness determine whether controls operated as designed and consistently throughout the examination period. Unlike design tests that assess a point in time, operating effectiveness tests evaluate performance over a period. This requires evidence that the control was applied consistently by the appropriate personnel and produced the expected results.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'A service auditor wants to verify that an access review control operated effectively during the examination period. Which of the following test procedures would be most appropriate?',
 '["Asking management whether they performed the access reviews", "Inspecting documented evidence of completed access reviews, including sign-offs, dates, and remediation actions taken", "Observing management perform a single access review at the end of the period", "Reviewing the service organization''s access review policy only"]'::jsonb,
 1,
 'To test operating effectiveness, the auditor should inspect documentary evidence demonstrating that the control operated throughout the period. For an access review, this includes completed review forms, sign-off records, dates of reviews, items identified for remediation, and evidence that remediation occurred. Inquiry alone is insufficient for operating effectiveness testing, and a single observation does not cover the full period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'Reperformance is a testing procedure in which the auditor independently executes the control procedure. In which of the following situations would reperformance be most useful?',
 '["When the control is a management review requiring professional judgment", "When the control is an automated calculation or system-enforced validation that can be independently executed by the auditor", "When the auditor wants to assess the general tone at the top of the organization", "When testing physical security controls at a data center"]'::jsonb,
 1,
 'Reperformance is most effective for controls that involve specific procedures that can be independently replicated, such as automated calculations, system-enforced validations, or reconciliation processes. The auditor re-executes the control procedure to verify that it produces the expected results. Management reviews involving judgment are better tested through inquiry and inspection.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'In a SOC engagement, attribute sampling is commonly used when testing controls. Which of the following best describes attribute sampling?',
 '["Selecting all items in the population for testing", "Selecting a representative sample of items and determining whether each item possesses a specific characteristic, such as evidence of an approval", "Calculating the average dollar value of all transactions in the period", "Testing only the largest transactions in the population"]'::jsonb,
 1,
 'Attribute sampling involves selecting a sample from a population and examining each selected item for the presence or absence of a specific attribute (characteristic), such as whether a transaction was approved, an access request was documented, or a backup was completed. The results are used to draw conclusions about the rate of deviation in the entire population.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'When determining sample sizes for testing controls in a SOC engagement, which of the following factors would lead the auditor to select a larger sample?',
 '["The control is automated and operates consistently without variation", "The auditor expects a higher deviation rate or the control is critical and the tolerable deviation rate is low", "The control operates only once per year", "The population of items is very small"]'::jsonb,
 1,
 'Larger sample sizes are needed when the auditor expects a higher rate of deviation, when the tolerable deviation rate is low (because the control is critical), or when greater assurance is needed. Automated controls with consistent operation may require smaller samples. Controls that operate infrequently (such as annually) may be tested entirely rather than sampled.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'A service auditor performs a walkthrough of a key control process during a SOC engagement. What is the primary purpose of a walkthrough?',
 '["To test the operating effectiveness of the control over the entire examination period", "To gain an understanding of the control by tracing a single transaction through the entire process from initiation to completion", "To calculate the error rate in the population", "To evaluate the service organization''s financial performance"]'::jsonb,
 1,
 'A walkthrough involves tracing a single transaction or event through the entire process from initiation to completion. The purpose is to confirm the auditor''s understanding of the process, verify that the controls described in the system description are in place, and identify the points at which controls operate. Walkthroughs support design testing but do not alone provide sufficient evidence of operating effectiveness.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'During testing, the service auditor selects 25 change management tickets to verify that each change was properly approved before deployment to production. Three tickets show that changes were deployed without documented approval. How should the auditor evaluate these exceptions?',
 '["Ignore the exceptions because the majority of items were properly approved", "Evaluate the nature, cause, and frequency of the exceptions to determine whether they represent a systemic control failure or isolated deviations, and consider their impact on the opinion", "Automatically issue a qualified opinion because any exception requires qualification", "Request management to retrospectively approve the three changes to eliminate the exceptions"]'::jsonb,
 1,
 'The auditor must evaluate each exception by considering its nature (what went wrong), cause (why it happened), frequency (is it isolated or systemic), and potential impact. Three exceptions out of 25 (12% deviation rate) is significant and may indicate a systemic weakness, but the auditor must assess the specific circumstances before determining the impact on the opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'A service organization implemented a new automated control midway through the SOC 2 Type II examination period. How should the auditor test this control?',
 '["Test the control only for the portion of the period it was in operation and note the implementation date in the report", "Extend the examination period until the new control has been in place for a full year", "Ignore the new control because it was not in place for the entire period", "Test only the control it replaced, not the new control"]'::jsonb,
 0,
 'When a control is implemented partway through the examination period, the auditor should test both the predecessor control (for the period before implementation) and the new control (for the period after implementation). The system description and testing results should clearly describe the change and the effective dates of each control.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'In testing an automated control in a SOC engagement, the auditor verifies that the system configuration enforcing the control has not changed during the examination period. This approach is known as which of the following?',
 '["Sampling-based testing", "Benchmarking or baseline testing — testing the automated control at a point in time and verifying no changes occurred", "Full population testing", "Risk-based testing"]'::jsonb,
 1,
 'For automated controls that operate consistently based on system configuration, the auditor may use a benchmarking approach: test the control at a point in time to verify it operates as designed, then verify through change management records and system logs that the configuration was not modified during the examination period. This approach is efficient because automated controls produce the same result every time if the configuration is unchanged.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'Observation as a testing procedure in a SOC engagement provides evidence about which of the following?',
 '["Whether the control was in operation at a specific point in time when the auditor observed it", "Whether the control operated effectively throughout the entire examination period", "The financial impact of control failures", "The adequacy of the organization''s insurance coverage"]'::jsonb,
 0,
 'Observation provides evidence that a control is in operation at the specific point in time when the auditor witnesses it. However, observation alone does not provide evidence about whether the control operated effectively throughout the examination period. Observation is typically combined with other procedures such as inquiry and inspection of documentation to provide sufficient evidence.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'A service auditor is testing a control that requires management to review system-generated exception reports daily. Which combination of procedures would provide the most effective evidence of operating effectiveness?',
 '["Inquiry of management alone", "Inquiry of management combined with inspection of the exception reports showing evidence of review (initials, dates, notes) for a sample of days throughout the examination period", "Observation of management reviewing one exception report", "Review of the policy requiring daily exception report reviews"]'::jsonb,
 1,
 'The most effective approach combines inquiry (to understand how management performs the review) with inspection of documentary evidence demonstrating the review was performed throughout the period. Evidence includes management initials, review dates, notes documenting follow-up on exceptions, and resolution of identified issues. Inquiry alone or observation at a single point is insufficient.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'Roll-forward procedures in a SOC engagement refer to which of the following?',
 '["Procedures performed at the beginning of the examination period to establish a baseline", "Procedures performed after an interim testing date to extend the testing to the end of the examination period", "Procedures that roll the examination period forward to the next year", "Procedures that carry forward the prior year''s audit results without additional testing"]'::jsonb,
 1,
 'Roll-forward procedures are performed after initial interim testing to extend the testing conclusions to the end of the examination period. When the auditor performs interim testing, roll-forward procedures verify that controls continued to operate effectively from the interim test date through the period end. These procedures may include inquiry, observation, and testing of additional items.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'A service organization has a control that requires quarterly reviews of user access privileges. During the examination period (January through December), the auditor finds that the reviews were conducted in March, June, September, and December. The March review is the only one with documented evidence of management follow-up on issues identified. How should the auditor assess this?',
 '["The control operated effectively because all four reviews were completed", "The control may not have operated effectively because three of the four reviews lack evidence of follow-up on identified issues, suggesting the review may not have been performed with sufficient rigor", "The control was not designed properly and must be redesigned", "The auditor should test only the March review since it has the best evidence"]'::jsonb,
 1,
 'While the reviews were performed on schedule, the lack of documented follow-up on issues identified in three of four quarters raises concerns about the effectiveness of the control. An effective access review should include not only the review itself but also evidence of follow-up and remediation of identified issues. The auditor should investigate further and potentially report this as an exception.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'When testing complementary controls in a SOC engagement, the service auditor evaluates which of the following?',
 '["Whether user entities have implemented all CUECs", "Whether the service organization''s controls work in conjunction with identified CUECs and CSOCs to achieve the control objectives or criteria", "Whether the subservice organization''s financial statements are accurate", "Whether the service organization''s employees are properly compensated"]'::jsonb,
 1,
 'The service auditor evaluates how the service organization''s controls interact with complementary controls (CUECs and CSOCs) to achieve control objectives or criteria. While the auditor does not test CUECs at user entities or CSOCs at carved-out subservice organizations, the auditor considers whether the service organization''s controls are designed assuming these complementary controls are in place.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'Inquiry as a testing procedure in a SOC engagement involves which of the following?',
 '["Asking management and personnel about the design, implementation, and operation of controls", "Performing mathematical calculations to verify account balances", "Physically counting inventory items", "Sending confirmations to third parties"]'::jsonb,
 0,
 'Inquiry involves asking management and appropriate personnel about how controls are designed, implemented, and operated. While inquiry provides useful information and is an important testing procedure, it is generally not sufficient alone to provide evidence of operating effectiveness. Inquiry should be corroborated with other procedures such as inspection, observation, or reperformance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'During a SOC 2 engagement, the service auditor tests an encryption control by verifying that TLS 1.2 or higher is enforced on all external-facing web applications. The auditor uses a scanning tool to test the configuration. This procedure is an example of which type of test?',
 '["Inquiry", "Observation", "Inspection of system configuration or reperformance using technical tools", "Analytical procedures"]'::jsonb,
 2,
 'Using a scanning tool to verify the TLS configuration is an example of inspection of system configuration combined with reperformance using technical tools. The auditor independently verifies the technical configuration rather than relying solely on management representations. This provides strong evidence about the design and implementation of the encryption control.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'In a SOC engagement, the auditor selects 40 new hire access provisioning requests from a population of 200 during the examination period. The auditor is testing whether each request was properly documented, approved by the appropriate manager, and limited to the access required for the employee''s role. This selection approach is best described as which of the following?',
 '["Haphazard selection", "Systematic selection with a random start", "Representative sampling from the population to evaluate the attribute of proper approval and access alignment", "Census testing"]'::jsonb,
 2,
 'Selecting 40 items from a population of 200 and testing them for specific attributes (documentation, approval, role-appropriate access) is representative sampling. The auditor evaluates whether each sampled item possesses the required attributes. The deviation rate in the sample is used to draw conclusions about the likely deviation rate in the population.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'A service auditor discovers during testing that a control was redesigned midway through the examination period to address a deficiency. What is the auditor''s responsibility regarding the predecessor control?',
 '["Ignore the predecessor control since it was replaced", "Test and report on both the predecessor and successor controls, including the deficiency and when it was remediated", "Only test the successor control and assume the predecessor control operated effectively", "Withdraw from the engagement because the control redesign compromises the audit"]'::jsonb,
 1,
 'The auditor must test and report on both controls. The predecessor control should be evaluated for the period it was in effect, including any deficiency that led to the redesign. The successor control should be tested for the period after implementation. The report should describe both controls, the transition, the deficiency in the predecessor, and the testing results for each.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'For a control that operates daily (such as daily backup verification), what is the typical minimum sample size a service auditor would select for a 12-month Type II examination period?',
 '["1 item", "5 items", "25 or more items, depending on the auditor''s risk assessment", "All 365 occurrences"]'::jsonb,
 2,
 'For daily controls over a 12-month period, auditing standards and professional guidance generally recommend a sample size of 25 or more items, though the exact number depends on the auditor''s assessment of risk, the expected deviation rate, and the desired level of assurance. Testing 25 items with zero deviations provides a high level of confidence that the deviation rate is low.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'A service auditor identifies that an IT manager manually overrode an automated control on three occasions during the examination period to process urgent transactions. How should the auditor evaluate these overrides?',
 '["Accept the overrides without further investigation because management has the authority to override controls", "Investigate whether the overrides were properly authorized, documented, and reviewed, and assess whether they represent a control deficiency", "Report the overrides as fraud indicators requiring immediate notification to law enforcement", "Exclude the overridden transactions from the testing population"]'::jsonb,
 1,
 'Management overrides of controls require careful evaluation. The auditor should determine whether each override was authorized by appropriate personnel, documented with a valid business reason, and subsequently reviewed. If overrides were not properly authorized and documented, they may represent a control deficiency. The frequency and nature of overrides should also be assessed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'In a SOC engagement, the auditor tests a control that requires management to approve all changes to firewall rules. The auditor inspects the firewall change log and compares it to the change management system to verify that all changes had documented approvals. This procedure is an example of which type of test?',
 '["Inquiry", "Observation", "Inspection of evidence and corroboration between two independent sources", "Walkthrough"]'::jsonb,
 2,
 'Comparing the firewall change log against the change management system is an inspection of evidence that corroborates information from two independent sources. This dual-source verification is more reliable than relying on a single source because it confirms that changes recorded in one system match approvals documented in another, reducing the risk that unauthorized changes went undetected.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'When testing the operating effectiveness of a control that operates annually (such as an annual penetration test), what is the minimum number of occurrences the auditor must test?',
 '["A sample of 25 occurrences", "Every occurrence within the examination period, which for an annual control would be one", "No testing is required for annual controls", "A minimum of 10 occurrences regardless of frequency"]'::jsonb,
 1,
 'For controls that operate infrequently (such as annually or quarterly), the auditor must test every occurrence within the examination period. For an annual control, there is only one occurrence, so that single occurrence must be tested. The auditor cannot extrapolate from a sample when the population is extremely small, so each occurrence must be examined.',
 'easy');

-- =============================================================================
-- Topic 7: SOC Reporting (28 questions)
-- Difficulty: 8 easy, 14 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'An unqualified (unmodified) opinion in a SOC report indicates which of the following?',
 '["The service organization has no control weaknesses of any kind", "The system description is fairly presented, controls are suitably designed, and (for Type II) controls operated effectively without material exceptions", "The service organization''s financial statements are free of misstatement", "The service auditor guarantees the reliability of the service organization''s systems"]'::jsonb,
 1,
 'An unqualified opinion means the service auditor concluded that the system description is fairly presented, controls are suitably designed to meet the specified criteria or objectives, and (for Type II) controls operated effectively during the examination period. It does not guarantee perfection or the absence of all weaknesses — it indicates that no material exceptions were identified.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A service auditor issues a qualified opinion in a SOC 2 Type II report. What does a qualified opinion indicate?',
 '["The system description is not fairly presented in all respects", "Except for specific identified exceptions, the system description is fairly presented and controls are suitably designed and operated effectively", "The service organization''s controls are completely ineffective", "The engagement was not completed due to scope limitations"]'::jsonb,
 1,
 'A qualified opinion indicates that except for specific identified matters, the system description is fairly presented and controls are suitably designed and (for Type II) operated effectively. The qualification identifies specific exceptions or deviations that are significant but not pervasive enough to warrant an adverse opinion. The qualified areas are clearly described in the report.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'Under what circumstances would a service auditor issue an adverse opinion in a SOC report?',
 '["When minor exceptions are noted that do not affect the overall conclusion", "When the exceptions or misstatements in the system description are so pervasive and significant that a qualified opinion would not adequately communicate the severity", "When the service organization requests a more conservative opinion", "When the engagement is the service organization''s first SOC examination"]'::jsonb,
 1,
 'An adverse opinion is issued when the service auditor determines that exceptions, misstatements in the system description, or control deficiencies are so material and pervasive that a qualified opinion is insufficient. An adverse opinion indicates that the system description is not fairly presented, controls are not suitably designed, or controls did not operate effectively in a material and pervasive manner.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A disclaimer of opinion in a SOC report is issued when which of the following occurs?',
 '["The service auditor finds minor exceptions in control operation", "The service auditor is unable to obtain sufficient appropriate evidence to form an opinion, typically due to scope restrictions", "The service organization voluntarily withdraws from the engagement", "The service auditor wants to provide a more conservative assessment"]'::jsonb,
 1,
 'A disclaimer of opinion is issued when the service auditor cannot obtain sufficient appropriate evidence to form an opinion on the system description, design of controls, or operating effectiveness. This typically occurs when the service organization imposes scope restrictions, evidence is unavailable, or circumstances prevent the auditor from completing necessary procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'Which of the following sections is included in a SOC 1 Type II report?',
 '["The independent service auditor''s report, management''s assertion, system description, and description of tests and results", "Only the independent service auditor''s report and a summary conclusion", "The service organization''s audited financial statements", "The user entity''s internal audit findings"]'::jsonb,
 0,
 'A SOC 1 Type II report contains four main sections: the independent service auditor''s report (the opinion), management''s assertion about the system description and controls, the system description prepared by management, and the description of tests of controls performed and results thereof. These sections together provide comprehensive information for user entities and their auditors.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'Management''s assertion in a SOC report addresses which of the following?',
 '["The auditor''s testing methodology and sample sizes", "Whether the system description fairly presents the system, controls are suitably designed, and (for Type II) controls operated effectively during the period", "The user entity''s satisfaction with the service organization''s performance", "The competitive landscape of the service organization''s industry"]'::jsonb,
 1,
 'Management''s assertion is a written statement in which the service organization''s management asserts that the system description fairly presents the system as designed and implemented, that the controls are suitably designed, and (for Type II) that the controls operated effectively throughout the specified period. The service auditor''s opinion is based on evaluating this assertion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'In a SOC 1 report, the carve-out method is used for a subservice organization. How does the carve-out method affect the service auditor''s report?',
 '["The report includes a complete opinion on the subservice organization''s controls", "The report identifies the subservice organization and the carved-out functions, and the opinion does not extend to the subservice organization''s controls", "The report excludes any mention of the subservice organization", "The report automatically includes a qualified opinion due to the carve-out"]'::jsonb,
 1,
 'Under the carve-out method, the service auditor''s report identifies the subservice organization and describes the nature of services provided by the subservice organization. The service auditor''s opinion does not extend to the controls at the carved-out subservice organization. The report may reference a separate SOC report obtained by the subservice organization.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'The inclusive method for addressing a subservice organization in a SOC report results in which of the following?',
 '["The subservice organization''s controls are excluded from the scope of the report", "The service auditor''s opinion extends to the subservice organization''s relevant controls, which are included in the scope of the examination", "The subservice organization must issue its own separate SOC report", "The user entity must directly audit the subservice organization"]'::jsonb,
 1,
 'Under the inclusive method, the subservice organization''s relevant controls are included within the scope of the service organization''s SOC examination. The service auditor tests these controls and the opinion extends to the included subservice organization controls. This provides a more comprehensive view for user entities but requires access to and testing of the subservice organization''s controls.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A SOC 2 report is described as a restricted-use report. Who are the intended users of this report?',
 '["The general public and potential investors", "Management of the service organization, user entities, prospective user entities who have sufficient knowledge, and business partners with contractual need", "Only the service organization''s board of directors", "Only the service auditor''s firm"]'::jsonb,
 1,
 'SOC 2 reports are restricted-use reports intended for management of the service organization, user entities, business partners who have a contractual or business need for the information, and prospective user entities who have sufficient understanding to make appropriate use of the report. They are not intended for general public distribution because they contain detailed control and testing information.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A user entity''s auditor receives a SOC 1 Type II report and discovers it contains a qualified opinion due to exceptions in the testing of access controls. What should the user entity''s auditor do?',
 '["Disregard the SOC 1 report entirely and perform no further work", "Evaluate the impact of the exceptions on the user entity''s financial statement assertions and determine whether additional audit procedures are needed", "Issue a qualified opinion on the user entity''s financial statements automatically", "Request the service organization to reissue the report with an unqualified opinion"]'::jsonb,
 1,
 'The user entity''s auditor should evaluate the nature and significance of the exceptions reported in the SOC 1 report and assess their potential impact on the user entity''s financial statement assertions. The auditor may need to perform additional procedures to address the identified risks, such as testing complementary controls, performing substantive procedures, or expanding testing in affected areas.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A bridge letter (also called a gap letter) in the context of SOC reporting serves which of the following purposes?',
 '["It bridges the gap between two different SOC report types", "It provides the service organization''s representation about whether significant changes occurred to the system or controls between the end of the SOC report period and a later date", "It bridges the gap between the service auditor and the user entity''s auditor", "It replaces the need for a new SOC examination"]'::jsonb,
 1,
 'A bridge letter is a management representation from the service organization that addresses whether significant changes occurred to the system, controls, or control environment between the end of the SOC report period and a specified later date. User entities and their auditors may request bridge letters when the SOC report period does not align with the user entity''s fiscal year.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'In the description of tests and results section of a SOC Type II report, the service auditor describes which of the following?',
 '["Only the controls that operated effectively during the period", "The controls tested, the testing procedures performed, and the results of those tests, including any exceptions identified", "The service organization''s revenue and profitability during the period", "The user entity''s internal control assessment"]'::jsonb,
 1,
 'The description of tests and results section presents each control tested, the specific testing procedures the auditor performed (such as inquiry, inspection, reperformance), and the results obtained. If exceptions were identified, they are described in this section along with the nature of the exception. This section provides transparency about the auditor''s work and findings.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A service organization provides data hosting services and uses two subservice organizations: one for physical data center operations and another for network security monitoring. The service organization uses the carve-out method for the data center operator and the inclusive method for the network security provider. How does this affect the SOC report?',
 '["This is not permitted — the same method must be used for all subservice organizations", "The report will include the network security provider''s controls in the scope and testing, while identifying the data center operator as carved out with expected CSOCs", "The report must use the carve-out method for both because one subservice organization uses it", "The service auditor must issue two separate reports"]'::jsonb,
 1,
 'A service organization may use different methods for different subservice organizations based on the engagement circumstances. The inclusive method subservice organization''s controls are included in scope and tested, while the carve-out subservice organization is identified with its expected complementary controls (CSOCs). The system description clearly describes both arrangements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'The independent service auditor''s report in a SOC engagement includes which of the following key elements?',
 '["The service organization''s marketing brochure and client testimonials", "The scope of the examination, management''s responsibilities, the service auditor''s responsibilities, and the opinion", "The user entity''s financial statements and audit opinion", "The subservice organization''s employee handbook"]'::jsonb,
 1,
 'The independent service auditor''s report includes the scope of the examination (what was examined and the period), a description of management''s responsibilities (for the system description and controls), the service auditor''s responsibilities (to express an opinion based on the examination), the criteria used, and the service auditor''s opinion on the system description and controls.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A service organization receives an unqualified opinion on its SOC 2 Type II report but has several minor exceptions noted in the testing results. Is this inconsistent?',
 '["Yes — any exceptions should result in a qualified opinion", "No — an unqualified opinion can be issued when exceptions exist if the auditor determines they are not material to the criteria and do not represent a systemic control failure", "Yes — the report should be reissued without the exceptions", "No — exceptions are never included in reports with unqualified opinions"]'::jsonb,
 1,
 'An unqualified opinion can be issued even when minor exceptions exist. The service auditor evaluates whether exceptions are material to the criteria being examined. Isolated exceptions that do not represent a systemic control failure and are not material to the achievement of the criteria may be reported without modifying the opinion. All exceptions are still disclosed in the testing results section.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'Which section of a SOC report provides the most useful information for a user entity evaluating whether to engage or continue engaging a service organization?',
 '["The auditor''s engagement letter", "The system description, which details the services provided, system components, and control environment", "The service organization''s organizational chart", "The service auditor''s billing invoice"]'::jsonb,
 1,
 'The system description provides comprehensive information about the services provided, the components of the system (infrastructure, software, people, procedures, data), the control environment, and the boundaries of the system. This section enables user entities to understand the service organization''s environment, assess its suitability, and determine what complementary controls they need to implement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A service organization switches from the carve-out method to the inclusive method for a subservice organization between reporting periods. What is the impact on the current period''s SOC report?',
 '["The change has no impact on the report", "The system description should disclose the change in method, and the current period''s report will include the subservice organization''s controls in scope, with corresponding tests and results", "The service auditor must disclaim an opinion due to the change", "The prior period''s report must be reissued using the inclusive method"]'::jsonb,
 1,
 'Changing the method for addressing a subservice organization is a significant change that should be disclosed in the system description. Under the inclusive method, the subservice organization''s relevant controls are now included in the scope, tested by the service auditor, and covered by the opinion. The report should clearly describe this change for the benefit of report users.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A user entity''s auditor plans to use a SOC 1 Type II report as part of their audit. Before relying on the report, the auditor should evaluate which of the following?',
 '["The service auditor''s fee for the engagement", "The service auditor''s professional competence and independence, the scope and period covered by the report, and any exceptions noted", "The service organization''s stock price performance", "The number of pages in the report"]'::jsonb,
 1,
 'Before relying on a SOC 1 report, the user entity''s auditor should evaluate the service auditor''s professional reputation and independence, whether the report covers the relevant period, whether the scope includes the controls relevant to the user entity, and any exceptions or findings reported. The auditor should also assess the impact of CUECs and determine if additional procedures are needed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'In a SOC 1 report, the system description must address the control objectives that the service organization''s controls are designed to achieve. Who is responsible for establishing these control objectives?',
 '["The service auditor determines the control objectives", "Management of the service organization establishes the control objectives", "The user entity''s auditor establishes the control objectives", "The AICPA publishes mandatory control objectives for all industries"]'::jsonb,
 1,
 'Management of the service organization is responsible for establishing the control objectives in a SOC 1 report. These objectives describe what the controls are intended to achieve in relation to user entities'' internal control over financial reporting. Management typically develops control objectives based on the nature of services provided and the needs of user entities.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A service organization''s SOC 2 Type II report covers January 1 through September 30. A prospective user entity is evaluating the report in January of the following year. What concern should the prospective user entity have?',
 '["No concerns — the report is valid indefinitely", "The report is more than three months old from the period end, and the service organization may have made significant changes to its system or controls since September 30", "The report is invalid because it does not cover a calendar year", "The prospective user entity cannot use the report because it is not a current user entity"]'::jsonb,
 1,
 'A SOC report reflects the system and controls during a specific period. As time passes after the period end, the risk increases that changes have occurred to the system, controls, or control environment. Prospective user entities should consider the age of the report, inquire about changes since the period end, and may request a bridge letter or updated report.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A service organization receives a SOC 2 Type II report with a qualified opinion because the auditor found material exceptions in the operating effectiveness of change management controls. The service organization wants to address the qualification before the next report. What should the organization do?',
 '["Request the auditor to retroactively change the opinion to unqualified", "Remediate the identified control deficiencies, implement improved change management procedures, and demonstrate consistent operation of the improved controls during the next examination period", "Stop performing change management activities entirely", "Switch to a different auditing firm that will issue an unqualified opinion"]'::jsonb,
 1,
 'To address a qualification, the service organization should remediate the underlying control deficiencies, implement improved procedures, and consistently operate the improved controls. During the next examination period, the service auditor will test the remediated controls. If the controls are operating effectively throughout the new period, the qualification may be removed from the next report.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'The system description in a SOC report must clearly delineate which aspects of the service delivery are within the scope of the examination. Which of the following would be appropriately excluded from the system description?',
 '["The service organization''s access control procedures for the in-scope application", "Services provided by the service organization that are unrelated to the scope of the SOC engagement and do not affect the criteria being evaluated", "The infrastructure supporting the in-scope services", "The people and procedures involved in delivering the in-scope services"]'::jsonb,
 1,
 'The system description should clearly identify what is in scope and what is excluded. Services that are unrelated to the criteria being evaluated (for SOC 2) or control objectives (for SOC 1) may be appropriately excluded. However, all components relevant to the services being examined — including infrastructure, software, people, procedures, and data — must be included.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A SOC 1 report uses the terminology "control objectives" while a SOC 2 report uses "criteria." What explains this difference?',
 '["There is no real difference — the terms are interchangeable", "SOC 1 control objectives are defined by the service organization to describe what controls should achieve for ICFR purposes, while SOC 2 criteria are the predefined Trust Services Criteria established by the AICPA", "SOC 1 uses criteria and SOC 2 uses control objectives", "Both use the same terminology established by the PCAOB"]'::jsonb,
 1,
 'In SOC 1 engagements, control objectives are established by the service organization''s management to describe what controls should achieve in relation to user entities'' ICFR. In SOC 2 engagements, the criteria are the predefined Trust Services Criteria (security, availability, processing integrity, confidentiality, privacy) established by the AICPA. This difference reflects the distinct purposes of each engagement type.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A service organization distributes its SOC 2 Type II report to a potential investor who has no service relationship with the organization. Is this an appropriate use of the report?',
 '["Yes — SOC 2 reports can be shared with anyone", "No — SOC 2 reports are restricted-use reports and should only be distributed to parties who have a business need and sufficient knowledge to understand the report", "Yes — once issued, the service organization can distribute the report without restriction", "No — SOC 2 reports can only be shared with current user entities, never prospective ones"]'::jsonb,
 1,
 'SOC 2 reports are restricted-use reports intended for parties who have a business need for the information and sufficient knowledge to understand it. A potential investor without a service relationship would not typically be an appropriate recipient. If the service organization wants to provide assurance to a broader audience, a SOC 3 report (general-use) would be more appropriate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'In a SOC Type I report, the service auditor''s opinion addresses which of the following?',
 '["Whether controls operated effectively over a period of time", "Whether the system description is fairly presented and controls are suitably designed to achieve the criteria or objectives as of a specified date", "Whether the service organization''s financial statements are free from material misstatement", "Whether user entities have implemented all complementary controls"]'::jsonb,
 1,
 'In a Type I report, the service auditor''s opinion addresses two things: whether the system description fairly presents the system as designed and implemented as of the specified date, and whether the controls are suitably designed to provide reasonable assurance that the control objectives (SOC 1) or criteria (SOC 2) would be achieved. Type I does not address operating effectiveness over a period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A large financial institution requires its cloud service provider to submit a SOC 2 Type II report annually. The institution notices that the current year''s report has changed from an unqualified opinion to a qualified opinion due to access control exceptions. What are the institution''s options?',
 '["Accept the qualified report without further action since the service provider is still compliant", "Evaluate the significance of the exceptions, assess the impact on the institution''s own risk profile, request a remediation plan from the service provider, and consider implementing additional compensating controls", "Immediately terminate the contract and migrate to a different provider", "Ignore the change in opinion because the institution has no responsibility for the service provider''s controls"]'::jsonb,
 1,
 'The institution should evaluate the specific exceptions to assess their potential impact on the institution''s operations and risk profile. This may involve requesting a remediation plan with timelines, implementing additional monitoring or compensating controls, increasing oversight of the service provider, and potentially escalating the matter within the institution''s risk governance framework.',
 'hard');

-- =============================================================================
-- Additional questions to reach target counts
-- =============================================================================

-- SOC Engagements (+1 = 32)
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Engagements',
 'A service organization provides investment accounting services to mutual funds. The mutual funds'' auditors need assurance that the service organization''s controls over net asset value (NAV) calculations are reliable. Which type of SOC engagement would most directly address this need?',
 '["SOC 2 Type II covering security and availability", "SOC 1 Type II because the NAV calculations directly affect user entities'' financial reporting", "SOC 3 because the mutual funds need a general-use report", "SOC for Cybersecurity because investment data is sensitive"]'::jsonb,
 1,
 'NAV calculations directly affect the financial statements of the mutual funds (user entities). A SOC 1 Type II report examines controls relevant to user entities'' internal control over financial reporting and tests operating effectiveness over a period. This provides the mutual funds'' auditors with the assurance they need about the accuracy and reliability of the outsourced NAV calculations.',
 'medium');

-- SOC Reporting and Trust Services Criteria (+1 = 30)
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting and Trust Services Criteria',
 'A service organization is preparing for a SOC 2 engagement and wants to include the availability category. Which of the following would be an appropriate supplemental availability criterion?',
 '["The entity maintains effective hiring practices for all departments", "The entity measures current usage of system components and manages capacity to support availability commitments", "The entity prepares accurate financial forecasts for investors", "The entity maintains competitive pricing for its services"]'::jsonb,
 1,
 'Supplemental availability criteria address specific aspects of system availability beyond the common criteria. Capacity management — measuring current usage and planning for sufficient capacity — is directly relevant to ensuring the system remains available for operation and use. Without adequate capacity management, systems may become unavailable due to resource exhaustion.',
 'medium');

-- IT General Controls (+2 = 28)
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization implements a policy requiring that all production database changes go through a formal approval and testing process. A DBA bypasses this process to apply an urgent patch directly to the production database during a weekend outage. Which control should have prevented this?',
 '["A physical lock on the data center door", "Technical enforcement of the change management process that prevents direct production changes without documented approval in the change management system", "A policy statement posted on the company intranet", "Annual security awareness training"]'::jsonb,
 1,
 'While policies are important, technical enforcement provides stronger assurance. Controls that technically prevent production changes without a corresponding approved change ticket in the change management system ensure compliance regardless of the urgency or the individual''s role. Policies and training are administrative controls that can be bypassed, while technical controls provide automated enforcement.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT General Controls',
 'An organization''s IT department maintains a configuration management database (CMDB) that tracks all hardware and software assets. What is the primary benefit of a CMDB for IT general controls?',
 '["It replaces the need for physical inventory counts", "It provides a centralized record of IT assets, their configurations, and relationships, supporting change management, incident management, and access control decisions", "It automatically fixes configuration errors in production systems", "It generates revenue by licensing asset data to third parties"]'::jsonb,
 1,
 'A CMDB provides a comprehensive view of IT assets, their configurations, dependencies, and relationships. This information supports change management (understanding the impact of proposed changes), incident management (identifying affected components), access control (knowing which systems exist and need protection), and capacity management. It is a foundational tool for effective IT governance.',
 'medium');

-- IT Audit Frameworks (+1 = 28)
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'IT Audit Frameworks',
 'An IT auditor is evaluating the organization''s IT risk treatment decisions. The organization has decided to accept a medium-level risk related to an aging legacy system because the cost of replacement exceeds the potential loss. Under a risk management framework, what documentation should support this decision?',
 '["No documentation is required for risk acceptance decisions", "A formal risk acceptance record signed by appropriate management that documents the risk, the rationale for acceptance, the residual risk level, and a planned review date", "Only an email from the IT manager mentioning the risk", "A vendor proposal for the replacement system"]'::jsonb,
 1,
 'Risk acceptance decisions should be formally documented to demonstrate due diligence and accountability. The documentation should identify the risk, explain why acceptance was chosen over other treatment options, quantify or describe the residual risk, identify the person with authority to accept the risk, and establish a date for reassessment. This supports the accountability and transparency requirements of governance frameworks.',
 'medium');

-- SOC Testing Controls (+4 = 28)
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'A service auditor is testing the operating effectiveness of a monthly reconciliation control. During the 12-month examination period, the auditor finds that the reconciliation was not performed in one month due to staff turnover. How should the auditor evaluate this?',
 '["The missing reconciliation is immaterial because 11 out of 12 months were completed", "The auditor should evaluate whether the one missed reconciliation represents a control deviation, assess its cause and impact, and determine whether compensating procedures were performed", "The auditor should automatically issue a qualified opinion", "The auditor should ignore the gap because the control was operating for most of the period"]'::jsonb,
 1,
 'A missed occurrence of a periodic control represents a deviation that must be evaluated. The auditor assesses the cause (was it an isolated staffing issue or indicative of a systemic weakness?), the impact (were transactions during that month properly processed?), and whether compensating procedures were performed. One deviation out of twelve occurrences may or may not be material depending on the circumstances.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'When testing an automated application control in a SOC engagement, the service auditor confirms that the control logic is embedded in the application code and has not changed during the examination period. What is the minimum testing required for this type of control?',
 '["Test every transaction processed by the control during the period", "Test the control at one point in time to verify it operates as designed, and confirm through change management records that the underlying code or configuration was not modified during the period", "No testing is required for automated controls", "Test a sample of 60 items throughout the period"]'::jsonb,
 1,
 'Automated controls embedded in application code operate consistently as long as the code is unchanged. The auditor can test the control at a single point in time and then verify through IT general controls (change management records, version control logs) that no changes were made to the control logic during the examination period. This is more efficient than sampling because the control produces the same result every time.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'A service auditor performs a combination of inquiry, observation, and inspection when testing a physical access control that requires badge swipe entry to the data center. Which procedure provides the strongest evidence that the control is operating effectively?',
 '["Inquiry of management about whether the badge system is functioning", "Observation of an employee using the badge system to enter the data center", "Inspection of badge access logs showing all entries during the period and identification of any unauthorized access attempts", "Review of the vendor''s marketing materials about the badge system"]'::jsonb,
 2,
 'Inspection of badge access logs provides the strongest evidence because it covers the entire examination period and shows all entries, including any anomalies or unauthorized access attempts. Inquiry provides management''s perspective but is not corroborative. Observation confirms the control at a single point in time. Documentary evidence covering the full period provides the most comprehensive assurance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Testing Controls',
 'A service auditor is determining the appropriate sample size for testing a weekly control over the 12-month examination period (52 occurrences). The auditor assesses the control as high-risk with zero expected deviations. What is the likely sample approach?',
 '["Test only 5 occurrences because the control is routine", "Test approximately 20 to 25 occurrences given the higher risk assessment and need for greater assurance", "Test all 52 occurrences because it is a high-risk control", "Test only the most recent occurrence"]'::jsonb,
 1,
 'For a weekly control with 52 occurrences and a high-risk assessment, the auditor would select a larger sample size to achieve greater assurance. With zero expected deviations and a low tolerable deviation rate (due to high risk), approximately 20 to 25 items would typically provide sufficient evidence. Testing all 52 is not required but may be considered; testing only 5 or 1 would be insufficient given the risk level.',
 'hard');

-- SOC Reporting (+2 = 28)
insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A service organization receives its first SOC 2 Type II report with an adverse opinion because controls over logical access were pervasively deficient throughout the examination period. What does the adverse opinion communicate to report users?',
 '["The controls had minor issues that were promptly corrected", "The system description was not fairly presented or the controls were not suitably designed or did not operate effectively in a material and pervasive manner", "The service organization should cease operations immediately", "The report is incomplete and additional testing is needed"]'::jsonb,
 1,
 'An adverse opinion is the most severe type of modified opinion. It communicates that the deficiencies identified are both material and pervasive, meaning they affect the system description, control design, or operating effectiveness to such an extent that a qualified opinion would not adequately convey the severity. Report users should carefully assess the implications for their own operations and risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(5, 'SOC Reporting',
 'A SOC report includes an "other information" section provided by the service organization that is not covered by the service auditor''s opinion. What is the auditor''s responsibility regarding this section?',
 '["The auditor must express an opinion on the other information section", "The auditor reads the other information to identify material inconsistencies with the system description or material misstatements of fact, but does not express an opinion on it", "The auditor ignores the other information section entirely", "The auditor must remove the other information section before the report is issued"]'::jsonb,
 1,
 'The service auditor reads the other information section to identify any material inconsistencies with the audited system description or any apparent material misstatements of fact. However, the auditor''s opinion does not cover this section. If inconsistencies or misstatements are identified, the auditor discusses them with management and may take further action depending on the resolution.',
 'hard');
