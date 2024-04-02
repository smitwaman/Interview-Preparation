**Module 3: Object-Oriented Programming (OOP) in Python**

**Introduction to OOP: Classes, Objects, Attributes, and Methods**
- **Classes:** In Python, classes are blueprints for creating objects. They define the structure and behavior of objects. A class is defined using the `class` keyword.
- **Objects:** Objects are instances of classes. They are created using the class constructor. Each object has its own unique identity, state, and behavior.
- **Attributes:** Attributes are data members or variables associated with a class or object. They represent the state of an object.
- **Methods:** Methods are functions defined inside a class that perform operations on the object's data. They define the behavior of objects.

**Class and Object Creation: Defining Classes, Constructors, and Instantiating Objects**
- **Defining Classes:** Classes are defined using the `class` keyword followed by the class name and a colon. Inside the class, you can define attributes and methods.
  ```python
  class Person:
      # Class attributes
      species = 'Human'
      
      # Constructor
      def __init__(self, name, age):
          # Instance attributes
          self.name = name
          self.age = age
      
      # Instance method
      def greet(self):
          return f"Hello, my name is {self.name} and I am {self.age} years old."
  ```
- **Constructors:** Constructors are special methods called when an object is created. In Python, the constructor method is `__init__()`. It initializes the object's attributes.
- **Instantiating Objects:** Objects are created by calling the class constructor. You can create multiple objects of the same class, each with its own state.
  ```python
  # Creating objects of the Person class
  person1 = Person("Alice", 30)
  person2 = Person("Bob", 25)
  ```

**Inheritance: Extending Classes, Overriding Methods, and super() Function**
- **Extending Classes:** Inheritance allows a class to inherit attributes and methods from another class. The derived class (subclass) extends the functionality of the base class (superclass).
- **Overriding Methods:** Subclasses can override methods of the superclass by defining a method with the same name. This allows customization of behavior in the subclass.
- **super() Function:** The `super()` function is used to call methods of the superclass from the subclass. It allows access to the superclass's methods and attributes.
  ```python
  class Student(Person):
      def __init__(self, name, age, student_id):
          super().__init__(name, age)
          self.student_id = student_id
  ```

**Polymorphism: Method Overriding and Method Overloading**
- **Method Overriding:** Method overriding occurs when a subclass defines a method with the same name as a method in the superclass. The subclass method overrides the superclass method, providing its own implementation.
- **Method Overloading:** Python does not support method overloading in the traditional sense (as in languages like Java). However, you can achieve similar behavior by using default parameter values or variable-length argument lists.

**Encapsulation: Data Hiding, Getters, and Setters**
- **Data Hiding:** Encapsulation is the concept of bundling data (attributes) and methods that operate on the data within a single unit (class). It hides the internal state of objects from the outside world, providing controlled access to the data.
- **Getters and Setters:** Getters and setters are methods used to access and modify the private attributes of a class, respectively. They provide controlled access to class attributes, allowing validation and encapsulation.
- **Property Decorators:** In Python, properties and setters can be implemented using property decorators to define getter and setter methods for attributes.
  ```python
  class Person:
      def __init__(self, name, age):
          self._name = name  # Private attribute
          self._age = age    # Private attribute

      @property
      def name(self):
          return self._name

      @name.setter
      def name(self, value):
          self._name = value

      @property
      def age(self):
          return self._age

      @age.setter
      def age(self, value):
          if value >= 0:
              self._age = value
          else:
              raise ValueError("Age must be a non-negative integer.")
  ```

Object-oriented programming in Python provides a powerful and flexible way to structure and organize code, allowing for modular and reusable solutions. By understanding the concepts of classes, objects, inheritance, polymorphism, and encapsulation, you can design and implement complex systems with ease.
