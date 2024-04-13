Here are the steps and commands to build a Node.js project, including compilation with compile tools, building the artifact, and testing with testing tools.

### 1. Setup Node.js Environment

First, make sure you have Node.js and npm installed. If not, download and install them from [Node.js official website](https://nodejs.org/).

### 2. Navigate to Project Directory

Open your terminal and navigate to your Node.js project directory:

```bash
cd /path/to/your/nodejs/project
```

### 3. Install Dependencies

Install project dependencies using npm:

```bash
npm install
```

### 4. Compilation with Compile Tools (Optional)

If your project requires compilation, you might need to install additional tools or packages. For example, if you're using TypeScript:

```bash
npm install --save-dev typescript
```

Then, compile TypeScript files:

```bash
tsc
```

### 5. Building Artifact

Build your Node.js application. This step will generate the build artifacts:

```bash
npm run build
```

Or if you don't have a build script, you might use a command like:

```bash
npm run compile
```

### 6. Testing with Testing Tools

Run tests using testing frameworks like Jest, Mocha, or Jasmine. First, install the testing framework and any required testing libraries:

```bash
npm install --save-dev jest @types/jest
```

Then, run tests:

```bash
npm test
```

Or if you're using Jest:

```bash
jest
```

### Summary of Commands:

```bash
# Navigate to project directory
cd /path/to/your/nodejs/project

# Install dependencies
npm install

# (Optional) Install compile tools
npm install --save-dev typescript

# (Optional) Compile TypeScript
tsc

# Build artifact
npm run build

# (Optional) Or compile
npm run compile

# Install testing tools
npm install --save-dev jest @types/jest

# Run tests
npm test
```

Adjust these commands based on your project's requirements and structure. If your project uses a different build tool or testing framework, replace the commands accordingly.