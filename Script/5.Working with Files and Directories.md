**Working with Files and Directories**

**File input/output operations:**
File input/output operations in Bash scripting involve reading from and writing to files. Bash provides various commands and operators to perform these operations.

Example of reading from a file:
```bash
# Read contents of a file line by line
while IFS= read -r line; do
    echo "$line"
done < input.txt
```

Example of writing to a file:
```bash
# Write to a file
echo "Hello, world!" > output.txt
```

**File and directory manipulation (creating, moving, deleting):**
Bash scripting allows manipulation of files and directories, including creating, moving, and deleting them. This can be done using commands like `mkdir`, `mv`, and `rm`.

Example of creating a directory:
```bash
# Create a directory
mkdir my_directory
```

Example of moving a file:
```bash
# Move a file
mv file.txt destination_directory/
```

Example of deleting a file:
```bash
# Delete a file
rm file.txt
```

**Reading and writing to files:**
Reading from files involves commands like `cat`, `head`, `tail`, `grep`, `awk`, etc., while writing to files can be done using redirection or tools like `echo`, `printf`, etc.

Example of reading from a file:
```bash
# Display contents of a file
cat file.txt
```

Example of writing to a file:
```bash
# Append to a file
echo "New content" >> file.txt
```

In Bash scripting, file input/output operations and file/directory manipulation are essential for automating tasks involving data processing, file management, and system administration. Understanding these concepts and commands allows scriptwriters to manipulate files and directories efficiently within their scripts.
