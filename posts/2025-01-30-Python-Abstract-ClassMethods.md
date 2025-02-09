---
category: programming
tags: [python, oop, object-oriented, programming, abstract, abstract-classes, abstract-methods, english]
---

# Post Meta-Data

| Date       | Language                 | Author                            | Description                              |
|------------|--------------------------|-----------------------------------|------------------------------------------|
| 02.02.2025 | English                  | Prüfer, Claus (Chief-Prüfer)      | Python Abstract-ClassMethods Demystified |

# Preface

Recently i added **Pylint** ([https://pylint.org](https://pylint.org)) as Python linter
into my [python-micro-esb](https://github.com/clauspruefer/python-micro-esb) project on GitHub.

Primarily i am using KDevelops internal linting mechanism (*kdevelop-python* extension)
which tends to be quite precise in language syntax mismatch detection.

The fact that **Pylint** is the most popular and out of the box GitHub Python linter
for *GitHub Actions* made me think: "why not give it a try"? - Star Your Code!

# Example Download URL

Example Python scripts referenced in this post can be downloaded from: 
[https://download.webcodex.de/der-it-pruefer/python-abstract-class-methods](https://download.webcodex.de/der-it-pruefer/python-abstract-class-methods).

# Basics

## Abstract Classes

The purpose of *Abstract Classes* in general is to provide a mechanism to force a
different implementation (overloading) of class methods in derived *Child Classes*.

Python provides the `abc.ABCMeta` module for *Abstract Class* / *Abstract Mehod*
handling which will be topic of discussion.

## Abstract Class Methods

Illustrating, a small use case / example.

> The `@abc.abstractmethod` decorator modfifies a basic class method into an
> *Abstract Class Method*.

```python
import abc

class Base(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def do_action(self):
        pass


class Dancer(Base):
    def do_action(self):
        print('Dancer - dancing')


class Walker(Base):
    def do_action(self):
        print('Walker - walking')

    def walk_silly(self):
        print('Walker - pythonic silly walking.')
```

Consider the previous code as your first implementation code.
It is intended to extend the base code by multiple additional *Sub Classes*
by *yourself* **or** by *other members* of the developer team.

You want to ensure the `do_action()` implementation must be existent
in any new *Sub Class*. If some implementor forgets adding your as abstract
defined method, an error should be raised.

*Abstract Class Methods* is your matching design pattern here.

## Implementation Check

As stated out before, if someone implements the following code the wrong way
(omit the `do_action()` method), a TypeError Exception must be raised.

```python
class Jumper(Base):
    def do_something_else(self):
        print('Jumper doing something else')
```

The Python interpreter will raise the correct TypeError Exception on class
instantiation `c1 = Jumper()`.

```bash
c1 = Jumper()
     ^^^^^^^^
TypeError: Can't instantiate abstract class Jumper without an implementation
for abstract method 'do_action'
```

See example code `test-abstract-classes1.py`.

## Base Declaration

Assume the following code, the `do_action()` method gets some program logic
inside the *Base* class.

```python
import abc

class Base(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def do_action(self):
        print('Base - Global moving.')


class Dancer(Base):
    def do_action(self):
        print('Dancer - dancing')


class Walker(Base):
    def do_action(self):
        print('Walker - walking')

    def walk_silly(self):
        print('Walker - pythonic silly walking.')
```

Due to the fact that *Abstract Class methods* **must** and always will be overloaded,
the `Base.do_action()` never will be called. 

Correct declaration.

```python
import abc

class Base(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def do_action(self):
        pass
```

See example code `test-abstract-classes2.py`, which demonstrates `do_action()` methods
are only called inside child classes.

```bash
python3 test-abstract-classes2.py
```

will output:

```bash
Walker - walking
Dancer - dancing
```

See, `Base - Global moving` from `Base` class will **not** be displayed.

## Abstract Versus Non-Abstract

A big misunderstanding is that an *Abstract Class* automatically inherits
its abstractness to all of its methods automatically. This is not the case.

Mixing *Abstract Class Methods* with *Non Abstract Class Methods* is a
common design approach and enables a very smart way of abstraction / modeling
your code.

```python
import abc

class DecoratorClass():
    def do_some_global_stuff(self):
        print('Decorator - do some stuff from anywhere.')


class Base(DecoratorClass, metaclass=abc.ABCMeta):
    def __init__(self):
        print('Base - global thoughts.')

    @abc.abstractmethod
    def do_action(self):
        pass


class Dancer(Base):
    def do_action(self):
        print('Dancer - dancing')
        self.do_some_global_stuff()


class Walker(Base):
    def do_action(self):
        print('Walker - walking')

    def walk_silly(self):
        print('Walker - pythonic silly walking.')
```

See example code `test-abstract-classes3.py`.

```bash
python3 test-abstract-classes3.py
```

will output:

```bash
Base - global thoughts.
Walker - walking
Walker - pythonic silly walking.
Base - global thoughts.
Dancer - dancing
Decorator - do some stuff from anywhere.
```

# NotImplementedError

So, after we have clarified some basic understanding about *Abstract Classes* and
*Abstract Class Methods* continue with our *main* topic.

Some parts of my project code uses the *NotImplemented* paradigm / design pattern.

In short, like the name `NotImplementedError` implies, the exception should be used
when some prgram functionality is planned to be implemented, but not at the current
time is implemented.

Now, when some implementor or user tries to execute such a *Class Method*, the
`NotImplementedError` is raised to signal: not implemented right now!

## Pylint Issue

Now, what made me a bit confused is the fact that Pylint is complaining about the
following code.

```python
import abc

class Base(metaclass=abc.ABCMeta):
    def do_advanced_action(self):
        raise NotImplementedError

    @abc.abstractmethod
    def do_action(self):
        pass

class Dancer(Base):
    def do_action(self):
        print('Dancer - dancing')
```

See example code `test-abstract-classes4.py`.

```bash
python3 test-abstract-classes4.py
```

proofs that Python interpreter behaves correctly (NotImplementedError Exception raised
when `do_advanced_action()` is called from child class.

```bash
Traceback (most recent call last):
  File "python-code\test-abstract-classes4.py", line 16, in <module>
    c1.do_advanced_action()
  File "test-abstract-classes4.py", line 5, in do_advanced_action
    raise NotImplementedError
NotImplementedError
```

## Pylint Implementation

**Pylint** now claims (W0223) that `do_advanced_action()` is declared abstract in class
`Base` and does not get overridden in class `Dancer`.

```bash
test-abstract-classes4.py:11:0: W0223: Method 'do_advanced_action' is abstract in
class 'Base' but is not overridden in child class 'Dancer' (abstract-method)
```

"???", i thought. This **must** be a **Pylint** bug.

## Pylint Why?

Filing a **Pylint** issue on github (see issue [#10192](https://github.com/pylint-dev/pylint/issues/10192)).

After some deeper discussion with Mark Byrne (Pylint) Mark gave some hints that
probably the Python documentation could be wrong.

> Python never makes mistakes.

I thought. *Propably*, i was thinking the wrong way.

## Python Documentation

Current excerpt of the (3.10+) Python `NotImplementedError` Exception documentation.

> ... In user defined base classes, abstract methods should raise this exception when 
> they require derived classes to override the method, or while the class is being
> developed to indicate that the real implementation still needs to be added ...

This is causing a Paradox.

The following (correct) rules apply:

- An *Abstract Class Method* exclusively is abstract when decorated with `@abc.abstractmethod` decorator
- An *Abstract Class Method* always must be overloaded to ensure a different implementation
- A `NotImplementedError` must be raised when a real (method) implementation has to be added later

Python Documentation:

> ... **abstract methods** should raise this exception when they require derived
> classes to override the method ...

![EmojiBomb](/emoji_bomb_16x16.png)
![EmojiBomb](/emoji_bomb_16x16.png)
![EmojiBomb](/emoji_bomb_16x16.png)
**Incorrect**, the NotImplementedError Exception would never be raised in an
*Abstract Class Method* because the base method never will be called if declared
abstract.

Python Documentation:

> ... **abstract methods** should raise this exception while the class is being
> developed to indicate that the real implementation still needs to be added ...

![EmojiBomb](/emoji_bomb_16x16.png)
![EmojiBomb](/emoji_bomb_16x16.png)
![EmojiBomb](/emoji_bomb_16x16.png)
Also **incorrect**, same behaviour: *Abstract Class method* always **must** be overloaded.

The following code illustrates.

```python
import abc

class Base(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def do_action(self):
        raise NotImplementedError


class Walker(Base):
    pass


c1 = Walker()
c1.do_action()
```

See example code `test-abstract-classes5.py`.

```bash
Traceback (most recent call last):
  File "test-abstract-classes5.py", line 13, in <module>
    c1 = Walker()
         ^^^^^^^^
TypeError: Can't instantiate abstract class Walker without an implementation
for abstract method 'do_action'
```

If `do_action()` is declared abstract, the `TypeError` raised by internal
abc Python module prevents raising `NotImplementedError`.

```python
class Base():
    def do_action(self):
        raise NotImplementedError


class Walker(Base):
    pass


c1 = Walker()
c1.do_action()
```

See example code `test-abstract-classes6.py`.

```bash
Traceback (most recent call last):
  File "test-abstract-classes6.py", line 12, in <module>
    c1.do_action()
  File "test-abstract-classes6.py", line 5, in do_action
    raise NotImplementedError
NotImplementedError
```

This looks exactly like our achievement. Raise the `NotImplenentedError`
Exception when the base *Class Method* `do_action()` will be called from a
child class and is not yet implemented in the *Base Class*.

So, the `do_action()` method in the base class must **not** be declared
abstract.

## Defining Abstractness

There is some kind of confusion about Python *Abstract Classes* circulating
on the internet.

Some people are talking about *Abstract Class Methods* without declaring them
abstract by using abc modules `@abc.abstractmethod` decorator.

Also there could be a misunderstanding between the terms *Abstract Class* and
*Abstract Class Method*.

If an *Abstract Class* is setup using `metaclass=abc.ABCMeta` it does **not**
automatically mean every defined method will be declared abstract.

This only derives the `abc.ABCMeta` base class into the childs internal
`__metaclass__` member consisting of the routines including `TypeError`
Exception handling.

## Abstract NotImplementedError 

The correct way to define *Abstract Class Methods* as not implemented is raising
`NotImplementedError` inside the corresponding *Child Class Method*
(**not** in the base).

```python
import abc

class Base(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def do_action(self):
        pass


class Sub1(Base):
    def do_action(self):
        raise NotImplementedError


class Sub2(Base):
    pass


class Sub3(Base):
    def do_action(self):
        print('Sub3 - do action')


try:
    c1 = Sub1()
    c1.do_action()
except NotImplementedError as e:
    pass

try:
    c2 = Sub2()
    c2.do_action()
except TypeError as e:
    pass

c3 = Sub3()
c3.do_action()
```

See example code `test-abstract-classes7.py`.

# Documentation Corrected

My proposal to change the Python documentation.

> In user defined base classes, any non-abstract method should raise this
> exception when derived classes require to override the method to indicate
> that the real implementation still needs to be added.

See `test-abstract-classes6.py`.

> Abstract methods should raise this exception in the implementation part
> (derived class).

See `test-abstract-classes7.py`.

I am in permanent discussion on Pylint / github to keep Python and Pylint as good as possible.

# Practical Use Cases

The examples section of my **python-micro-esb** project contains some illustrative
examples how to use *Abstract Class Methods* in detail.

[https://github.com/clauspruefer/python-micro-esb](https://github.com/clauspruefer/python-micro-esb)
