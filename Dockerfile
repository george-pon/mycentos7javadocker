FROM georgesan/mycentos7docker:latest

ENV MYCENTOS7JAVADOCKER_VERSION build-target
ENV MYCENTOS7JAVADOCKER_VERSION latest
ENV MYCENTOS7JAVADOCKER_VERSION stable
ENV MYCENTOS7JAVADOCKER_IMAGE georgesan/mycentos7javadocker

# install java 11 and gradle 5.0
RUN yum install -y unzip && yum clean all
RUN yum install -y java-11-openjdk-devel && yum clean all
RUN curl -LO https://services.gradle.org/distributions/gradle-5.0-bin.zip && \
    unzip gradle-5.0-bin.zip && \
    mv ./gradle-5.0 /usr/local && \
    echo "export PATH=$PATH:/usr/local/gradle-5.0/bin" >> /etc/profile.d/docker-entrypoint-env.sh && \
    echo "export JAVA_HOME=$( readlink /etc/alternatives/java | sed -e 's/\/bin\/java//g' )" >> /etc/profile.d/docker-entrypoint-env.sh

CMD ["/usr/local/bin/docker-entrypoint.sh"]
