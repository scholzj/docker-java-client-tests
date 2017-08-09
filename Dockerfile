FROM		scholzj/qpid-cpp:devel
MAINTAINER 	JAkub Scholz "www@scholzj.com"

# Add configuration files
USER root
COPY ./var /var 
RUN chown -R qpidd:qpidd /var/lib/qpidd

# Switch to qpidd user
USER qpidd

# Run the broker
EXPOSE 5671 5672
CMD    /usr/sbin/qpidd --config /var/lib/qpidd/etc/qpidd.conf
