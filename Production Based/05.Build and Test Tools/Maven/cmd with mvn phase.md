list of useful Maven commands along with the phases they typically execute:

1. **mvn clean**: Clean phase
   - Executes: clean

2. **mvn compile**: Compile phase
   - Executes: validate, initialize, generate-sources, process-sources, generate-resources, process-resources, compile, process-classes

3. **mvn test**: Test phase
   - Executes: validate, initialize, generate-test-sources, process-test-sources, generate-test-resources, process-test-resources, test-compile, process-test-classes, test

4. **mvn package**: Package phase
   - Executes: validate, initialize, generate-sources, process-sources, generate-resources, process-resources, compile, process-classes, generate-test-sources, process-test-sources, generate-test-resources, process-test-resources, test-compile, process-test-classes, test, prepare-package, package

5. **mvn install**: Install phase
   - Executes: validate, initialize, generate-sources, process-sources, generate-resources, process-resources, compile, process-classes, generate-test-sources, process-test-sources, generate-test-resources, process-test-resources, test-compile, process-test-classes, test, prepare-package, package, pre-integration-test, integration-test, post-integration-test, verify, install

6. **mvn deploy**: Deploy phase
   - Executes: validate, initialize, generate-sources, process-sources, generate-resources, process-resources, compile, process-classes, generate-test-sources, process-test-sources, generate-test-resources, process-test-resources, test-compile, process-test-classes, test, prepare-package, package, pre-integration-test, integration-test, post-integration-test, verify, deploy

7. **mvn site**: Site phase
   - Executes: validate, initialize, generate-sources, process-sources, generate-resources, process-resources, compile, process-classes, generate-test-sources, process-test-sources, generate-test-resources, process-test-resources, test-compile, process-test-classes, test, prepare-package, package, pre-integration-test, integration-test, post-integration-test, verify, site

These commands trigger the corresponding Maven phases along with their associated goals. Depending on the project configuration and plugins used, additional goals may also be executed within each phase.
