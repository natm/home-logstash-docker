FROM docker.elastic.co/logstash/logstash:5.2.2
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN /usr/share/logstash/bin/logstash-plugin install logstash-output-loggly
RUN /usr/share/logstash/bin/logstash-plugin install logstash-output-slack
ADD config /etc/logstash/conf.d/
ENTRYPOINT ["/usr/share/logstash/bin/logstash"]
CMD ["-f", "/etc/logstash/conf.d/logstash.conf"]
