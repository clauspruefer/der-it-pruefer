---
category: network
tags: [switch, vcstack, vlan, lacp, bonding, ethernet, ubuntu, linux, english]
---

# Post Meta-Data

| Date       | Language                 | Author                            | Description                                    |
|------------|--------------------------|-----------------------------------|------------------------------------------------|
| 08.02.2025 | English                  | Prüfer, Claus (Chief-Prüfer)      | Allied Telesis - Virtual Chassis Stacking LACP |

# Allied Telesis Configuration (Part 1)

## Foreword

In the last decades i was confronted with many vendors of switch equipment.
Switch development is still growing incredible fast. Internet core switching
and cloud services demand ever higher speeds.

![EmojiRocket](/emoji_rocket_50x50.png)![EmojiRocket](/emoji_rocket_50x50.png)![EmojiRocket](/emoji_rocket_50x50.png)

Currently (2025) we are heading towards IEE 802.3 800 / 1600 GbE standard.
Even higher speeds are already in research / development.

Before diving deeper into configuration details, a short word about
Aliied Telesis switches in general.

## The Selection Process

Some time ago a customer project made me search for a suitable switch vendor.
The following requirements ordered by priority were decisive. 

- Stability (at maximum load)
- Multiple Redundant Power Supplies
- Reliability / Switch Stacking
- Global Security / SNMPv3
- 10GbE Ethernet
- LACP Feature
- IEEE 802.1Q VLAN
- IP Routing / Layer-3
- Fast IPv4 and IPv6 Firewalling
- Software Defined Networking (SDN)
- Minimum 9k Jumbo Frame Size "Switching"
- Minimum 9k Jumbo Frame Size "Routing"
- Multiple Spanning Tree Protocol (MSTP)
- 802.3x Flow Control
- Simplicity / Logical CLI
- Good Price-Performance Ratio / Licensing

I found Allied Telesis on the internet which looked like a suitable candidate.

> ![EmojiBulb](/emoji_bulb_16x16.png)
> After comparing / testing out some models / other vendors i decided:
> Allied Telesis switches will be **the choice** for future enterprise projects.
> ![EmojiMuscle](/emoji_muscle_16x16.png)
> ![EmojiMuscle](/emoji_muscle_16x16.png)
> ![EmojiMuscle](/emoji_muscle_16x16.png)

> ![EmojiBulb](/emoji_bulb_16x16.png)
> Allied Telesis still does not provide solutions like *Cisco Nexus 9000 / 9300 /*
> *9500* or similar which are more suited for **real large** (carrier) networking
> infrastructure.

> ![EmojiBulb](/emoji_bulb_16x16.png)
> The Allied Telesis **AT-x8100** and **x908 GEN2** series indeed are ready for enterprise.
> And also VCStack(able).

![AT-x530-switch-image](/x530-series-3840-cropped.png)

# Multi-Interface Bonding

The following example covers bonding with *LACP* (Link Aggregation Control Protocol)
with port group members residing on different multiple stacked (*VCStack* enabled)
switches.

A setup which is needed for **24/7** datacenter operation with 99.9% reliability.

The following knowledge is required to fully understand the example setup and
configuration.

- Basic Networking, TCP/IP
- Basic AT-switch Command Line Interface Syntax
- Advanced Networking (LACP and VLAN)
- Linux Networking / netplan.io

## LACP over 2 stacked AT Switches

Switch model **AT-x530L-28GTX** is used in the following example.

Additionally a VLAN trunking setup will be shown, how to configure on **top**
of the bond later on.

> ![EmojiBulb](/emoji_bulb_16x16.png)
> Both switches must be configured as stacked (VCStack) and stacked mode must
> be operational.

> ![EmojiBulb](/emoji_bulb_16x16.png)
> Ensure both switches have the same firmware / bootloader installed, otherwise
> stacking does not work.

> ![EmojiBulb](/emoji_bulb_16x16.png)
> Some switch models require licensing, be sure the license has been enabled.

## Overview / Cabling

The following diagram shows stack cabling (on fibre ports).

Port **port1.0.27** must be connected to **port2.0.27** and **port1.0.28** to **port2.0.28**.

- Switch #1

```bash

bd1 (eth0 interface on server side)
 | +--------+---------------------------------------------------------+---------+
 +-| P1.0.1 |                                                         | P1.0.27 |----+
   +--------+---------------------------------------------------------+---------+    |
   | P1.0.2 |                                                         | P1.0.28 |--+ |
   +--------+---------------------------------------------------------+---------+  | |
                                                                                   | |
```

- Switch #2

```bash
                                                                                   | |
bd2 (eth1 interface on server side)                                                | |
 | +--------+---------------------------------------------------------+---------+  | |
 +-| P2.0.1 |                                                         | P2.0.27 |--|-+
   +--------+---------------------------------------------------------+---------+  |
   | P2.0.2 |                                                         | P2.0.28 |--+
   +--------+---------------------------------------------------------+---------+
```

## Enable VCStack

Enable VCStack mode on both switches (serial).

```bash
awplus>enable
awplus#configure terminal
awplus(config)# stack enable
```

The first (master) switch needs priority set to value "0".

```bash
awplus(config)# stack 1 priority 0
```

Enable stackports on both switches.

```bash
awplus(config)#interface port1.0.27
awplus(config-if)#stackport
awplus(config)#interface port1.0.28
awplus(config-if)#stackport
```

Be aware, after becoming a virtual switch port numbering changes on switch #2
to "port2.*".

## Check VCStack Operational

Checking wether the two switches are in stacked mode can be done by either

- Switch LEDs (displays configured stack member id)
- Configuration Output (also displays configured stack member id)

The following command line output represents a correct working stack.

```bash
awplus>enable
awplus#show system
```

- Switch #1 (Stack member 1)

```bash
Stack member 1

Board      ID   Bay     Board Name                        Rev   Serial number
--------------------------------------------------------------------------------
Base       567  Base    AT-x530L-28GTX                    A-1   Axxxxxxxxxxxxxxx
--------------------------------------------------------------------------------
RAM: Total: 1028784 kB Free: 822200 kB
Flash: 208.2MB Used: 31.5MB Available: 176.8MB
--------------------------------------------------------------------------------
Environment Status : Normal
Uptime             : 0 days 00:52:29
Bootloader version : 7.0.15
```

- Switch #2 (Stack member 2)

```bash
Stack member 2

Board      ID   Bay     Board Name                        Rev   Serial number
--------------------------------------------------------------------------------
Base       567  Base    AT-x530L-28GTX                    A-1   Axxxxxxxxxxxxxxx
--------------------------------------------------------------------------------
RAM: Total: 1028784 kB Free: 826252 kB
Flash: 208.2MB Used: 31.5MB Available: 176.8MB
--------------------------------------------------------------------------------
Environment Status : Normal
Uptime             : 0 days 00:52:26
Bootloader version : 7.0.15
```

## Server Configuration

Base server configuration.

```bash
+---------------------------------+------------------------------------------------+
| Property                        | Value                                          |
+=================================+================================================+
| Operating System                | Ubuntu Linux 22.04.3 LTS - Server              |
| Network Ethernet Card           | 2 Port Intel 10GbE (ixgbe)                     |
| Network Configuration           | netplan.io                                     |
+---------------------------------+------------------------------------------------+
```

Configuration details see "Configure Bond Master (Server)".

## Cabling Overview

Switch port **port1.0.1** must be connected to server interface **eth0** and port
**port2.0.1** to **eth1**.

All switch ports overview including 1 bonding port on each switch.

```bash
+----------+------------+---------------------------------------------+------------+
| Switch # | Port Src   | Description                                 | Port Dst   |
+==========+============+=============================================+============+
| 1        | P1.0.1     | Uplink Linux eth0                           | Linux eth0 |
+----------+------------+---------------------------------------------+------------+
| 1        | P1.0.27    | Fibre Uplink 1                              | P2.0.27    |
+----------+------------+---------------------------------------------+------------+
| 1        | P1.0.28    | Fibre Uplink 2                              | P2.0.28    |
+----------+------------+---------------------------------------------+------------+
| 2        | P2.0.1     | Uplink Linux eth0                           | Linux eth1 |
+----------+------------+---------------------------------------------+------------+
| 2        | P2.0.27    | Fibre Uplink 3                              | P1.0.27    |
+----------+------------+---------------------------------------------+------------+
| 2        | P2.0.28    | Fibre Uplink 4                              | P1.0.28    |
+----------+------------+---------------------------------------------+------------+
```

## Switch Configuration

Enter switch configuration mode / authenticate.

```bash
awplus>enable
awplus#configure terminal
awplus(config)#
```

## Setup Channel Group Properties

Set LACP mode to **passive** on switch side, on server side it will be set
to **active**.

LACP **system-priority** configuration parameter on switch side must contain a
higher value than on server side.

```bash
awplus(config)#lacp global-passive-mode enable
awplus(config)#lacp system-priority 20000
```

## Configure Bonding Ports

Configure both bonding ports (port1.0.1 and port2.0.1).

> After the stacking has been setup the two switches behave like one single
> virtual switch now. This also applies to CLI commands (serial and TCP/IP),
> connect to one, configure all.

```bash
awplus(config)#interface port1.0.1
awplus(config-if)#channel-group 1 mode passive
awplus(config)#interface port2.0.1
awplus(config-if)#channel-group 1 mode passive
```

> This will create **po1** LACP bonding interface on switch which will be used
> later to add VLANs on.

## Configure VLANs

Now, add 2 VLAN trunks (on top of the bond).

```bash
awplus(config)#vlan database
awplus(config-vlan)#vlan 10 name net1
awplus(config-vlan)#vlan 20 name net2
awplus(config)#vlan 10,20 state enable

awplus(config)#interface po1
awplus(config-if)#switchport mode trunk ingress-filter disable
awplus(config-if)#switchport trunk allowed vlan add 10,20
```

Also VLAN trunk setup has to be added to the bond interface on server side later.

## Configure Bond Master (Server)

Network interface names must be adapted to corresponding values of your systems
network equipment.

- **/etc/netplan/01-network-renderer.yaml**

```yaml
network:
    version: 2
    renderer: networkd
```

- **/etc/netplan/02-bond-config.yaml**

```yaml
network:
    version: 2
    bonds:
    bond0:
        interfaces:
        - enp193s0f0
        - enp193s0f1
        parameters:
        lacp-rate: fast
        mode: 802.3ad
        transmit-hash-policy: layer2
    ethernets:
    enp193s0f0: {}
    enp193s0f1: {}
```

- **/etc/netplan/03-vlan-config.yaml**

```yaml
network:
    version: 2
    renderer: networkd
    vlans:
    bond0.10:
        id: 10
        link: bond0
        dhcp4: false
        dhcp6: false
        addresses: [ 192.168.1.10/24 ]
    bond0.20:
        id: 20
        link: bond0
        dhcp4: false
        dhcp6: false
        addresses: [ 192.168.2.10/24 ]
```

## Test VLAN Setup

Finally, it is time to test the setup. An easy way is to configure two setup
independend access ports on the switch (first: VLAN 10, second: VLAN 20).

Afterwards connect clients to each of the ports, configure non-existent ip
addresses manually and ping the corresponding server ip addresses.

```bash
awplus(config)#interface port2.0.23
awplus(config-if)#switchport mode access
awplus(config-if)#switchport access vlan 10

awplus(config)#interface port2.0.24
awplus(config-if)#switchport mode access
awplus(config-if)#switchport access vlan 20
```

![EmojiCoffee](/emoji_coffee_50x50.png) Mission accomplished, get some coffee.
