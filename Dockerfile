FROM		scholzj/qpid-cpp:devel
LABEL       maintainer="Jakub Scholz <www@scholzj.com>"

# Add configuration files
USER root
COPY ./var /var 

# Run the broker
EXPOSE 5671 5672
CMD    /usr/sbin/qpidd --config /var/lib/qpidd/etc/qpidd.conf
