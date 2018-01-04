FROM gudaoxuri/ssh:latest
MAINTAINER gudaoxuri

#---------------Install Java---------------
RUN wget -P /opt/env/ --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u151-b12/e758a0de34e24606bca991d704f6dcbf/jdk-8u151-linux-x64.tar.gz  && \
    tar -xzf /opt/env/jdk-8u151-linux-x64.tar.gz -C /opt/env/  && \
    rm /opt/env/jdk-8u151-linux-x64.tar.gz  && \
    mv /opt/env/jdk1.8.0_151 /opt/env/java  && \
    echo "export JAVA_HOME=/opt/env/java" >> /etc/profile
ENV  JAVA_HOME /opt/env/java

RUN echo 'PATH=$PATH:$JAVA_HOME/bin' >> /etc/profile
ENV PATH $PATH:$JAVA_HOME/bin
