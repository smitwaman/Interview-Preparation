step-by-step guide to creating and executing a simple Maven project:

**Step 1: Create Project Structure**
1. Create a new directory for your Maven project.
   ```bash
   mkdir my-maven-project
   cd my-maven-project
   ```

**Step 2: Create `pom.xml` File**
2. Inside the project directory, create a `pom.xml` file with the following content:
   ```xml
   <project xmlns="http://maven.apache.org/POM/4.0.0"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
       <modelVersion>4.0.0</modelVersion>
   
       <groupId>com.example</groupId>
       <artifactId>my-maven-project</artifactId>
       <version>1.0-SNAPSHOT</version>
   
       <name>My Maven Project</name>
       <url>http://example.com</url>
   
       <properties>
           <maven.compiler.source>1.8</maven.compiler.source>
           <maven.compiler.target>1.8</maven.compiler.target>
       </properties>
   
       <dependencies>
           <!-- No dependencies for this simple project -->
       </dependencies>
   </project>
   ```

**Step 3: Create Java Source Code**
3. Inside the project directory, create a `src/main/java` directory structure.
   ```bash
   mkdir -p src/main/java/com/example
   ```

4. Inside the `com/example` directory, create a simple Java class, for example `HelloWorld.java`.
   ```java
   package com.example;
   
   public class HelloWorld {
       public static void main(String[] args) {
           System.out.println("Hello, Maven!");
       }
   }
   ```

**Step 4: Build and Execute**
5. Open a terminal and navigate to the project directory (`my-maven-project`).
   ```bash
   cd my-maven-project
   ```

6. Build the project using Maven.
   ```bash
   mvn clean install
   ```

7. Execute the Java class using the Maven Exec Plugin.
   ```bash
   mvn exec:java -Dexec.mainClass="com.example.HelloWorld"
   ```

**Step 5: Verify Output**
8. You should see the output "Hello, Maven!" printed in the terminal.

That's it! You have successfully created and executed a simple Maven project. This example demonstrates the basic setup and usage of Maven for managing a Java project. You can further customize and extend the project by adding dependencies, plugins, tests, and more as needed.
