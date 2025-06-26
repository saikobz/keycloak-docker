FROM quay.io/keycloak/keycloak:25.0.6

# ตั้งค่าแอดมิน (ใช้ ENV เพื่อให้เปลี่ยนง่าย)
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=yourpassword

# สั่ง build ให้พร้อมใช้งาน
RUN /opt/keycloak/bin/kc.sh build

# เปิด HTTP บน Railway
EXPOSE 8080

# รันแบบ HTTP และข้าม hostname check
CMD ["/opt/keycloak/bin/kc.sh", "start", "--http-enabled=true", "--hostname-strict=false", "--hostname-strict-https=false"]
