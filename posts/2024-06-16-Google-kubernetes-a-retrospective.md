---
category: infrastructure
tags: [network, infrastructure, kubernetes, english]
---

# Post Meta-Data

| Date       | Language | Author                          | Description                                                                                           |
|------------|----------|---------------------------------|-------------------------------------------------------------------------------------------------------|
| 11.12.2023 | English  | Claus Prüfer (Chief-Prüfer)     | A Kubernetes retrospective / overview of core features and their applicability in real-life scenarios |

## Kubernetes Summary

**My finely-elaborated conclusion: 50% Love it – 50% Hate it.**

The Google Kubernetes Project—a Docker distribution engine—was born about 14 years ago. Today, it plays a major role in efficiently setting up and managing large virtual infrastructures, scaling applications, and supporting modern cloud-native development.

Kubernetes was designed from the ground up to implement the following features:

```
* Network abstraction / virtualization for Layer-3 (IP) and Layer-7 (Application)
* Application scaling / performance management
* Application storage / memory management
* Modern, declarative YAML / JSON-based object configuration
* Infrastructure with no single point of failure
* Enhanced load balancing features
* Customizable role-based access / DevOps / app functionality
* Optimized collaboration between developers and operations teams
* External API / application integration (e.g., OpenStack or Ingress-NGINX)
* Rolling updates (real-time live updates with zero service outage)
* Docker container management / integration
* Detailed, transparent service and application metrics
* Structured, auto-updated documentation
* Transparent open-source project / source code insight
```

**My Opinion**

> - “Whoa!” ![HeartEyes](/emoji_heart_eyes_16x16.png), this is what network administrators and developers have been dreaming of.
> - Unfortunately, real-life scenarios sometimes reveal a different story. The complexity, deeply-encapsulated dependencies, and problem-solving often require costly, extraordinary effort.
> - In fact, the 50% outstanding features can make you forget about the other, darker side of the Kubernetes moon ![MoonFace](/emoji_quarter_moon_face_16x16.png).

# Implementation

Kubernetes is written in the programming language Go. Go is a statically typed language similar to C, with additional interpreter-related functionality such as memory safety, garbage collection, and CSP-style concurrency.

OOP-style programming is possible (functionally), but not comparable to classic C++ or Python implementations. Achieving full OOP behavior requires workarounds, extended patterns, and can be cumbersome.

**My Opinion**

> - Due to increasing project complexity, we recommend using a different programming language. Python, for example, could have saved years of development. In our opinion, Go was not the best strategic choice.
> - We also question why a control-layer application needs to be written in a compiled language. Often, update processing via kubectl for multiple backend actions takes unnecessarily long.

# Engineering Quality

The network layer is poorly implemented, in my opinion. Despite everything working fine, the actual implementation is challenging for experienced network engineers.

```
* NAT (Network Address Translation) used unnecessarily at internal locations
* No truly single-point-of-failure-less infrastructure (as promised)
* Internal service abstraction uses inconsistent cross-dependency definitions
```

**My Opinion**

> - Kubernetes works well when configured correctly. However, modern engineering demands should be much higher!

# IP Assignment / DNS

IP, DNS, and hostname assignment are handled in a novel way. The concept is excellent: incoherent, loosely distributed configuration files are gone. All definitions are managed centrally via .yaml files.

**My Opinion**

![Crown](/emoji_crown_50x50.png) A kingly concept.

> Chuck Norris secretly cries at night because he didn’t invent this masterpiece! ![Bulb](/emoji_bulb_16x16.png)
> Adding multiple love points! ![LoveLetter](/emoji_love_letter_50x50.png)

# Service Abstraction

However, don’t expect setting up a multi-tier service architecture to be an easy task. The abstraction models are sometimes highly encapsulated and painful to understand.

Finding solutions in the Kubernetes documentation or online can often feel like going in circles, returning to the origin without a suitable solution.

**My Opinion**

![Computer](/emoji_computer_50x50.png) 42 indeed may be the answer to the “Great Question” of “Life, the Universe, and Everything”.

> This can be frustrating, as you often don’t find a satisfactory answer in a reasonable amount of time. ![RedCircle](/emoji_red_circle_50x50.png)

# Documentation

The Kubernetes documentation looks great at first glance—both style and content are above average. However, after digging deeper and spending days searching for solutions, you may realize:

Documentation often links you to sub-section 1, then 2, then 3, then 4, and suddenly you’re back at 1—endlessly looping.

**My Opinion**

![Beers](/emoji_beers_50x50.png) ![Cocktail](/emoji_cocktail_50x50.png) Honestly! ![Beer](/emoji_beer_50x50.png) ![GlassWine](/emoji_wine_glass_50x50.png)

> Visit your fridge, consume some alcohol, then head to your medicine cabinet. Finally, call your doctor for prescription meds before diving back into the Kubernetes docs; couldn’t add a better summary.

# Metrics / Logging

You might think the structured XML configuration metadata from each Kubernetes object via web service is fantastic. Goodbye, old file-based logging!

Fiddlesticks! It’s worse than expected. Kubernetes documentation suggests setting up centralized logging with NFS storage for pod log writes, external log aggregator plugins, and more.

It also recommends using two (yes, two) external products—Prometheus and Grafana—to aggregate and convert log files into retrievable JSON metadata. The documentation here is not helpful.

Call Chuck immediately—last name: Norris. Can he make Cow-Bernetes behave again? ![Ambulance](/emoji_ambulance_50x50.png)

> While Cow-Bernetes is in the hospital, Chuck wrote us a centralized log collector script (Windows Scripting Host) compatible with Windows NT—in only 5 minutes! ![Bulb](/emoji_bulb_16x16.png)

**My Opinion**

> Kubernetes can really turn you upside-down. This feature should have been implemented since version 1.0. Adding two hate points. Rotten ![Tomatoe](/emoji_tomatoe_50x50.png)

# Load Balancing / Ingress

“Yippie,” load balancing now has a new name: “Ingress.” But service abstraction under Kubernetes is problematic. I assume nobody thought about true abstraction 14 years ago.

HTTP is handled differently than other TCP/IP ports and not in a generic way. For newbies, this can lead to intense brain overload.

**My Opinion**

> If service abstraction is configured correctly, Kubernetes works like a charm! But setting up detailed service properties and relationships can drive you mad.

> Traditionally, ingress describes incoming packets from external networks and egress outgoing packets. Ongoing development sometimes mixes OSI layers, leading to more confusion.

**My Opinion**

![TropicalDrink](/emoji_tropical_drink_50x50.png) It’s somewhere in between.

> However peculiar the configuration, the result can be both rotten ![Tomatoe](/emoji_tomatoe_50x50.png) and lovely ![LoveLetter](/emoji_love_letter_50x50.png).

# Role-Based Access Control

The role-based access control system combined with YAML definitions is a really nice concept. If set up correctly in combination with a service-controller element (application middleware), it works well.

**My Opinion**

![Dart](/emoji_dart_50x50.png) Direct hit!

> We must admit: adding 2, maybe even 3, love points! ![LoveLetter](/emoji_love_letter_50x50.png)

# Failover / Redundancy

Kubernetes provides failover and redundancy. An additional OpenStack VM layer (two or more VMs) distributes Kubernetes objects/pods on multiple redundant hardware.

The network-controller model has a long history. Early Linux implementations, redundancy daemons—STONITH (Shoot The Other Node In The Head), VRRP (Virtual Redundancy Protocol), and similar—laid the groundwork.

These concepts now drive Kubernetes’ “multi-ingress load balancer” concept. This means one virtual load balancer (commonly Ingress-NGINX) takes over when another crashes. The concept is not perfect but works.

**My Opinion**

![Microscope](/emoji_microscope_50x50.png) Take a closer look.

> Kubernetes is currently the best scaling product on the market, even if it could be improved by new technologies like SDN. Two love points! ![LoveLetter](/emoji_love_letter_50x50.png)

# Scaling

“Huh-hah,” as Johnny Bravo would say. Scaling is another key topic. Kubernetes love points go up! Kubernetes uses Linux cgroups for process/memory separation as a foundation. If configured correctly, it performs admirably.

**My Opinion**

![Cool](/emoji_cool_50x50.png) This is cool, man (Milka).

> Adding 4 love points! ![LoveLetter](/emoji_love_letter_50x50.png)

# Rolling Updates

Rolling updates—Docker container updates in runtime without switching environments and zero downtime. All you need to do is update the container images in your registry and push the buttons.

Of course, a solid test framework is essential. If the application inside the container misbehaves after an update: Game Over.

**My Opinion**

![Star](/emoji_star_50x50.png) Superb feature!

> This is another love-increasing feature—add 2 love points! ![LoveLetter](/emoji_love_letter_50x50.png)

# System Integration

Want to be a systems integrator? Better not with Kubernetes. Bloat abounds. This is where the design concept shows multiple negative impacts. Defining simple types can be very time-consuming.

This can mean more maintenance effort than you expected. Compare the popular nginx web server, used by Kubernetes as “ingress-nginx.”

Porting “My-App” to Kubernetes can be very time-consuming, but no other software currently provides this breadth of functionality. The extra work may be justified.

**My Opinion**

![Rocket](/emoji_rocket_50x50.png) Despite initial negative opinions:

> This is another love-increasing feature—add 2 love points! ![LoveLetter](/emoji_love_letter_50x50.png)

> The industry should consider developing *Kubernetes v2.0*, *Final-Rounded-Kube*, or something similar—it could be worth the effort! ![Star](/emoji_star_50x50.png)

# Development Efficiency

## Kubernetes Apps

Used correctly, Kubernetes can dramatically improve development speed and DevOps efficiency, especially in large environments. Combining agile methods adds even more benefit.

Compared to old-fashioned paperwork (see workflows below), it’s a huge improvement.

**Old-fashioned Development Lifecycle**

```
1. RFP (Request for Proposal) → RFC (Request for Comment)
2. Update RFC → Project manager
3. Project manager → Coder
4. Coder → Test
5. Test → Failure
6. Failure → Repeat from step 1
```

Even worse: some components don’t behave as expected, so back to step 1. **Phew.**

> Fatboy Slim’s slightly modified wisdom: “Eat, Sleep, Code, Repeat” could lead to sudden death ![Skull](/emoji_skull_16x16.png)

**My Opinion**

![CheckeredFlag](/emoji_checkered_flag_50x50.png) Race speed improved!

> We’re off! ![Rocket](/emoji_rocket_50x50.png) Love points increased.

## Kubernetes Base

As stated earlier, the following changes could help improve development times even further:

```
* Use a better-suited (real OOP) programming language as the base
* Develop improved network abstraction modules for component inter-communication
* Don’t integrate REST as an OOP abstraction model; use direct JSON POST
* Integrate better API abstraction models
```

**My Opinion**

![Rabbit](/emoji_rabbit_50x50.png) Race speed decreased.

> “The speed is down,” as Kenny Loggins said. Or was it “The heat is on”? No love, no hate, just some disappointment ![Disappointed](/emoji_disappointed_50x50.png)

# Continuous Integration

Multiple CVS management tools like GitLab ship with Kubernetes integration. For details, visit the GitLab documentation. Current integrations require a communication daemon to interact with the Kubernetes cluster.

I favor simple solutions without extra daemons. GitLab also has Terraform for infrastructure as code, a Docker registry, and hash-based authentication. This could make direct Kubernetes plugins unnecessary.

In our projects, the DevOps team tries to avoid overhead, so we use a custom *Kubernetes installer* for deployment (includes various environments, not just GitLab).

**My Opinion**

![Fire](/emoji_fire_50x50.png) On fire if properly implemented.

> If CI is implemented correctly (e.g., with GitLab), I love it! ![LoveLetter](/emoji_love_letter_50x50.png)

# Security

Security is currently paramount for internet-connected systems and company networks. To be safe with Kubernetes, you must understand multiple security concepts and how to apply them.

Here’s an overview of currently global security mechanisms:

```
* Time-based token (hash) authentication
* Smart-card authentication
* 2-factor authentication / TPM / biometrics
* Single sign-on / password vaults
```

**My Opinion**

![Unlock](/emoji_unlock_50x50.png) Sometimes you feel a bit “unlocked” or insecure.

> Security should play a much more prominent role in Kubernetes. Read the following chapters for details. ![ThumbsDown](/emoji_thumbs_down_50x50.png)

## Time-based Token Auth

Most cloud services, including Docker and Kubernetes, use “time-based token authentication.” A temporary hash (via a hardware security module) is generated for limited validity.

For secure hash-based authentication, consider deploying inside hardened, non-graphical Linux/Unix containers or virtual machines.

Attack vectors for hash-based token authentication:

```
* Keylogger on client computer
* Transport SSL downgrade (man-in-the-middle)
* Transparent SSL proxy attacks (carrier MITM)
* Chipset or RAM bugs like Spectre(v2), Retbleed
* Other side-channel attacks
```

## Smartcard Auth

Smart-card/USB token authentication uses PKCS 11/15 for crypto communication. Private/public keys are used for session encryption. Direct PKCS 11/15 authentication was rejected in ***kubectl*** due to temporary key derivation—likely a misunderstanding.

Otherwise, it’s the most secure mechanism currently used worldwide. Only side-channel attacks, like WiFi encryption, are viable.

Attack vectors:

```
* Reading smartcard PIN without PIN-pad
* Audio-based key generation guessing near TPM/smartcard
* Multiple side-channel attacks
```

> **Important**
> Implementing PKCS 11/15 smartcard authentication in Keystone SSO works but is useless. The proxy generates readable browser session hashes that can be easily stolen via cross-site scripting.

## TPM / Biometrics

2-factor authentication is now very popular. Smartcard authentication with PIN is officially “true” 2FA. Not using an external PIN-pad can be risky.

Google/Microsoft Authenticator apps use phone TPM to generate asymmetric codes. WebAuthn/FIDO is a secure way to integrate biometrics (fingerprint, face recognition) and is now supported in GitLab/OpenStack.

> 2FA via Google/Microsoft Authenticator greatly improves login security. Session hash hijacking isn’t possible if 2FA is active.

**Be aware of:**

```
1. BIOS/UEFI updates force key regeneration; must use fallback keys
2. Fallback keys can be stolen if not handled correctly
3. Real hacking often doesn’t rely on username/password
```

## Single Sign-On

Single sign-on is a major security risk. It generates “temporary” but “always” stealable plain-text hashes.

Mitigate risk by using real 2FA (authenticator app) and/or TPM/smartcard with frequent re-keying.

> Please don’t use plain SSO without 2FA—it’s very dangerous!

## Password Vaults

Password vaults don’t really solve the plain-text disaster. Hashes are still transmitted over the network and compared byte-for-byte.

Intel SGX could make password vaults more secure, but tools like Cheat Engine can scan RAM very quickly for changes.

The only way to achieve 100% secure net authentication is asymmetric key exchange, where both sides never see the entire key, and it’s never transmitted.

> To all security implementors: The current concept protects client and server keys, but plain-text/recovery hashes (even HSM-generated) don’t provide full protection.

## Kubernetes Internal

Internally, Kubernetes should improve. The SSO smartcard workaround should be replaced by direct PKCS 11/15 integration in ***kubectl***.

> As a workaround, use 2FA via Google/Microsoft Authenticator if provided, or third-party tools like GitLab.

# Hybrid Cloud / IPv6

Kubernetes 1.20 supports IPv4/IPv6 dual stack, but most cloud providers don’t offer IPv6 support. I plan to test this locally with Minikube. Disabling IPv6 can cause issues.

For hybrid cloud infrastructure, I recommend a setup with in-house and cloud datacenters, especially for enterprise/carrier-grade customers.

Red Hat OpenShift, combined with consulting and certified Kubernetes apps, can help set up a hybrid infrastructure quickly.

# Performance

I haven’t measured the performance of multiple web apps in detail, and I’m not the admin for large sites. As IT architect/coder/DevOps, I tested Python backends and PostgreSQL 14 databases with default TLS and self-signed certificates. Performance and response times look excellent.

Kubernetes infrastructure does not automatically scale your application infinitely. To achieve that, you need to implement and configure other components with horizontal scaling (e.g., PostgreSQL, Redis).

**My Opinion**

![cross](/emoji_monorail_50x50.png) Modern and fast travel.

> The auto-scale feature is rock-solid. Two love points! ![LoveLetter](/emoji_love_letter_50x50.png)

# Ported Applications

Many open source products have been ported to run on Kubernetes infrastructure:

```
* NGINX (Ingress-NGINX)
* Selenium browser automation framework
* Kubegres (PostgreSQL)
* React / Node.js
* Elasticsearch
* Roundcube webmail
* Postfix
* Apache Kafka
* GitLab
```

# Pro / Contra Matrix

The following matrix summarizes positive and negative aspects.

| Feature                                                      | Type           | Weight (%) | Why                                                                  |
|--------------------------------------------------------------|----------------|------------|----------------------------------------------------------------------|
| Centralized Metrics / Monitoring                             | ❌ Negative     | 80         | Not working as expected / not working at all                         |
| Object Relation / Interaction                                | ❌ Negative     | 50         | Sometimes relationships are problematic                              |
| Network Abstraction                                          | ❌ Negative     | 50         | Internal NAT used where not needed                                   |
| Non-modern Security / Authentication Implementations         | ❌ Negative     | 30         | No direct PKCS 11/15 implementation                                  |
| Declarative Object Definition                                | ✅ Positive     | 90         | Generally excellent abstraction; occasionally weird cross-references |
| Autoscaling Applications On Demand                           | ✅ Positive     | 90         | Assumes deep insider knowledge                                       |
| Easy IP Assignment / DNS Integration                         | ✅ Positive     | 90         | Excellent concept, though network implementation can be problematic  |
| Service Definition / Ingress                                 | ✅ Positive     | 50         | Theoretically excellent; templates sometimes misleading              |
| Security / Lightning-fast Cluster Rebuild                    | ✅ Positive     | 80         | Very good, but occasionally buggy                                    |
| DevOps / Role-Based Access System                            | ✅ Positive     | 70         | Sometimes time-consuming or complex                                  |
| Dramatically Increased Productivity / Development Efficiency | ✅ Positive     | 90         | If used correctly                                                    |
| Rolling Updates with Zero Service Outage                     | ✅ Positive     | 100        | Truly excellent                                                      |
| Existing API Abstraction Layer for External Apps             | ✅ Positive     | 80         | Unique to Kubernetes; no other product offers this                   |
