Sure! Here's how you can install Node.js on an Ubuntu server:

### Method 1: Using the Official Ubuntu Repository

Ubuntu's default repositories contain an older version of Node.js. If you need a more recent version, consider using a different method.

1. Update package lists:

    ```bash
    sudo apt update
    ```

2. Install Node.js:

    ```bash
    sudo apt install nodejs
    ```

3. Install npm (Node Package Manager):

    ```bash
    sudo apt install npm
    ```

4. Verify the installation:

    ```bash
    node -v
    npm -v
    ```

### Method 2: Using NodeSource Repository (Recommended for Latest Version)

This method allows you to install the latest version of Node.js.

1. Install curl:

    ```bash
    sudo apt install curl
    ```

2. Download and run the NodeSource setup script for Node.js:

    For Node.js 16:

    ```bash
    curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    ```

    For Node.js 14:

    ```bash
    curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    ```

3. Install Node.js:

    ```bash
    sudo apt install -y nodejs
    ```

4. Install npm:

    ```bash
    sudo apt install -y npm
    ```

5. Verify the installation:

    ```bash
    node -v
    npm -v
    ```

### Method 3: Using NVM (Node Version Manager)

NVM allows you to install multiple versions of Node.js and switch between them easily.

1. Install NVM:

    ```bash
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    ```

    Note: You can check for the latest version of NVM on [NVM GitHub](https://github.com/nvm-sh/nvm/releases).

2. Load NVM:

    ```bash
    source ~/.bashrc
    ```

3. Install Node.js:

    ```bash
    nvm install node
    ```

4. Set default Node.js version:

    ```bash
    nvm alias default node
    ```

5. Verify the installation:

    ```bash
    node -v
    npm -v
    ```

Choose the method that best fits your needs. If you need the latest features and security updates, Method 2 or Method 3 is recommended. Otherwise, Method 1 from the official Ubuntu repositories should suffice for most general purposes.