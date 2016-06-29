FROM		scholzj/qpid-cpp:0.34
MAINTAINER 	JAkub Scholz "www@scholzj.com"

# Add configuration files
USER root
COPY ./var /var 
RUN chown -R 1001:0 /var/lib/qpidd

# Switch to qpidd user
USER 1001

# Run the broker
EXPOSE 5671 5672
CMD    /usr/sbin/qpidd --config /var/lib/qpidd/etc/qpidd.conf
