**Advanced Concepts**

**1. Generators and Iterators:**
Generators and iterators are advanced Python concepts for efficient iteration over sequences, especially for large or infinite data streams.

- **Generators:** Generators are functions that use the `yield` keyword to generate a sequence of values lazily. They produce values one at a time, only when requested.
```python
def square_numbers(n):
    for i in range(n):
        yield i ** 2

# Using generator to create a sequence of square numbers
for num in square_numbers(5):
    print(num)
```

- **Iterators:** Iterators are objects that implement the iterator protocol, allowing sequential access to elements in a collection. They provide the `__iter__()` and `__next__()` methods.
```python
class MyIterator:
    def __init__(self, start, end):
        self.current = start
        self.end = end
    
    def __iter__(self):
        return self
    
    def __next__(self):
        if self.current > self.end:
            raise StopIteration
        else:
            self.current += 1
            return self.current - 1

# Using custom iterator
my_iter = MyIterator(1, 5)
for num in my_iter:
    print(num)
```

**2. Decorators:**
Decorators are functions that modify the behavior of other functions or methods. They are commonly used for adding functionality, such as logging, caching, or authentication, to existing functions without modifying their code.

- **Applying Decorators:**
```python
def my_decorator(func):
    def wrapper():
        print("Something is happening before the function is called.")
        func()
        print("Something is happening after the function is called.")
    return wrapper

@my_decorator
def say_hello():
    print("Hello!")

say_hello()
```

- **Creating Custom Decorators:**
```python
def uppercase_decorator(func):
    def wrapper(text):
        result = func(text)
        return result.upper()
    return wrapper

@uppercase_decorator
def greet(name):
    return f"Hello, {name}!"

print(greet("John"))  # Output: HELLO, JOHN!
```

**3. Context Managers:**
Context managers are objects that enable resource management using the `with` statement. They automatically set up and tear down resources, such as opening and closing files or database connections, within a defined context.

- **Using the "with" Statement:**
```python
with open("example.txt", "r") as file:
    data = file.read()
    print(data)
```
The `open()` function returns a file object, which serves as a context manager. It automatically closes the file when exiting the `with` block.

**4. Regular Expressions:**
Regular expressions (regex) are powerful tools for pattern matching and text processing. The `re` module in Python provides support for working with regular expressions.

- **Pattern Matching:**
```python
import re

text = "The quick brown fox jumps over the lazy dog."

# Search for a word starting with 'fox'
match = re.search(r'\bfox\b', text)
if match:
    print("Match found:", match.group())
```
Regular expressions use special syntax to define patterns, such as `\b` for word boundaries. The `search()` function in the `re` module is used to find the first occurrence of a pattern in a string.

These advanced concepts in Python—generators and iterators, decorators, context managers, and regular expressions—provide powerful tools for efficient programming, enabling you to write cleaner, more expressive, and more maintainable code. Understanding and mastering these concepts will greatly enhance your proficiency as a Python programmer.
