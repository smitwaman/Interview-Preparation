

simple shell script to install Python on Ubuntu. This script installs Python 3, `pip`, and `virtualenv`.

```bash
#!/bin/bash

# Update package list
sudo apt update

# Install Python 3 and pip
sudo apt install -y python3 python3-pip

# Install virtualenv
sudo pip3 install virtualenv

# Display installed Python version
echo "Python $(python3 --version) installed."
echo "pip $(pip3 --version) installed."
echo "virtualenv $(virtualenv --version) installed."
```

### Steps to Use the Script:

1. **Create a new file** named `install_python.sh`.
2. **Paste** the above script into the file.
3. **Save** the file and **close** it.
4. **Make the script executable** with the following command:

```bash
chmod +x install_python.sh
```

5. **Run the script**:

```bash
./install_python.sh
```

### Explanation:

- `#!/bin/bash`: Specifies that the script should be run with bash.
- `sudo apt update`: Updates the package list.
- `sudo apt install -y python3 python3-pip`: Installs Python 3 and pip.
- `sudo pip3 install virtualenv`: Installs `virtualenv`.
- `echo`: Prints the installed versions.

This script automates the installation process for Python, pip, and virtualenv on an Ubuntu system. After running this script, you'll have a Python environment ready to use for your projects.










simple "Hello World" program in Python, along with instructions to set up a virtual environment, install dependencies, and run the program.

### 1. "Hello World" Python Program

Create a file named `hello.py` with the following content:

```python
print("Hello, World!")
```

### 2. Set Up Virtual Environment

#### a. Install `virtualenv`:

If you haven't installed `virtualenv` yet, you can install it using `pip`:

```bash
pip install virtualenv
```

#### b. Create Virtual Environment:

Navigate to your project directory and create a virtual environment named `myenv`:

```bash
cd /path/to/your/project
virtualenv myenv
```

#### c. Activate Virtual Environment:

- **On Windows**:

```bash
myenv\Scripts\activate
```

- **On macOS and Linux**:

```bash
source myenv/bin/activate
```

### 3. Install Dependencies

In your activated virtual environment, install any dependencies (none for this simple example):

```bash
pip install -r requirements.txt
```

(Note: You can create a `requirements.txt` file with `pip freeze > requirements.txt` if you have any dependencies.)

### 4. Run the Program

Run the `hello.py` program:

```bash
python hello.py
```

You should see the output:

```
Hello, World!
```

### Summary:

1. Create a simple "Hello World" Python program (`hello.py`).
2. Set up a virtual environment using `virtualenv`.
3. Activate the virtual environment.
4. Install any dependencies using `pip`.
5. Run the Python program using `python`.

By following these steps, you can compile, build, and run a simple Python application in a virtual environment. This approach isolates your project's dependencies and ensures a clean environment for development.