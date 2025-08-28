#!/bin/bash -e

echo 'Build first run with tests'
mvn clean install
mv target/spring-boot-aot-reproducible*-tests.jar tests-with-aot.jar
echo 'Build second run without tests, to compare'
mvn clean install -DskipTests
mv target/spring-boot-aot-reproducible*-tests.jar tests-without-aot.jar

echo
echo
echo 'Diff between two runs:'
diff <(jar tf tests-with-aot.jar) <(jar tf tests-without-aot.jar)
