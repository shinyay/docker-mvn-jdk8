# Dockerfile for Maven

The Dockerfile generates Maven with Oracle Java 8 images

## Description

[Apache Maven](https://maven.apache.org/) is a project management and comprehension tool which is generally used.
This Dockerfile makes Maven environment pre-installed and configured Java and Maven.
Java and Maven vesion is the following:

- Java: Oracle JDK 8 (1.8.0_241-b07 as of 20-May-2020)
- Mavan: Maven 3.6.3

## Demo
![Demo](docs/images/docker-mvn01.gif)

## Features
All of Docker functions

## Requirement
- Docker Store Account
- Oracle Java 8 SE on Docker Store cheked out
  - [Oracle Java 8 SE (Server JRE)](https://store.docker.com/images/oracle-serverjre-8)

## Installation

`docker pull shinyay/docker-mvn-jdk8:3.6.3`

## Usage

`docker run -it --rm -v [LOCAL_MAVEN_PROJECT]:[WORKDIR_IN_CONTAINER] -w [WORKDIR_IN_CONTAINER] shinyay/docker-mvn-jdk8:3.6.3 mvn [MAVEN GOAL]`

### Example: mvn clean
`docker run -it --rm -v /home/shinyay/works/mvn-projects/mvn-webapp/mytest-app:/usr/src/mvnproject -w /usr/src/mvnproject shinya/mvn:3.6.3 mvn clean`

### Example: mvn package
`docker run -it --rm -v /home/shinyay/works/mvn-projects/mvn-webapp/mytest-app:/usr/src/mvnproject -w /usr/src/mvnproject shinya/mvn:3.6.3 mvn package`

## Licence

Released under the [MIT license](https://gist.githubusercontent.com/shinyay/56e54ee4c0e22db8211e05e70a63247e/raw/44f0f4de510b4f2b918fad3c91e0845104092bff/LICENSE)

## Author

[shinyay](https://github.com/shinyay)
