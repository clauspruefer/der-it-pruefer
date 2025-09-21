---
category: programming
tags: [python, oop, object-oriented, programming, abstract, abstract-classes, abstract-methods, english]
---

# Post Meta-Data

| Date       | Language | Author                         | Description                                    |
|------------|----------|--------------------------------|------------------------------------------------|
| 02.02.2025 | English  | Claus Prüfer (Chief Prüfer)    | Python Abstract Class Methods Demystified      |

# Preface

Recently, I added **Pylint** ([https://pylint.org](https://pylint.org)) as a Python linter to my [python-micro-esb](https://github.com/clauspruefer/python-micro-esb) project on GitHub.

Primarily, I use KDevelop’s internal linting mechanism (*kdevelop-python* extension), which is quite precise in detecting language syntax mismatches.

Given that **Pylint** is the most popular out-of-the-box Python linter for *GitHub Actions*, I thought: “Why not give it a try?” Star your code!

# Example Download URL

Example Python scripts referenced in this post can be downloaded from:
[https://download.webcodex.de/der-it-pruefer/python-abstract-class-methods](https://download.webcodex.de/der-it-pruefer/python-abstract-class-methods).

# Basics

## Abstract Classes

The purpose of *Abstract Classes* is to enforce the implementation (overriding) of certain class methods in derived *Child Classes*.

Python provides the `abc.ABCMeta` module for handling *Abstract Classes* and *Abstract Methods*, which is the focus of this discussion.

## Abstract Class Methods

Let’s illustrate with a simple example:

> The `@abc.abstractmethod` decorator marks a class method as an *Abstract Method*.

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

This base code is designed to be extended by yourself or other members of your development team. You want to ensure that every new *Sub Class* implements `do_action()`. If an implementer forgets to add this abstract method, an error should be raised.

*Abstract Methods* provide the necessary design pattern for this.

## Implementation Check

If someone implements a subclass incorrectly by omitting the `do_action()` method, a `TypeError` exception will be raised.

```python
class Jumper(Base):
    def do_something_else(self):
        print('Jumper doing something else')
```

When instantiating this class (`c1 = Jumper()`), the Python interpreter raises the correct error:

```bash
c1 = Jumper()
     ^^^^^^^^
TypeError: Can not instantiate abstract class Jumper without an implementation for abstract method 'do_action'
```

See the example code `test-abstract-classes1.py`.

## Base Declaration

Suppose the base class method `do_action()` contains some logic:

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

Because *Abstract Methods* must always be overridden, `Base.do_action()` will never be called directly. The correct abstract declaration is:

```python
import abc

class Base(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def do_action(self):
        pass
```

See the example code `test-abstract-classes2.py`, which demonstrates that `do_action()` methods are only called inside child classes:

```bash
python3 test-abstract-classes2.py
```

Output:

```bash
Walker - walking
Dancer - dancing
```

Notice that “Base - Global moving” from the `Base` class is **not** displayed.

## Abstract Versus Non-Abstract

A common misunderstanding is that an *Abstract Class* automatically makes all its methods abstract. This is not the case.

Mixing *Abstract Methods* with *Non-Abstract Methods* is a standard design approach and enables flexible abstraction in your code.

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

Output:

```bash
Base - global thoughts.
Walker - walking
Walker - pythonic silly walking.
Base - global thoughts.
Dancer - dancing
Decorator - do some stuff from anywhere.
```

# NotImplementedError

Now that we have clarified *Abstract Classes* and *Abstract Methods*, let’s continue with our main topic.

Parts of my project use the *NotImplementedError* paradigm/design pattern.

In short, as the name implies, the `NotImplementedError` exception should be raised when some functionality is planned but not yet implemented.

When a user tries to execute such a method, `NotImplementedError` is raised to signal: not implemented yet.

## Pylint Issue

What confused me is that Pylint complains about the following code:

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

This proves that the Python interpreter behaves correctly: `NotImplementedError` is raised when `do_advanced_action()` is called from a child class.

```bash
Traceback (most recent call last):
  File "python-code/test-abstract-classes4.py", line 16, in <module>
    c1.do_advanced_action()
  File "test-abstract-classes4.py", line 5, in do_advanced_action
    raise NotImplementedError
NotImplementedError
```

## Pylint Implementation

**Pylint** claims (W0223) that `do_advanced_action()` is abstract in class `Base` but is not overridden in class `Dancer`.

```bash
test-abstract-classes4.py:11:0: W0223: Method 'do_advanced_action' is abstract in class 'Base' but is not overridden in child class 'Dancer' (abstract-method)
```

I thought, “This must be a Pylint bug.”

## Pylint Why?

After filing a [Pylint issue (#10192)](https://github.com/pylint-dev/pylint/issues/10192), and a deeper discussion with Mark Byrne from Pylint, it was suggested that perhaps the Python documentation itself is unclear.

> Python never makes mistakes.

Or so I thought. But maybe I was approaching this the wrong way.

## Python Documentation

Current excerpt from the Python 3.10+ documentation for `NotImplementedError`:

> ... In user-defined base classes, abstract methods should raise this exception when they require derived classes to override the method, or while the class is being developed to indicate that the real implementation still needs to be added ...

This creates a paradox.

The following (correct) rules apply:

- A method is only abstract if decorated with `@abc.abstractmethod`.
- Abstract methods must always be overridden to ensure a different implementation.
- `NotImplementedError` should be raised when an actual method implementation is to be added later.

Python documentation says:

> ... **abstract methods** should raise this exception when they require derived classes to override the method ...

![EmojiBomb](/emoji_bomb_16x16.png)
![EmojiBomb](/emoji_bomb_16x16.png)
![EmojiBomb](/emoji_bomb_16x16.png)

**Incorrect:** `NotImplementedError` would never be raised in an abstract method, because the base method is never called if declared as abstract.

Python documentation also says:

> ... **abstract methods** should raise this exception while the class is being developed to indicate that the real implementation still needs to be added ...

![EmojiBomb](/emoji_bomb_16x16.png)
![EmojiBomb](/emoji_bomb_16x16.png)
![EmojiBomb](/emoji_bomb_16x16.png)

Also **incorrect**: Same behavior — abstract methods must always be overridden.

Consider this code:

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
TypeError: Can not instantiate abstract class Walker without an implementation for abstract method 'do_action'
```

Since `do_action()` is declared abstract, the internal `abc` module raises `TypeError`, so `NotImplementedError` is never triggered.

Compare with:

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

This achieves the intended effect: `NotImplementedError` is raised when the base method is called from a child class and not yet implemented.

Therefore, the `do_action()` method in the base class must **not** be declared abstract for this pattern.

## Defining Abstractness

There is some confusion online regarding Python *Abstract Classes*.

Some refer to *Abstract Methods* without actually declaring them as abstract using the `@abc.abstractmethod` decorator.

Also, there is often confusion between the terms *Abstract Class* and *Abstract Method*.

Setting up an *Abstract Class* using `metaclass=abc.ABCMeta` does **not** automatically make all its methods abstract. It simply derives the `abc.ABCMeta` base class, including the internal routines for `TypeError` exception handling.

## Abstract NotImplementedError

The correct way to raise `NotImplementedError` for *Abstract Methods* is to do so in the corresponding *Child Class Method*, **not** in the base class.

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
except NotImplementedError:
    pass

try:
    c2 = Sub2()
    c2.do_action()
except TypeError:
    pass

c3 = Sub3()
c3.do_action()
```

See example code `test-abstract-classes7.py`.

# Documentation Corrected

My proposal to improve the Python documentation:

> In user-defined base classes, any non-abstract method should raise this exception when derived classes are required to override the method, indicating that the real implementation still needs to be added.

See `test-abstract-classes6.py`.

> Abstract methods should raise this exception in the implementation part (derived class).

See `test-abstract-classes7.py`.

I am in ongoing discussion on Pylint’s GitHub to keep Python and Pylint as robust as possible.

# Practical Use Cases

The examples section of my **python-micro-esb** project contains illustrative examples on how to use *Abstract Methods* in detail:

[https://github.com/clauspruefer/python-micro-esb](https://github.com/clauspruefer/python-micro-esb)
