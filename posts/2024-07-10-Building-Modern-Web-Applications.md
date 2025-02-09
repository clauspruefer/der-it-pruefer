---
category: application
tags: [application, web-application, development, programming, javascript, engineering, english]
---

# Post Meta-Data

| Datum      | Sprache                  | Autor                             | Beschreibung                                                        |
|------------|--------------------------|-----------------------------------|---------------------------------------------------------------------|
| 10.07.2023 | Englisch                 | Prüfer, Claus (Chief-Prüfer)      | Entwicklung moderner Web-Applikationen - ein komplett neuer Ansatz <img width=68> |

# Building Modern Web-Applications

Following Web 2.0, whats happening next? Marketing Strategies and Technology Consulting Companies did not find the
next big Internet-Boom until today. This essay should give insights about a complete unique New-Style-Technology
approach.

## Web-Application Infrastructure

Web-Application Development has been a Mega-Hot-Topic since decades. The "How" has been important as never before, e.g.
ChromeOS and Microsoft currently use Web-Technology for User-Interface / UIx in their Operating-Systems directly.

Be the company with outstanding State-Of-The-Art-Technology was extremely important in the past, e.g. Video-Game
Development companies modifying Arcade-Game-Mainboards firmware or enhancing Nintendo SNES Cartridges with
3D-functionality in Assembler brought them over-average credit.

## History

From the beginning of the Internet / serving Static Content, development has taken important steps.

| Year | Achievement                   | Description                                                                  |
|------|-------------------------------|------------------------------------------------------------------------------|
| 1962 | First Internet                | The internet has been developed by US Military - deployed operational <img width=124> |
| 1991 | Static Web-Server             | The internet has been opened to the public / serves WWW static content       |
| 1994 | Web-Server C-Language Modules | Dynamic rendered content is possible via web server C-Language interface     |
| 1996 | Apache WebServer / CGI        | The Common-Gateway-Interface specifications help building Web-Apps easier    |
| 1998 | CGI / Perl                    | Perl as CGI programming language commonly is used to build Web-Apps          |
| 2000 | Load Balancing / Redundance   | Load balancing / redundance requirement arises due to DNS / WWW heavy use    |
| 2010 | Carrier Grade Requirements    | Carrier customer counts are exploding, everybody wants internet              |
| 2011 | Cloud Infrastructure / SDN    | State-Of-The-Art methods of Cloud-Network-Infrastructure / SDN evolve        |
| 2015 | VoIP / VoD                    | Digital versions for telephony, television and movies replace analog ones    |
| 2020 | OpenStack / Google Kubernetes | OpenStack / Docker and Google Kubernetes enter the stage of cloud computing  |

## OSI 7 Model / Network

The OSI Layer 7 Model standardizes Internet Network Communication. This is the basic requirement for Network Cards,
Computer, Browser, WebServices to intercommunicate over the worlwide packet switched / routed IP (Internet Protocol)
infrastructure.

## 3-Tier Architecture

On top of the networking infrastructure, the classical 3-Tier Architecture separates the following layers to build
dynamic *Multi-User* web applications:

* User Interface / WebApp
* Application / Server Logic
* Database / Meta-Data

## Multi-Tier Architecture

Current Infrastructure evolves towards Multi-Tier Architecture. Extending / adding new Layers provides a much more
clear design and well defined external interfaces.

> Often a disadvantage: no standardization for these models exist thus leading to chaotic proliferation in upper
layer infrastructure.

## Server Rendered Content / Classical Approach

The classical approach still used by a variety of Frameworks: receive already rendered HTML (complete Site or
partially) from scripts running on server side.

```
+----------------------+                                   +---------------------+
| Browser              | -> get HTML Page including JS  -> | Backend AS          |
| (JavaScript / Logic) |      (even dynamically rendered)  | (PHP/Python/Java)   |
|                      |                                   |                     |
|                      | <------ Return HTML Page <------- |                     |
+----------------------+                                   +---------------------+
```

## Single Page Application / The Future Approach

An outstanding new technology-concept has been born lately: Browser **S**ingle **P**age **A**pplication(s) - *SPA*.

This differs in 100% from the "Server Rendered Content" approach: 0% HTML will be rendered on server side.
Meta- / Skeleton Data will be received at initialization phase (data loading) before application start.

After the required data has been loaded the whole site runs self-sufficient inside the browser, just dynamic
data (e.g. search queries or business logic) will be sent to the backend and the underlying realtime framework
handles the relevant object data updates.

```
+--------------------------------+                 +-----------------------------+ 
| Browser                        |                 | JSON / Data Middleware / AS |
+--------------------------------+                 +-----------------------------+
| - Application Logic            | 1. <-- Get Base | Return Base.JS scripts      |
|   (JavaScript OOP)             | 2. <-- Get Meta | Return Skeleton.JSON        |
| - Templating / Dynamic Styling |                 |                             |
| - ObjectInstance Creation      |                 |                             |
| - ObjectInstance Realtime      |                 |                             |
|   Handling|                    |                 |                             |
| - ObjectInstance Intercom      |                 |                             |
| - Service / Data Abstraction / | 3. --> OnDemand | Scripts::return JSON-Data   |
|   ObjectInstance-Mapping       | 4. <-- JSON     |                             |
| - Internal Event Handling      |                 |                             |
| - Interval Event-Handling      |                 |                             |
| - Extension(s) / Modules       |                 |                             |
+--------------------------------+                 +-----------------------------+ 
```

### Extension / Static Preloading

A special layer-switching technology for parts or the whole application expands the SPA model with another
performance gaining gimmick.

All SPA site content layer will be "statically" pre-rendered at initialization phase. If a menu link will be
clicked, the relevant content layer will be switched to *visible*, the other layers will be set *hidden*.

Also dynamic data updates of all objects inside the visible (clicked) layer will be triggered at this point.

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

## MVC / Mixed Layers

The "Model View Controller" Design Pattern promises to separate Model, View and Controller Logic to reduce complexity
and increase structural clearness.

> This is partially the case with classical server rendering. With future-proof SPA model it integrates seamlessly.

Server rendering brings with it the *Mixed Layers Problem*. Logical processing has to be handled at multiple positions,
both inside the Browser and additionally in the Backend. If the server code is other than JavaScript "rendering" the
DOM layers is not "native" and increases program complexity.

The SPA model eliminates the *Mixed Layers Problem* completely. Logical processing stays on browser page.

> SPA drastically reduces complexity and makes a clean MVC possible. Still, this is not the idea behind the
> Game-Changing New-Style-Technology approach.

### Partially Solving The Problem

Node.js does solve the server rendering complexity by implementing the Google JavaScript ECMA DOM Rendering Engine
at Application Server level.

> This still does not solve serious problems with *application logic processing* and *templating*.

## Basic Templating / CSS

Separation of graphical layout and HTML is done by CSS (Cascading Style Sheets) since decades. Implemented
in the correct way it makes *theming* websites (changing layout without updating content) simple.

> This still has nothing to do with *OOP based Object Templating* the foundation of the New-Style-Technology
approach. Basic Templating / CSS has been part of the standard for quite a while.

## The Complexity Problem / True OOP

Due to its limited object oriented features the DOM and JavaScript do not provide true clone procedures of instances
or DOM content natively. It has to be programmed "by hand".

There is also no way to **Bind JS Object Instances to DOM Elements**, let alone recursive.

> This is shite, the irish would say. I wanna go OOP, if then right!

> **Bind JS Object Instances to DOM Elements**. Notice very carefully: this will be the foundation of the *New-Style-Technology*
approach!

### A Possible Solution

Look at the following proposal:

```html
<div1 class="style1">::cI_BaseClass_div1
  <div2>::cI_BaseClass_div2
    <div3>content1</div3>::cI_BaseClass_div3
    <div4>content2</div4>::cI_BaseClass_div4
  </div2>
</div1>
```

If you could bind JavaScript class instances (including sub classes / inheritance) to a DOM Node: this would take JavaScript
OOP based programming to the next level.

> However: this would have to get into the ECMA JavaScript Engine. Get beardy man!

### The Solution

Think the other way round: Is it possible to render the whole DOM by your own OOP-Model based class-hierarchy written
in JavaScript?

> **YES**, of course it is! With this extension, the *DOM*, JavaScript *Control Logic* and *Templating* get **MIGHTY^2**.

Detailed technical information see: [Chapter 14. Basic Code Model](#19)

## Node.js / TypeScript

Compared to Node.js in combination with TypeScript and Chrome V8 JS Engine: still very limited. It doesnt't even come
close to the New-Style approach.

The Node.js rendering process takes place on Server-Side, this limits realtime processing drastically. Only a directly
running rendering engine in the client browser (SPA) makes true realtime processing possible.

## Performance

This model implies that each <div> / sub <div> gets all base and inherited methods "attached". In combination with
pre-rendering all site layers, isn`t this a performance killer?

> No, it is not!

Due to JavaScripts *Everything Is A Pointer* implementation and modern CPU caches object-duplication really does not
matter. Compared to GPU processing: it is similar here. You can copy the same object 1000 times, it does not really
raise GPU processing power because it resides in GPU or CPU L1 cache.

In combination with the JavaScripts copy-less pointer infrastructure over 50.000 complex, dependend objects get
rendered in less than one (1) second on moderate x86_64 CPU models, tested / verified with current x0 Framework
version 0.98rc.

## Realtime Object Processing

With the new-style approach the following *magic* is possible:

- *Realtime Cloning Objects / Data Copy*
- *Recursive Object Overloading / Decorating*

Easily clone objects containing existing data or just copy the objects structure with dynamic assigned object
properties. Whoa, and it needs: 0% client-server communication.

## Basic Code Model

The following code model is referenced from the x0 JavaScript framework [Chapter 15 - x0 Framework](#27).
It shows independently how to setup classes, member functions, properties and dependencies to achieve the described
New-Technology aproach.  

### Base Class sysBaseObject

The first most important class is sysBaseObject. The base properties are template values which have to be overridden
directly in the class instances prototyping section.

```javascript
//------------------------------------------------------------------------------
//- CONSTRUCTOR "sysBaseObject"
//------------------------------------------------------------------------------

function sysBaseObject() {

  this.DOMType        = 'div';        //- Default DOMType 'div'
  this.ObjectID       = null;         //- Object ID
  this.ParentObject   = null;         //- Parent Object

  this.DOMObjectID    = null;         //- DOM Object ID - set recursive
  this.DOMParentID    = null;         //- Parent DOM Object ID - set recursive

}
```

We need two member functions to be able to set up references between internal objects and DOM elements.

```addObject(ChildObject)``` and ```renderObject(Prefix)```.

### Method addObject()

```javascript
//------------------------------------------------------------------------------
//- METHOD "addObject"
//------------------------------------------------------------------------------

sysBaseObject.prototype.addObject = function(ChildObject)
{
  ChildObject.ParentObject = this;
  this.ChildObjects.push(ChildObject);
}
```

First the callers (this) ObjectRef will be added to the *Child Objects* ```ParentObject``` property and an
ObjectInstanceRef will be pushed back to the callers this.ChildObjects Array.


### Method renderObject()

```javascript
//------------------------------------------------------------------------------
//- METHOD "renderObject"
//------------------------------------------------------------------------------

sysBaseObject.prototype.renderObject = function(Prefix)
{
  this.DOMParentID = Prefix;

  this.createDOMElement(this.DOMObjectID);
  this.appendDOMParentElement();
	this.setDOMElementValue();

  for (i in this.ChildObjects) {
    var ChildItem = this.ChildObjects[i];
    ChildItem.renderObject(this.DOMObjectID);
  }
}
```

This will first generate the DOM div element from property this.DOMObjectID, append the div to its DOM
parent div and finally set the Value stored in this.DOMValue.

Afterwards it recursively calls the renderObject() of the referenced ChildItem Object in the
this.ChildObjects[] Array.

### Method createDOMElement()

```javascript
//------------------------------------------------------------------------------
//- METHOD "createDOMElement"
//------------------------------------------------------------------------------

sysBaseDOMElement.prototype.createDOMElement = function()
{
	var Element = document.createElement(this.DOMType);
	Element.setAttribute('id', this.DOMObjectID);
	this.DOMDivElement = Element;
}
```

Creates DOM element from this.DOMType and this.DOMObjectID.

### Method appendDOMParent..()

```javascript
//------------------------------------------------------------------------------
//- METHOD "appendDOMParentElement"
//------------------------------------------------------------------------------

sysBaseDOMElement.prototype.appendDOMParentElement = function()
{
  if (this.DOMParentID == null || this.DOMParentID === undefined) {
		document.body.appendChild(this.DOMDivElement);
	}
	else {
		var parentElement = document.getElementById(this.DOMParentID);
		parentElement.appendChild(this.DOMDivElement);
	}
}
```

If no this.DOMParentID is set, append div to body, else to element with this.DOMParentID.

```javascript
//------------------------------------------------------------------------------
//- METHOD "setDOMElementValue"
//------------------------------------------------------------------------------

sysBaseDOMElement.prototype.setDOMElementValue = function()
{
	if (this.DOMValue != null && this.DOMValue !== undefined) {
		var divElement = document.getElementById(this.DOMObjectID);
		if (divElement != null && divElement !== undefined) {
			divElement.innerHTML = this.DOMValue;
		}
	}
}
```

Write this.DOMValue to DOM (innerHTML).

### Detailed Example

```javascript
function sysCustomObject()
{
  this.ObjectID = 'nam1';
  this.ChildObjects = new Array();
}

//- inherit sysBaseObject
sysCustomObject.prototype = new sysBaseObject();

sysCustomObject.prototype.init = function()
{
  //- this adds object nam2
  var obj2 = new sysBaseObject();
  obj2.ObjectID = 'nam2';
  this.addObject(obj2);

  //- this adds object nam3
  var obj3 = new sysBaseObject();
  obj3.ObjectID = 'nam3';
  obj3.DOMValue = 'val3';
  this.addObject(obj3);

  //- this adds object nam4
  var obj4 = new sysBaseObject();
  obj4.ObjectID = 'nam4';
  obj4.DOMValue = 'val4';
  obj2.addObject(obj4);

  //- render recursive
  this.renderObject();
}
```

Inheritance in detail looks like:

![Example Basic Object Inheritance](/Der-IT-Prüfer-Building-Modern-Web-Apps-Example-Basic-Object-Inheritance.jpg)

After calling addObject(obj2) and addObject(obj3), internal JS structs look like this:

![Example Object References](/Der-IT-Prüfer-Building-Modern-Web-Apps-Example-Object-References.jpg)

The complete object hierarchy (object instance refs) after calling ```sysCustomObject.init()``` looks like this now:

```javascript
+- obj1 (this)
   +- obj2
      +- obj4
   +- obj3
```

The DOM like this:

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

### Clean OOP Model Finally

By adding multiple abstraction layers we finally reached our goal. A clean OOP model.

## x0 Framework / Extended Functionality

The JavaScript Framework "x0 (cross objects)" has been engineered with the mentioned technologies in mind
and provides by far much more functionality.

Check out at [http://github.com/WEBcodeX1/x0/](http://github.com/WEBcodeX1/x0/) on GitHub.
