---
category: application
tags: [application, web-application, development, programming, javascript, engineering, english]
---

# Post Meta-Data

| Date        | Language  | Author                          | Description                                                                |
|-------------|-----------|---------------------------------|----------------------------------------------------------------------------|
| 10.07.2023  | English   | Claus Prüfer (Chief Prüfer)     | Developing modern web applications—a completely new approach <img width=68> |

# Building Modern Web Applications

After the Web 2.0 era, what comes next? Marketing strategists and technology consulting firms have yet to identify the next major Internet boom. This essay provides insights into an entirely novel technology approach for modern web application development.

## Web Application Infrastructure

Web application development has remained a trending topic for decades. The "How" has become more important than ever; for example, both ChromeOS and Microsoft now leverage web technologies directly for user interfaces (UI/UX) within their operating systems.

Being a leader in state-of-the-art technology was crucial historically. Video game companies, for instance, modified arcade mainboard firmware or enhanced Nintendo SNES cartridges with assembler-driven 3D functionality—gaining significant recognition.

## Historical Overview

From the dawn of the Internet serving static content, development has progressed through several pivotal milestones:

| Year | Achievement                   | Description                                                                   |
|------|-------------------------------|-------------------------------------------------------------------------------|
| 1962 | First Internet                | Developed by the US Military; operational deployment <img width=124>          |
| 1991 | Static Web Server             | Public access to the Internet; WWW serves static content                      |
| 1994 | Web Server C-Language Modules | Dynamic content rendering via server-side C-language interfaces               |
| 1996 | Apache WebServer / CGI        | Common Gateway Interface simplifies Web app development                       |
| 1998 | CGI / Perl                    | Perl becomes the standard for CGI programming in Web apps                     |
| 2000 | Load Balancing / Redundancy   | DNS/WWW usage drives need for load balancing and redundancy                   |
| 2010 | Carrier Grade Requirements    | Internet user numbers surge; carrier-grade scalability becomes essential      |
| 2011 | Cloud Infrastructure / SDN    | Cloud-native infrastructure and Software Defined Networking evolve            |
| 2015 | VoIP / VoD                    | Digital telephony, TV, and streaming replace analog systems                   |
| 2020 | OpenStack / Google Kubernetes | OpenStack, Docker, and Google Kubernetes revolutionize cloud computing        |

## OSI Model & Networking

The OSI Layer 7 Model standardizes network communication, enabling interoperability among network cards, computers, browsers, and web services over the global packet-switched IP infrastructure.

## 3-Tier Architecture

On top of network infrastructure, the classical 3-tier architecture separates concerns to facilitate dynamic multi-user web applications:

- User Interface / WebApp
- Application / Server Logic
- Database / Metadata

## Multi-Tier Architecture

Modern infrastructure trends toward multi-tier architectures, adding layers for clearer design and well-defined interfaces.

> **Note:** Lack of standardization can lead to chaotic proliferation in upper-layer infrastructure.

## Server-Rendered Content: Classical Approach

The traditional method—still prevalent in many frameworks—returns fully rendered HTML (entire pages or partial fragments) from server-side scripts.

```
+----------------------+                                   +---------------------+
| Browser              | -> Request HTML (inc. JS)      -> | Backend Application |
| (JavaScript / Logic) |      (dynamically rendered)       | (PHP/Python/Java)   |
|                      |                                   |                     |
|                      | <------ Return HTML <------------ |                     |
+----------------------+                                   +---------------------+
```

## Single Page Applications (SPA): The Future

A disruptive innovation: Browser-based **Single Page Applications** (SPA).

Unlike server-rendered content, SPA eliminates server-side HTML rendering. Instead, meta/skeleton data is fetched during initialization, after which the application operates entirely in the browser. Only dynamic data (e.g., search queries, business logic) is exchanged with the backend, and real-time frameworks handle object data updates.

```
+--------------------------------+                 +-----------------------------+
| Browser                        |                 | JSON / Data Middleware / AS |
+--------------------------------+                 +-----------------------------+
| - Application Logic            | 1. <-- Get Base | Return Base.JS scripts      |
|   (JavaScript OOP)             | 2. <-- Get Meta | Return Skeleton.JSON        |
| - Templating / Dynamic Styling |                 |                             |
| - Object Instance Creation     |                 |                             |
| - ObjectInstance Realtime      |                 |                             |
| - ObjectInstance Intercom      |                 |                             |
| - Service / Data Abstraction   | 3. --> OnDemand | Scripts::return JSON-Data   |
|   ObjectInstance-Mapping       | 4. <-- JSON     |                             |
| - Internal Event Handling      |                 |                             |
| - Interval Event Handling      |                 |                             |
| - Extensions / Modules         |                 |                             |
+--------------------------------+                 +-----------------------------+
```

### Extension: Static Preloading

A specialized layer-switching technique can further enhance SPA performance.

All SPA content layers are pre-rendered at initialization. When a menu link is clicked, the corresponding content layer becomes visible, while others are hidden. Dynamic updates for all objects within the visible layer are then triggered.

```
+---------------------------------------+----------------------------------------+
| Browser                               | Content Area                           |
+---------------------------------------+----------------------------------------+
| - MenuLink1                           | Current Content: Menu3                 |
| - MenuLink2                           |                                        |
| - MenuLink3  (OnClick::updateContent) |                                        |
| - MenuLink4                           |                                        |
+---------------------------------------+----------------------------------------+
```

## MVC Pattern & Layer Separation

The "Model-View-Controller" pattern aims to separate data, UI, and logic for greater clarity.

> This is partly true for server-rendered apps; however, SPA enables seamless MVC integration.

Server rendering introduces **Mixed Layers**: logic resides both in the browser and backend. When backend code isn't JavaScript, DOM manipulation is non-native and increases complexity.

SPA solves the **Mixed Layers Problem**—all logic remains on the client.

> SPA significantly reduces complexity and enables a clean MVC architecture. Yet, it's not the sole innovation of the new approach.

### Partial Solutions

Node.js simplifies server-side rendering by implementing Google’s JavaScript ECMA DOM rendering engine at the application server level.

> However, issues persist regarding application logic processing and templating.

## Basic Templating & CSS

CSS (Cascading Style Sheets) has long facilitated separation of layout from HTML, enabling easy theming.

> This does not equate to OOP-based object templating—the foundation of the new approach. Basic templating via CSS is standard practice.

## The Complexity Problem: True OOP

JavaScript's object-oriented capabilities are limited; true instance cloning and native DOM content manipulation aren't available out-of-the-box.

Binding JS object instances to DOM elements (recursively) is not natively supported.

> As the Irish say, "This is shite." If we pursue OOP, let’s do it properly.

> **Binding JS object instances to DOM elements**—this is the foundation of the new technology approach.

### A Proposed Solution

Consider this example:

```html
<div1 class="style1">::cI_BaseClass_div1
  <div2>::cI_BaseClass_div2
    <div3>content1</div3>::cI_BaseClass_div3
    <div4>content2</div4>::cI_BaseClass_div4
  </div2>
</div1>
```

If JavaScript class instances (including subclasses) could be bound to DOM nodes, it would elevate JS OOP programming significantly.

> Such capabilities should ideally be part of the ECMA JavaScript engine.

### An Alternative Solution

Instead, can the entire DOM be rendered from a custom OOP model’s class hierarchy in JavaScript?

> **Yes!** With this extension, DOM, JS control logic, and templating become highly powerful.

For technical details, see: [Chapter 14. Basic Code Model](#19)

## Node.js & TypeScript

Node.js with TypeScript and Chrome V8 JS engine remains limited compared to the new approach. Server-side rendering restricts real-time processing; only client-side engines (SPA) enable true real-time interaction.

## Performance

Does attaching all base and inherited methods to each <div> and pre-rendering all layers hurt performance?

> No!

Thanks to JavaScript's "everything is a pointer" paradigm and modern CPU caching, object duplication is negligible. Similar to GPU processing, copying objects thousands of times has minimal overhead due to caching.

With pointer-based infrastructure, over 50,000 complex, dependent objects can be rendered in less than one second on a typical x86_64 CPU, as verified with x0 Framework v0.98rc.

## Real-Time Object Processing

The new approach enables:

- Real-time object cloning/data copying
- Recursive object overloading/decorating

Objects can be cloned or their structure copied, with dynamic properties assigned—requiring zero client-server communication.

## Basic Code Model

The following example, derived from the x0 JavaScript framework ([Chapter 15 - x0 Framework](#27)), demonstrates how to define classes, member functions, properties, and dependencies to achieve the new technology approach.

### Base Class: sysBaseObject

The cornerstone is `sysBaseObject`. Base properties serve as templates to be overridden in class instance prototypes.

```javascript
//------------------------------------------------------------------------------
// CONSTRUCTOR "sysBaseObject"
//------------------------------------------------------------------------------

function sysBaseObject() {
  this.DOMType        = 'div';      // Default DOM element type
  this.ObjectID       = null;       // Object ID
  this.ParentObject   = null;       // Parent object reference

  this.DOMObjectID    = null;       // DOM object ID (recursive)
  this.DOMParentID    = null;       // Parent DOM object ID (recursive)
}
```

Two member functions establish links between internal objects and DOM elements: `addObject(ChildObject)` and `renderObject(Prefix)`.

### Method: addObject()

```javascript
//------------------------------------------------------------------------------
// METHOD "addObject"
//------------------------------------------------------------------------------

sysBaseObject.prototype.addObject = function(ChildObject) {
  ChildObject.ParentObject = this;
  this.ChildObjects.push(ChildObject);
}
```

The parent's object reference is assigned to the child’s `ParentObject` property, and the child instance is added to the parent's `ChildObjects` array.

### Method: renderObject()

```javascript
//------------------------------------------------------------------------------
// METHOD "renderObject"
//------------------------------------------------------------------------------

sysBaseObject.prototype.renderObject = function(Prefix) {
  this.DOMParentID = Prefix;

  this.createDOMElement(this.DOMObjectID);
  this.appendDOMParentElement();
  this.setDOMElementValue();

  for (var i in this.ChildObjects) {
    var ChildItem = this.ChildObjects[i];
    ChildItem.renderObject(this.DOMObjectID);
  }
}
```

This method generates the DOM element, appends it to its parent, sets its value, and recursively renders all child objects.

### Method: createDOMElement()

```javascript
//------------------------------------------------------------------------------
// METHOD "createDOMElement"
//------------------------------------------------------------------------------

sysBaseDOMElement.prototype.createDOMElement = function() {
  var Element = document.createElement(this.DOMType);
  Element.setAttribute('id', this.DOMObjectID);
  this.DOMDivElement = Element;
}
```

Creates the DOM element using the specified type and ID.

### Method: appendDOMParentElement()

```javascript
//------------------------------------------------------------------------------
// METHOD "appendDOMParentElement"
//------------------------------------------------------------------------------

sysBaseDOMElement.prototype.appendDOMParentElement = function() {
  if (this.DOMParentID == null || this.DOMParentID === undefined) {
    document.body.appendChild(this.DOMDivElement);
  } else {
    var parentElement = document.getElementById(this.DOMParentID);
    parentElement.appendChild(this.DOMDivElement);
  }
}
```

If no parent ID is set, appends the element to the body; otherwise, to the specified parent element.

### Method: setDOMElementValue()

```javascript
//------------------------------------------------------------------------------
// METHOD "setDOMElementValue"
//------------------------------------------------------------------------------

sysBaseDOMElement.prototype.setDOMElementValue = function() {
  if (this.DOMValue != null && this.DOMValue !== undefined) {
    var divElement = document.getElementById(this.DOMObjectID);
    if (divElement != null && divElement !== undefined) {
      divElement.innerHTML = this.DOMValue;
    }
  }
}
```

Sets the innerHTML of the DOM element with the object's value.

### Detailed Example

```javascript
function sysCustomObject() {
  this.ObjectID = 'nam1';
  this.ChildObjects = [];
}

// Inherit sysBaseObject
sysCustomObject.prototype = new sysBaseObject();

sysCustomObject.prototype.init = function() {
  // Add obj2
  var obj2 = new sysBaseObject();
  obj2.ObjectID = 'nam2';
  this.addObject(obj2);

  // Add obj3
  var obj3 = new sysBaseObject();
  obj3.ObjectID = 'nam3';
  obj3.DOMValue = 'val3';
  this.addObject(obj3);

  // Add obj4
  var obj4 = new sysBaseObject();
  obj4.ObjectID = 'nam4';
  obj4.DOMValue = 'val4';
  obj2.addObject(obj4);

  // Render recursively
  this.renderObject();
}
```

Inheritance structure:

![Example Basic Object Inheritance](/Der-IT-Prüfer-Building-Modern-Web-Apps-Example-Basic-Object-Inheritance.jpg)

Object references after adding obj2 and obj3:

![Example Object References](/Der-IT-Prüfer-Building-Modern-Web-Apps-Example-Object-References.jpg)

Full object hierarchy after `sysCustomObject.init()`:

```text
+- obj1 (this)
   +- obj2
      +- obj4
   +- obj3
```

DOM structure:

```html
<body>
  <div id="nam1">
    <div id="nam1-nam2">
      <div id="nam1-nam4">val4</div>
    </div>
    <div id="nam1-nam3">val3</div>
  </div>
</body>
```

### Achieving a Clean OOP Model

By introducing multiple abstraction layers, we achieve a robust and clean OOP architecture.

## x0 Framework: Advanced Functionality

The JavaScript framework "x0 (cross objects)" is engineered with these concepts and provides extensive functionality.

Explore more at [https://github.com/WEBcodeX1/x0/](https://github.com/WEBcodeX1/x0/) on GitHub.
