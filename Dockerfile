FROM quay.io/keycloak/keycloak:22.0.3

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=yourpassword

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]