#################################################################
# Dockerfile to build a Jekyll server to display rendered pages
#################################################################

FROM centos:7

MAINTAINER Will Hsu <uqwhsu@gmail.com>

ENV INPUTDIR /opt

# Install required packages
RUN yum -y update && \
yum -y install gcc ruby-devel rubygems make && \
yum clean all && \
gem install jekyll

# Copy startup script
COPY runjekyll.sh /usr/bin/runjekyll.sh
RUN chmod 755 /usr/bin/runjekyll.sh 

# Expose web
EXPOSE 80

# Define data volume
VOLUME ["/opt"]

# Start Jekyll site
CMD ["/usr/bin/runjekyll.sh"]

