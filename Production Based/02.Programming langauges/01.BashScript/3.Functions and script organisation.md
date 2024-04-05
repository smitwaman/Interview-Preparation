**Functions and Script Organization**

**Defining and calling functions:**
In Bash scripting, functions are defined using the `function` keyword followed by the function name and parentheses containing the function parameters (if any). Functions are called by simply using their name followed by parentheses.

Example of defining and calling a function:
```bash
# Define a function
function greet() {
    echo "Hello, $1!"
}

# Call the function
greet "John"
```

**Passing arguments to functions and scripts:**
Arguments can be passed to functions and scripts by specifying them within the parentheses when calling the function or executing the script. Within the function, these arguments can be accessed using positional parameters like `$1`, `$2`, etc.

Example of passing arguments to a function:
```bash
# Define a function
function greet() {
    echo "Hello, $1 $2!"
}

# Call the function with arguments
greet "John" "Doe"
```

In scripts, arguments passed from the command line are accessed using special variables like `$1`, `$2`, etc., where `$1` represents the first argument, `$2` represents the second argument, and so on.

**Script organization and modularity:**
Organizing Bash scripts involves structuring the code into reusable functions, separating concerns, and maintaining readability. Modularity is achieved by breaking down complex scripts into smaller, manageable functions, each responsible for a specific task.

Example of script organization and modularity:
```bash
#!/bin/bash

# Function to greet a person
function greet() {
    echo "Hello, $1 $2!"
}

# Function to calculate the sum of two numbers
function add() {
    sum=$(( $1 + $2 ))
    echo "The sum of $1 and $2 is: $sum"
}

# Main script logic
name="John"
last_name="Doe"
greet "$name" "$last_name"

add 10 20
```

By organizing Bash scripts into functions and separating concerns, code readability, maintainability, and reusability are enhanced, making it easier to manage and extend scripts as needed.
