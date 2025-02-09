---
category: infrastructure
tags: [network, infrastructure, kubernetes, english]
---

# Post Meta-Data

| Datum      | Sprache                  | Autor                                  | Beschreibung                                      |
|------------|--------------------------|----------------------------------------|-------------------------------------|
| 11.12.2023 | Englisch                 | Prüfer, Claus (Chief-Prüfer)           | Eine Kubernetes Retrospektive / Übersicht der Basis-Features und deren Anwendbarkeit in Real-Live Szenarien                                             |

## Kubernetes Summary

**My very fine-elaborated conclusion: 50% Love it - 50% Hate it.**

The Google Kubernetes Project - a Docker Distribution Engine - was born round about 14-years ago. Today it plays a major role in efficiently setting up / managing big virtual infrastructure and scaling Cloud-Applications at Enterprise and Carrier level ![Cloud](emoji_cloud_50x50.png).

Kubernetes has been designed from ground-up to implement the following features:

```

* Network Abstraction / Virtualization for Layer-3 (IP) and Layer-7 (Application)
* Application Scaling / Performance Management
* Application Storage / Memory Management
* Modern / declarative .yaml / JSON based Object Configuration
* Single Point Of Failure-less Infrastructure
* Enhanced Load-Balancing Features
* Custmizable Role Based Access / DevOps / App-Functionality
* Optimized Developer / Operations Teamwork
* External API / Application Integration (e.g. OpenStack or Ingress-NGINX)
* Rolling Updates (Realtime Live-Updates with 0% service outage)
* Docker Container Management / Integration
* Detailed, Transparent Service / Application Metrics
* Strutured / Auto-Updated Documentation
* Transparent OpenSource Project / Source-Code insight

```

**Oppinion**

> - "Whoa!" ![HeartEyes](emoji_heart_eyes_16x16.png)![HeartEyes](emoji_heart_eyes_16x16.png)![HeartEyes](emoji_heart_eyes_16x16.png), this is what Network-Administrators and Developers have dreamt of. "Working like a lot: *yesterday*", "I will save the time of my life / *always on* **booking.com**".
> - Real-Live scenarios unfortuanetly show a complete different behaviour "in some parts". The complexity / deep encapsulated dependencies / finding solutions often takes cost intensive / **extraordinary** long times.
> - **Infact** the 50% astonishing-nice features often make forget the other, dark side of the Kubernetes-Moon ![MoonFace](emoji_quarter_moon_face_16x16.png)![MoonFace](emoji_quarter_moon_face_16x16.png)![MoonFace](emoji_quarter_moon_face_16x16.png).

# Implementation

Kubernetes is written in the Programming-Language Go. Go is a C-similar static typed Programming-Language with additional Interpreter-related functionality (memory safety, garbage collection and CSP-style concurrency). This adds quite a lot of security when used by inexpirienced developer, also it is compiled to machine-code, so its quite fast. Also a rich set of Network-Libraries are included which makes it easier for inexperienced / non-network-experts (Layer-2, Layer-3 and Layer-7) to be more productive.

Programming in an OOP-based way is possible (functional), but not comparable to classical C++ / Python implementations. To achieve OOP behaviour workarounds must be used, extended OOP-Patterns, even basic (e.g. overloading) bring the *implement-much-too-much-leading-to-unclean-code* way along. ![ThumbsDown](emoji_thumbs_down_50x50.png) ![ThumbsDown](emoji_thumbs_down_50x50.png)

**Oppinion**

> - Due to increasing project-complexity we recommend using a different Programming-Language, e.g. Python could have saved multiple development years, Go-Lang in our oppinion has been the wrong strategy.  ![Snowman](emoji_snowman_50x50.png)
> - Also we do not understand why a control-layer Application needs to be written in a compiled Programming Language, often the Update-Processing by kubectl for multiple backend actions takes extraorbitary long time and could be implemented in Commodore C64 Basic.  ![Sleeping](emoji_sleeping_50x50.png) ![Zzz](emoji_zzz_50x50.png)

# Engineering Quality

The Network Layer is very bad implemented in my oppinion. Dispite everything is working fine, the way how it is implementation really is a pain in the \$\$\$. If you are an experienced Layer-2 - Layer-7 Network / IP-Engineer multiple methods especially for Load-Balancing / Proxy / Service Requests - that it curls up your toenails. ![Astonished](emoji_astonished_50x50.png)

```

* NAT (Network Address Translation) used at unnessecary internal locations
* No 100% Single-Point-Of-Failure-Less Infrastructure (like promised)
* Internal Service Abstraction uses deviant Cross-Dependency-Definitions

```

**Oppinion**

> - Kubernetes indeed is working fine when configured correctly. On the other side: our modern engineering demands should be based on much much higher interest!

# IP Assignment / DNS

IP / DNS / Hostname Assignment, done in a new way. Indeed the concept behind is a really good one. Say incoherent, loose distributed Configuration-Files goodbye. All Definitions are handled via centralized .yaml (XML or JSON like) hierarchical organized Meta-Data.

**Oppinion**

![Crown](emoji_crown_50x50.png) Looks like king.

> Chuck-Norris secretly is crying in bed all night because he didnt invent this masterpiece of idea! ![Bulb](emoji_bulb_16x16.png) ![Bulb](emoji_bulb_16x16.png) ![Bulb](emoji_bulb_16x16.png)
> Adding multiple Love-Points ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png) 

# Service Abstraction

But do not think setting up a multi-tier-level Service-Architecture will be an easy-going task. The Abstraction-Models behind the scene are sometimes highly encapsulated and sometimes painfull to understand.

Especially finding solutions in the Kubernetes-Documentation and / or Internet often lets you go round in circles. Reaching the origin without having found a suitable solution is a commonly arising fact.

**Oppinion**:

![Computer](emoji_computer_50x50.png) 42 infact seems the answer to the "Great Question" of "Life, the Universe and Everything".

> This is sometimes quite annoying because you really do not find a satisfying answer in an adequate ammount of time / going in circles round and round. ![RedCircle](emoji_red_circle_50x50.png) 

# Documentation

The Kubernetes Documentation looks very good at first sight. Both Graphical Style and Content look above average. After digging deeper, spending days searching for problem resolutions, you may think: "Did Google blend me?", "Am i complete dully?" or even "Live has no meaning anymore". ![Disappointed](emoji_disappointed_50x50.png) 

Like covered in the last section, documentation links you to sub-section 1, links you to sub-section 2, links you to subsection 3, links you to sub-section 4 and swoosh: you are back at sub-section 1 without any further progress. ![Disappointed](emoji_disappointed_50x50.png) ![Disappointed](emoji_disappointed_50x50.png)

**Oppinion**

![Beers](emoji_beers_50x50.png) ![Cocktail](emoji_cocktail_50x50.png) Honestly! ![Beer](emoji_beer_50x50.png) ![GlassWine](emoji_wine_glass_50x50.png)

> Go to your refridgerator, consume alcoholic content, step further to your drug cabinet. Finally call your doctor for prescription-only meds and finally read Kubernetes-Documentation; could not add anythin due to following input ![Pill](emoji_pill_50x50.png) ![Dizzy](emoji_dizzy_50x50.png) ![Cocktail](emoji_cocktail_50x50.png) ![Mushroom](emoji_mushroom_50x50.png) ![Ambulance](emoji_ambulance_50x50.png).

# Metrics / Logging

"Uhh", you think, after this incredible new-style-idea of getting highly structured XML configuration meta-data from each Kubernetes Object via Web-Service. Good bye old file-based-logging, receiving centralized pre-structured JSON metadata with meaningful separated log properties. I am so, so much excited!

Fiddlesticks! It is even worse, it is proposed by Kubernetes-Documentation setting up a centralized logging that needs NFS-Storage configuration for pod log writes, external Log-Aggregator plugins and more (???). WTF?

"Ahh", and it is adviced using two (yes 2) external software products (*Prometheus* **and** *Grafana*) which aggregates / converts log files into retrievable JSON metadata. Also Documentation sucks. ![Rage](emoji_rage_16x16.png) ![Rage](emoji_rage_16x16.png) ![Rage](emoji_rage_16x16.png) This is not what i expected!

Call Chuck immediately, Last name: Norris. Could you please make Cow-Bernetes behave again! ![Ambulance](emoji_ambulance_50x50.png) ![Hostpital](emoji_hospital_50x50.png)

> While Cow-Bernetes resides in hospital, Chuck wrote us a centralized log-collector script (Windows Scripting Host) compatible with Windows-NT (took him only 5 minutes) ![Bulb](emoji_bulb_16x16.png) ![Bulb](emoji_bulb_16x16.png) ![Bulb](emoji_bulb_16x16.png).

**Oppinion**

> Kubernetes sometimes can turn you really upside-down. This feature should have been implemented since Kubernetes Version "1.0". Adding two hate points. Rotten ![Tomatoe](emoji_tomatoe_50x50.png) ![Tomatoe](emoji_tomatoe_50x50.png).

# LoadBalancing / Ingress

"Yippie", Load-Balancing got a new name "Ingress". Thats why Service-Abstraction under Kubernetes is bull\$\$\$\$. I assume somewhere in the Base-Abstraction-Layer 14 years ago nobody thought about Transport Layer Security and HTTP Protocol (Port 80, 443) being such important.

HTTP gets a different handling in Kubernetes than other TCP/IP ports and is not handled in a generic way. Especially for unskilled newbies, this could lead to intense brain-\$\$\$\$.

**Oppinion**

> If Service abstraction is configured correctly, kubernetes works like a charm! But setting up detailed Service Properties / Relations in the correct way sometimes could get you mad.

> Traditionally Ingress describes incoming network packets from a non-internal network. Vice versa Egress outgoing packets. Somehow ongoing development starts mixing the OSI-Layers which leads to more misunderstandings.

**Oppinion**

![TropicalDrink](emoji_tropical_drink_50x50.png) Its between.

> So peculiar the configuration might be: ![Tomatoe](emoji_tomatoe_50x50.png) the result is: ![LoveLetter](emoji_love_letter_50x50.png). 

# Role Based Access Control

The Role-Based-Access-Control system combined with .yaml definitions indeed is a really nice concept. Also if setup correctly in combination with a Service-Controller element (Application Middleware) it enhances security and makes DevOps (Development / Operations) work much much easier.

**Oppinion**

![Dart](emoji_dart_50x50.png) Direct hit!

> We have to admin: adding 2 Love-Points or maybe ... even 3: ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png).

# Failover / Redundancy

The Kubernetes-System as a whole provides Failover and Redundancy, An additional OpenStack VM Layer (2 or more Virtual Machines) distributes the Kubernetes Objects / Pods on multiple redundant hardware; this extends Reliability nearly to 100%.

The Network-Controller model has a long history. First Implementations under Linux, redundancy daemons - STONITH (Shot the other node in the head), VRRP (Virtual Redundancy Protocol) and simlilar came up. Connecting multiple Appication-Servers via Serial to interact when Ethernet-Networking failed for the Monitoring-Protocol were usual concepts.

These concepts currently drive a Kubernetes "Multi-Ingress-Loadbalancer-Concept". This implies one "virtual" Load Balancer (commonly Ingress-NGINX) will take over when one crashed. The concept is not generic where it should be! A Hardware, SDN (Software Defined Networking) solution could solve the problem. We will discuss this topic in a following Kubernetes Post.

**Oppinion**

![Microscope](emoji_microscope_50x50.png) Take a little closer look.

> Kubernetes currently is the best scaling product on the market, even if improvable by new-technology like SDN. 2 Love-Points: ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png).

# Scaling

"Huh - Hah", Johnny Bravo would say. Scaling is another important topic. Kubernetes Love-Points going up. Kubernetes uses Linux cgroups for process-memory separation as fundament. If Kubernetes is configured correctly (Services / Network Infrastructure) the Administrator is able to automatically scale up Application / Infrastructure on occuring peaks and scale down when the peaks decrease again.

**Oppinion**

![Cool](emoji_cool_50x50.png) This is cool man (Milka).

> Again adding 4 Love-Points. ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png) But: **Test Memory Settings** sufficient before deploying mission critical Services. Linux OOM-Killer is a \$\$\$\$\$. :top:

# Rolling Updates

Rolling updates, Docker-Container-Updates in Runtime without switching Environments and zero (0) downtime. Nothing to do, just update the Docker container images in your linked registry and push the button. Done.

Prerequisite of course is a solid Test-Framework. If the application inside the docker container misbehaves after update: Game Over.

**Oppinion**

![Star](emoji_star_50x50.png) Superb Feature!

> This is an additional love-increasing feature, add 2 Love-Points ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png).

# System Integration

Wanna be a Systems-Integrator? Better not with Kubernetes. Bloating, bloating, bloating. Thats the part where the Design-Conecpt shows multiple negative impacts. Defining simple types can be very time consuming, the meta-data (YAML / JSON) for some configuration properties of your application in my oppinion is kind of too deep abstracted.

This could lead to much more maintaining effort for your kubernetes-integrated-app than you imagined. If you compare e.g. the popular nginx web-server. It is used as 3-party module by Kubernetes as "ingress-nginx" Load-Balancer / Reverse-Proxy. A nginx configuration also for complex (TLS Client-Cert-Authentication) setups is non-trivial compared to the "non-Kubernetes" version.

Porting "My-App" to Kubernetes could be very time consuming, but no other software-product currently on the market provides this functionality. Also a bloated setup / over-average work could justify all the Kubernetes-Advantages: just be aware of huge implementation effort!

**Oppinion**

![Rocket](emoji_rocket_50x50.png) Dispite negative oppinion at first.

> This is an additional love-increasing feature, add 2 Love-Points: ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png).

> The industry should overthink developing a *Kubernetes v2.0*, *Final-rounded-Kube* or similar, it could be worth the effort: ![Star](emoji_star_50x50.png) ![Star](emoji_star_50x50.png) ![Star](emoji_star_50x50.png).

# Development Efficiency

## Kubernetes Apps

Using Kubernetes the correct way, development speed / DevOps efficiency especially in large environments can be improved by impressive amounts. Additionally combining new-style, agile development-methods even can increase productivity further.

Compared to old-fashioned paper-work (see following workflows) it is a gigantic improvement / time saving.

**Oldfashioned Development-Lifecycle**

```

1. RFP (Request for Proposal) => RFC (Request for Comment)
2. Update RFC => Projectmanager
3. Projectmanager => Coder
4. Coder => Test
5. Test => Failure
6. Failure => Repeat from step

```

Even worse: some components do not behave like expected, back to step 1, update RFP => **phew**.

> Fatboy Slims slightly modified whiteness: "Eat, Sleep, Code, Repeat" could lead to sudden death ![Skull](emoji_skull_16x16.png) ![Skull](emoji_skull_16x16.png) ![Skull](emoji_skull_16x16.png) regarding the oldfashioned way.

**Oppinion**

![CheckeredFlag](emoji_checkered_flag_50x50.png) Race speed improved!

> We will go ![Rocket](emoji_rocket_50x50.png) ![Rocket](emoji_rocket_50x50.png) ![Rocket](emoji_rocket_50x50.png) now! ![LoveLetter](emoji_love_letter_50x50.png) love increasing.

## Kubernetes Base

As stated out some topics earlier, the following changes could help improve development times even much more:

```

* Use better suited (real OOP) Programming Language as Base
* Develop nice Network-Abstraction-Layer modules for Component-Inter-Communication
* Do not integrate REST as OOP Abstraction Model, use direct JSON POST
* Integrate better API Abstraction Model(s)

```

**Oppinion**

![Rabbit](emoji_rabbit_50x50.png) Race speed decreased.

> "The speed is down", a famous track by Kenny Loggins. Or was it: "The heat is on". No love, no hate, just a bit ![Disappointed](emoji_disappointed_50x50.png).

# Continuous Integration

Multiple CVS management tools like *GitLab* already ship with Kubernetes integration. We will not go too deep in detail, if you need more information you should visit the GitLab documentation. Currently i just inspected GitLab no other similar tools.

A first look in GitLab Kubernetes integration tells us we need some communication daemon installed somewhere to communicate with your Kubernetes-Cluster. I am a fan of simple solutions without need of installing 5000 additional components which need updates, maintaince, time. Multiply with each component used: even more time. Nobody really wants that.

As GitLab also has Terraform as Infrastructure as Code (IaC) Plugin and a Docker Registration including hash-based Authentication management, this *could* make the use of the direct Kubernetes Plugin obsolete.

I am not too deep into the CI topic, but in projects our DevOps team tries to avoid overhead; so we use our own *Kubernetes-Installer* for deployment (includes different Kubernetes-Environments, non GitLab managed). Testing is triggered in GitLab via Docker-Containers, Web-App-Tests use Selenium framework. Our installer generates *Terraform-Templates* for all environments created: Wham bam, thank you maam!

**Oppinion**

![Fire](emoji_fire_50x50.png) On fire if correctly implemented.

> If CI is implemented in the correct way (e.g. in combination with GitLab): im loving it: ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png).

# Security

Security currently plays a major role for direct internet-connected systems and company-networks. To be on the safe side with Kubernetes you have to be aware of multiple security concepts and how they are implemented.

A short introduction / overview of currently global adapted security-mechanism:

```

* Time-based Token (Hash) Authentication
* Smart-Card Authentication
* 2 Factor Authentication / TPM / Biometrics
* Single Sing On / Password Vaults

```

**Oppinion**

![Unlock](emoji_unlock_50x50.png) You feel a bit unlocked / insecure sometimes.

> Security should play a much more intense role in Kubernetes. Read the following cahpters to understand: ![ThumbsDown](emoji_thumbs_down_50x50.png).

## Time-based Token Auth

Currently "Time-based Token Authentication" is used by nearly all Cloud Services including Docker and Kubernetes. A temporarily (limited valid time period) generated hash (by Hardware Security Module) is used to sign in or authenticate backend operations. The drawback: like a Username or Password also a Plaintext-Hash is readable in multiple attack vectors and easily can be stolen by expirienced attacker.

To use Hash based Keys for Authentication you should consider running your deployment inside hardened / non graphical Linux / Unix Containers or Virtual Mashines.

The following attack vectors exist for Hash based Token Authentication:

```

* Read by Keylogger installed on client computer
* Transport SSL Downgrade Attack, read by "Man In The Middle"
* Transparent SSL Proxy Attack, e.g. @Carrier "Man In The Middle"
* Chipset or RAM Controller Bugs like Spectre(v2), Retbleed and similar
* Similar Side-Channel-Attacks

```

## Smartcard Auth

Smart-Card / USB-Token Authentication use PKCS 11 / PKCS 15 specifications for Card / Crypto communication. Authentication uses Private- / Public-key mechanism. The Public-key will be put on the side where you want to authenticate to (public visibility does not break security), the Private-Key on card can not be accessed directly, just to perform cryptographic operations with data directly accessible / sent to, e.g encrypt or decrypt data. In theory, if all crypt and decrypt operations are not leaving the card, the mechanism is officially classified secure ![CreditCard](emoji_creditcard_50x50.png).

Most services including SSH use a session-wide Temporarily generated Key derived from the Private-Key on Smartcard for Session-Encryption / Decryption.

Direct pkcs11 / pkcs15 Authentication has been rejected in ***kubectl*** as Authentication Method because of Temp-Key Derivation. I am pretty sure that the implementor(s) misunderstood the conecpt behind Assymetric-Key-Encryption and PKCS 11. It is not possible to just steal the derived key and you are able to log in afterwards without the Smartcard containing your real Private-Key.

Otherwise it is the most secure mechanism currently used worldwide. Because no Plain-Text compare (RSA Prime-numbers for Asymetric Keys calculation is used) for Client on the Server is done (unlike readable / stealable Session-Hashes) the procedure is 100% safe.

Also the 2-way Public / Private Key Negotiation is used in modern Wifi Encryption (Software, WPA3) and is mathematically classified secure. Only Side-Channel Attacks are usable to hack inside (like Wireless-Portal Man In The Middle). We should re-open the Kubectl pkcs11 feature request and insist on implementation, also a Net-HSM pkcs11-proxy using Derived-Keys (AWS like) should be a good idea ![LockWithKey](emoji_closed_lock_with_key_50x50.png).

Attack Vectors:

```

* Read out Smartcard PIN when using no PIN-PAD
* Fine-grained Audio Key-Generating-Guessings while near TPM or Smartcard
* Multiple Side-Channel Attacks

```

> **Important**
> Implementing pkcs11 / pkcs15 Smartcard Authentication in Keystone SSO is working but useless.
> The Keystone Proxy generates readable Browser-Session-Hashes (Cookie or direct) which can be easily stolen by Cross-Site.

## TPM / Biometrics

2 Factor Authentication has become very popular in todays time. Smartcard-Authentication using PIN is officially accepted as true 2 Factor Authentication. Not-using an external PIN-PAD could infact be a serious security risk because the Smartcard-PIN could be sniffed by a keylogger installed on the client computer.

Google or Microsoft Authenticator as Android / Phone-App also seem to offer a **quite** strong Authentication, they use the phones TPM to generate assymetric codes. Additionally an authenticator interface on application side must exist to communicate with the Handy-Authenticator-App (e.g. GitLab) over the internet.

> Hey Granma, have ya eard bout new 0-day Android? :boom: Whaaat did yoou saaay? **0-day Android**. Ah yea my boy, already h4x0r3d Grandpas mobile ![Muscle](emoji_muscle_50x50.png) ...

WebAuthn / FIDO is a quite fresh and secure way to integrate TPM assisted credentials (Biometric Fingerprint, Face Recognition), it has been added into GitLab and OpenStack Keystone quite recently. It uses already deployed TPM credentials. It is not only usable with Microsoft Windows 11 and Edge, also Firefox, Chrome and Opera support it. Use it whereever you can!

> Also 2Factor Authentication by Google / Microsoft Authenticator increases Login Security by far. Simple Session-Hash hijacking is not possible with activated 2Factor Auth!

**Be aware of**

```

1. BIOS / UEFI Updates force Key-Regeneration / Must use Fallback-Keys
2. Fallback Keys also can be stolen when not handled correctly
3. Real hacking probably does not rely on username / password

```

## Single Sing On

Single Sign On is a big security threat in my oppinion. It generates "temporarily" but "alwyays" stealable Plain-Text Hashes.

You only get around this by using real 2Factor Authentication (Authenticator App on Mobile) and / or by TPM / Smartcard with drastically reduced Rekeying-Intervals.

> Currently: please do not use plain Single Sign On without 2Factor Auth: very dangerous!

## Password Vaults

Password Vaults also do not really solve the problems connected to the "Plain-Text-Disaster". The Hash will be transmitted (hopefully encrypted) over the network, afterwards compared (byte for byte) and afterwards if accepted, CPU instruction pointer will step onwards processing API, returning data or restricted web-site content.

Intel SGX could make a Password Vault much more secure, but be aware of tools like Cheat-Engine (Windows) which is able to compare huge amounts of RAM in very short times to detect simple value changes like player-live-count. This easily could be adapted to Hashes; they always have the same byte length, easy to detect in RAM locations (probably after SGX-decryption as well).

The only way of 100% secure net-authentication is Asymetric-Key-Exchange where both sides never see the same keys / the complete key is never transmitted via network.

> Adressing to all Security-Implementors: the current described concept protects from key stealing on client and server side. A plain-text / recovery hash (even generated by HSM) does not provide protection at all because i can copy and use for authentication as plain-text. This is not the case with Private / Public Key Cryptography ![Key](emoji_key_50x50.png).

## Kubernetes Internal

Internally Kubernetes should improve. The **Single-Sign-On** Smartcard-Workaround should be replaced with direct PKCS 11 / PKCS 15 integration inside ***kubectl***.

> As workaround use 2Factor Authentication with use of Google / Microsoft Authenticator if provided in Kubernetes directly or 3d Party-Tools like GitLab.

# Hybrid Cloud / IPv6

Currently Kubernetes 1.20 supports IPv4 / IPv6 dual stack. Common Kubernetes Cloud-Provider do not provide IPv6 support. I will test this locally with Minicube, especially if IPv6 disabled this crappy internal NAT and will inform in a later post. Pray to god: IPv6 NAT would be **the horror**.

Regarding Hybrid Cloud infrastructure: i recommend a hybrid-infrastructural setup (inhouse-datacenter[s] connected to cloud-datacenter[s]) especially for Enterprise / Carrier Grade customer. On the long run, careful selected and placed at the correct place (on-premise / datacenter) will save a lot of money, reduce IP-traffic and implementing effort ![AlarmClock](emoji_alarm_50x50.png).

The Redhat OpenShift Platform in combination with consulting and using certified Kubernetes Applications will help you setting up your Kubernetes Hybrid Infrastructure in record time.

# Performance

I did not really measure performance of multiple ported Web-Applications in detail. Also i do not really administer very busy sites. I am the IT-Architect / Coder / Dev part of DevOps, not the Admin part.

I tested some of our Web-Applications (Python-Backend-Server, PostgreSQL 14 Database) with Default TLS and Self-Signed Client-Certificates. The overall performance / response times look very good. The applications do not really rely on a rock-solid scaling-model, so i did not really emphazise.

Kubernetes as infrastructure does not automatically scale your Application endlessly. To achieve such a behaviour you also must implement and configure other components with horizontal scaling, e.g. PostgreSQL using binary replication. And still: no production-ready read-scaling. Your Application is self-responsible for handling the read load-balancing, or again, use additional 3d-party software. Also an additional write-queue mechnism should be thought of or using write-scalable backends if you plan a high-loaded platform. ![CheckeredFlag](emoji_checkered_flag_50x50.png) ![CheckeredFlag](emoji_checkered_flag_50x50.png) 

**Oppinion**

![cross](emoji_monorail_50x50.png) Traveling modern and fast.

> Auto-scale feature is rock-solid, giving out 2 Love-Points ![LoveLetter](emoji_love_letter_50x50.png) ![LoveLetter](emoji_love_letter_50x50.png) 

# Ported Applications

Many OpenSource products ported (modified) to run on Kubernetes Infrastructure exist:

```

* NGINX (Ingress-NGINX)
* Selenium Browser Automation Framework
* Kubegres (PostgreSQL)
* React / Node.JS
* Elasticsearch
* Roundcube Webmail
* Postfix
* Apache Kafka
* GitLab 

```

# Pro / Contra Matrix

The following matrix shows a summary of Positive / Negative aspects.

| Feature                                                     | Type                  | Weight in % | Why                                  |
|-------------------------------------------------------------|-----------------------|-------------|
| Centralized Metrics / Monitoring                            | ![cross](icons8-cross-50.png) Negative                     | 80%           | Not working as expected / not working at all | 
| Object Relation / Interaction                               | ![cross](icons8-cross-50.png) Negative                     | 50%           | Sometimes bad relations                      |
| Network Abstraction                                         | ![cross](icons8-cross-50.png) Negative                     | 50%           | Internal NAT where not needed                |
| Non-modern Security / Authentication Implementations        | ![cross](icons8-cross-50.png) Negative                     | 30%           | No direct PKCS 11 / PKCS 15 implementation   |
| Declarative Object Definition                               | ![cross](icons8-ok-50.png) Positive                        | 90%           | In general very good abstraction, seldom: weired cross-references |
| Autoscaling Applications On Demand                          | ![cross](icons8-ok-50.png) Positive                       | 90%            | Presumed deep insider knowledge              | 
| Easy IP Assignment / DNS Integration                        | ![cross](icons8-ok-50.png) Positive                       | 90%            | Very good conecept, but network implementation sometimes bad |
| Service Definition / Ingress                                | ![cross](icons8-ok-50.png) Positive                       | 50%            | Theoretical excellent, declarative templates sometimes misleading |
| Security / Rebuild Cluster Lightning-fast                   | ![cross](icons8-ok-50.png) Positive                       | 80%            | Very good, but sometimes buggy in seldom circumstances |
| DevOps / Role Based Access Sytem                            | ![cross](icons8-ok-50.png) Positive                       | 70%            | Sometimes time consuming / complex           |
| Drastically increasing Productivity / Development Efficiency| ![cross](icons8-ok-50.png) Positive                       | 90%            | If handled in the correct way                |
| Rolling Updates with 0% Service Outage                      | ![cross](icons8-ok-50.png) Positive                       | 100%           | Really nice                                  |
| Existing API Abstraction-Layer for Integrating external Apps| ![cross](icons8-ok-50.png) Positive                       | 80%            | Kubernetes exclusive, no one else provides such a feature |

