FROM tsaridas/stremio-docker:latest

# إعطاء صلاحيات التشغيل للملف الأساسي
RUN chmod +x ./stremio-web-service.sh

# المنفذ
EXPOSE 11470

# التشغيل
CMD ["./stremio-web-service.sh"]
