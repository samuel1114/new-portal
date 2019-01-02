FROM docker-registry.default.svc:5000/ci/payara-server-41:latest

USER root
RUN ls -la /opt/payara41/glassfish/domains/domain1/autodeploy/
RUN rm -f /opt/payara41/glassfish/domains/domain1/autodeploy/profile-management-core-ear-1.0.ear
RUN wget http://192.168.222.214:8888/apk/profile-management-core-ear-1.0.ear -P /opt/payara41/glassfish/domains/domain1/autodeploy/
RUN ls -la /opt/payara41/glassfish/domains/domain1/autodeploy/
