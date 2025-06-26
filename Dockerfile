FROM quay.io/keycloak/keycloak:25.0.6

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=yourpassword

RUN kc.sh build

EXPOSE 8080

CMD ["kc.sh", "start", "--http-enabled=true", "--hostname-strict=false", "--hostname-strict-https=false"]
