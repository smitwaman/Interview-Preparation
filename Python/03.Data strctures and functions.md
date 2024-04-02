**Data Structures and Functions**

**1. Lists:**
   - Lists are one of the most versatile data structures in Python.
   - They are ordered and mutable, meaning you can change the elements after defining them.
   - Syntax: `[element1, element2, ...]`
   - **Creating Lists:**
     ```python
     my_list = [1, 2, 3, 4, 5]
     ```
   - **Indexing and Slicing:**
     - Access elements using indices (0-based).
     - Negative indices count from the end of the list.
     - Slicing syntax: `my_list[start:end:step]`
     ```python
     print(my_list[0])    # Output: 1
     print(my_list[-1])   # Output: 5
     print(my_list[1:3])  # Output: [2, 3]
     ```
   - **Manipulating Lists:**
     - Add elements: `append()`, `insert()`
     - Remove elements: `remove()`, `pop()`, `del`
     - Extend lists: `extend()`, `+` operator
     - List operations: `len()`, `sort()`, `reverse()`, `count()`, `index()`

**2. Tuples:**
   - Tuples are similar to lists but are immutable, meaning you cannot change the elements after defining them.
   - Syntax: `(element1, element2, ...)`
   - **Creating Tuples:**
     ```python
     my_tuple = (1, 2, 3)
     ```
   - **Accessing Tuples:**
     - Access elements using indices (0-based).
     ```python
     print(my_tuple[0])    # Output: 1
     ```
   - **Immutable Nature:** Once created, elements cannot be modified, added, or removed from a tuple.

**3. Dictionaries:**
   - Dictionaries store key-value pairs.
   - They are unordered and mutable.
   - Syntax: `{key1: value1, key2: value2, ...}`
   - **Creating Dictionaries:**
     ```python
     my_dict = {'name': 'Alice', 'age': 30, 'city': 'New York'}
     ```
   - **Accessing and Manipulating Dictionaries:**
     - Access values using keys.
     ```python
     print(my_dict['name'])  # Output: Alice
     ```
     - Add, update, or remove key-value pairs.
     ```python
     my_dict['email'] = 'alice@example.com'  # Add
     my_dict['age'] = 31                      # Update
     del my_dict['city']                      # Remove
     ```
   - **Dictionary Methods:** `keys()`, `values()`, `items()`, `get()`, `pop()`, `clear()`, `update()`

**4. Sets:**
   - Sets store unique elements in an unordered collection.
   - They are mutable but cannot contain duplicate elements.
   - Syntax: `{element1, element2, ...}`
   - **Creating Sets:**
     ```python
     my_set = {1, 2, 3, 4, 5}
     ```
   - **Accessing and Manipulating Sets:**
     - Add, remove, or update elements.
     ```python
     my_set.add(6)    # Add
     my_set.remove(3) # Remove
     my_set.update({7, 8, 9}) # Update
     ```
   - **Set Operations:** Union, intersection, difference, symmetric difference.

**5. Functions:**
   - Functions are blocks of reusable code that perform a specific task.
   - They improve code readability, reusability, and modularity.
   - Syntax:
     ```python
     def function_name(parameters):
         # Function body
         return value
     ```
   - **Defining Functions:**
     ```python
     def greet(name):
         return f"Hello, {name}!"
     ```
   - **Parameters and Arguments:**
     - Functions can accept zero or more parameters.
     - Parameters are placeholders for the values passed to the function.
     ```python
     def add(x, y):
         return x + y
     
     result = add(3, 5)  # Arguments: 3 and 5
     ```
   - **Return Values:**
     - Functions can return a value using the `return` statement.
     - If no return statement is specified, the function returns `None`.
   - **Function Scope:**
     - Variables defined inside a function have local scope.
     - Local variables cannot be accessed outside the function.
     - Global variables are accessible throughout the program.

**6. Lambda Functions:**
   - Lambda functions, also known as anonymous functions, are small, inline functions without a name.
   - They can have any number of parameters but only one expression.
   - Syntax: `lambda parameters: expression`
   - Example:
     ```python
     square = lambda x: x * x
     print(square(5))  # Output: 25
     ```

**7. Recursion:**
  **Recursion**

Recursion is a programming technique where a function calls itself to solve a problem. It involves breaking down a problem into smaller, similar subproblems. The process continues until a base case is reached, which is a condition where the function stops calling itself and returns a value. Recursion can be used to solve problems in a more elegant and concise manner, especially when dealing with tasks that can be broken down into repetitive subtasks.

Here's an overview of how recursion works:

1. **Base Case:**
   - Every recursive function must have one or more base cases, which are conditions that determine when the recursion should stop.
   - Base cases prevent infinite recursion and provide a way for the function to return a result without further recursion.
   
2. **Recursive Case:**
   - The recursive case defines how the function calls itself with modified arguments to solve a smaller subproblem.
   - Each recursive call reduces the problem size, bringing it closer to the base case.

3. **Example: Factorial Function**
   - A classic example of recursion is calculating the factorial of a non-negative integer `n`.
   - The factorial of `n`, denoted as `n!`, is the product of all positive integers from `1` to `n`.
   - The base case for the factorial function is when `n` is `0` or `1`, in which case `n!` is `1`.
   - The recursive case involves calling the factorial function with `n-1` until the base case is reached.

```python
def factorial(n):
    # Base case: factorial of 0 or 1 is 1
    if n == 0 or n == 1:
        return 1
    # Recursive case: factorial of n is n times factorial of (n-1)
    else:
        return n * factorial(n - 1)

# Example usage
result = factorial(5)  # Calculates 5!
print(result)  # Output: 120
```

