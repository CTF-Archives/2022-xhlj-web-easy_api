FROM jetty:9.4.49-jdk8

COPY ROOT.war /var/lib/jetty/webapps/root.war

COPY docker-entrypoint.sh /

# COPY flag /flag

EXPOSE 8080
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["java","-jar","/usr/local/jetty/start.jar"]