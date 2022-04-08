FROM apache/nifi:latest

# Add PostgreSQL driver to NiFi
RUN wget https://jdbc.postgresql.org/download/postgresql-42.3.3.jar -P /opt/nifi/nifi-current/lib

EXPOSE 8443
EXPOSE 7001

