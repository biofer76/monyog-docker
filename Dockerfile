FROM centos:8

# Packages
RUN yum install -y wget bash unzip

# Install MONyog
RUN wget -O monyog.zip 'http://downloadfiles.idera.com/products/IderaSQLDiagnosticManagerForMySQL-Linux-x64-rpm.zip' && \
    unzip monyog.zip && \
    yum install -y *.rpm && rm -f *.rpm && yum clean all && /etc/init.d/MONyogd stop

# Create init volume and move source files
RUN mkdir /usr-start && mv /usr/local/MONyog /usr-start

# Expose port
EXPOSE 5555

VOLUME ["/usr/local/MONyog"]

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
