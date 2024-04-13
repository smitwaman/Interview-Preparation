Sure, here's a breakdown of common Java project architectures with their corresponding file and folder configurations:

### 1. Simple/Script-based:

**Folder Structure:**
```
/my_project/
|-- Main.java
```

**Description:**  
A single Java file that contains the `main()` method to execute the program.

### 2. Package-based:

**Folder Structure:**
```
/my_project/
|-- Main.java
|-- com/
|   |-- example/
|       |-- Util.java
```

**Description:**  
Organizes code into packages to group related classes and prevent naming conflicts.

### 3. Maven-based:

**Folder Structure:**
```
/my_project/
|-- pom.xml
|-- src/
|   |-- main/
|   |   |-- java/
|   |       |-- com/
|   |           |-- example/
|   |               |-- App.java
|   |-- test/
|       |-- java/
|           |-- com/
|               |-- example/
|                   |-- AppTest.java
```

**Description:**  
Uses Maven as a build tool to manage dependencies and project lifecycle.

### 4. Spring Boot:

**Folder Structure:**
```
/my_spring_boot_project/
|-- src/
|   |-- main/
|   |   |-- java/
|   |       |-- com/
|   |           |-- example/
|   |               |-- Application.java
|   |-- test/
|       |-- java/
|           |-- com/
|               |-- example/
|                   |-- ApplicationTests.java
|-- pom.xml
```

**Description:**  
Uses Spring Boot framework with Maven. Organized with `Application.java` as the main entry point.

### 5. MVC (Model-View-Controller):

**Folder Structure:**
```
/my_mvc_project/
|-- src/
|   |-- main/
|   |   |-- java/
|   |       |-- com/
|   |           |-- example/
|   |               |-- controller/
|   |               |   |-- HomeController.java
|   |               |-- model/
|   |               |   |-- User.java
|   |               |-- view/
|   |                   |-- index.jsp
|   |-- webapp/
|       |-- WEB-INF/
|           |-- web.xml
```

**Description:**  
Separates application logic into Model, View, and Controller components.

### 6. REST API:

**Folder Structure:**
```
/my_rest_api_project/
|-- src/
|   |-- main/
|   |   |-- java/
|   |       |-- com/
|   |           |-- example/
|   |               |-- controller/
|   |               |   |-- UserController.java
|   |               |-- model/
|   |               |   |-- User.java
|   |               |-- Application.java
|   |-- test/
|       |-- java/
|           |-- com/
|               |-- example/
|                   |-- UserControllerTest.java
|-- pom.xml
```

**Description:**  
Organizes code for a RESTful API with Spring Boot and Maven.

### 7. Microservices:

**Folder Structure:**
```
/my_microservices_project/
|-- service1/
|   |-- src/
|   |   |-- main/
|   |       |-- java/
|   |           |-- com/
|   |               |-- example/
|   |                   |-- Service1Application.java
|-- service2/
    |-- src/
        |-- main/
            |-- java/
                |-- com/
                    |-- example/
                        |-- Service2Application.java
```

**Description:**  
Organizes code into separate microservices, each with its own structure.

### 8. Spring MVC with Hibernate:

**Folder Structure:**
```
/my_spring_hibernate_project/
|-- src/
|   |-- main/
|   |   |-- java/
|   |       |-- com/
|   |           |-- example/
|   |               |-- controller/
|   |               |-- model/
|   |               |-- repository/
|   |               |-- service/
|   |               |-- config/
|   |-- resources/
|       |-- application.properties
|-- pom.xml
```

**Description:**  
Uses Spring MVC for web layer, Spring Data JPA for data access, and Hibernate as ORM.

### Summary:

- **Simple/Script-based**: Single Java file with `main()` method.
- **Package-based**: Organizes code into packages.
- **Maven-based**: Uses Maven for build and dependency management.
- **Spring Boot**: Uses Spring Boot framework with Maven.
- **MVC**: Separates application logic into Model, View, and Controller.
- **REST API**: Organizes code for a RESTful API with Spring Boot.
- **Microservices**: Organizes code into separate microservices.
- **Spring MVC with Hibernate**: Uses Spring MVC, Spring Data JPA, and Hibernate.

Choose the architecture that best fits your project's complexity and requirements. Organizing your Java code effectively can improve maintainability, scalability, and collaboration.