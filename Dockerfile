FROM store/oracle/serverjre:8 

# Maintainer
MAINTAINER shinyay <shinya.com@gmail.com>

# Set environment variable for Maven version
ENV MVN_VERSION 3.5.0

# Install packages
# Install Maven
RUN yum install -y curl tar gzip && \
    curl -fsSL http://archive.apache.org/dist/maven/maven-3/$MVN_VERSION/binaries/apache-maven-$MVN_VERSION-bin.tar.gz | tar xzf - -C /usr/share && \
    mv /usr/share/apache-maven-$MVN_VERSION /usr/share/maven && \
    ln -s /usr/share/maven/bin/mvn /usr/bin/mvn    
ENV MAVEN_HOME /usr/share/maven
CMD ["mvn"]
