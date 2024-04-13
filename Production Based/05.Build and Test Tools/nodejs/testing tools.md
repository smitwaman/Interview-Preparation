Certainly! Below are the commands to run tests and build packages for the mentioned testing tools and package managers:

### 1. **Jest**

- **Run Tests**:
  ```bash
  npx jest
  ```

- **Build Package**:
  Jest is primarily a testing framework and doesn't have a built-in build command. You can use other tools like Webpack or Babel for bundling and transpiling.

### 2. **Mocha**

- **Run Tests**:
  ```bash
  npx mocha
  ```

- **Build Package**:
  ```bash
  npm run build
  ```

### 3. **Chai**

- **Run Tests**:
  Since Chai is an assertion library, it's used with testing frameworks like Mocha or Jest.
  
- **Build Package**:
  Depends on the testing framework you're using.

### 4. **Sinon.js**

- **Run Tests**:
  Depends on the testing framework you're using.

- **Build Package**:
  ```bash
  npm run build
  ```

### 5. **Supertest**

- **Run Tests**:
  ```bash
  npx mocha tests
  ```

- **Build Package**:
  Supertest is used for testing HTTP requests and doesn't have a build command. You can use other tools like Webpack for bundling if needed.

### 6. **Istanbul (nyc)**

- **Run Tests with Coverage**:
  ```bash
  npx nyc mocha
  ```

- **Build Package**:
  ```bash
  npm run build
  ```

### Example `package.json` Scripts:

You can add these commands as scripts in your `package.json` file for easy execution:

```json
{
  "scripts": {
    "test": "jest",
    "test:mocha": "mocha",
    "test:supertest": "mocha tests",
    "coverage": "nyc mocha",
    "build": "webpack --mode production"
  },
  "devDependencies": {
    "jest": "^27.0.0",
    "mocha": "^9.0.0",
    "chai": "^4.3.0",
    "sinon": "^11.1.0",
    "supertest": "^6.1.6",
    "nyc": "^15.1.0",
    "webpack": "^5.0.0"
  }
}
```

### Summary:

- **Run Tests**:
  - **Jest**: `npx jest`
  - **Mocha**: `npx mocha`
  - **Chai**: Depends on the testing framework
  - **Sinon.js**: Depends on the testing framework
  - **Supertest**: `npx mocha tests`
  - **Istanbul (nyc)**: `npx nyc mocha`

- **Build Package**:
  - **Jest**: Use bundlers like Webpack
  - **Mocha**: `npm run build`
  - **Chai**: Depends on the testing framework
  - **Sinon.js**: `npm run build`
  - **Supertest**: Use bundlers like Webpack
  - **Istanbul (nyc)**: `npm run build`

Adjust these commands and scripts based on your project's structure and requirements.