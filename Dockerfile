FROM tsaridas/stremio-docker:latest

# تحديد مسار العمل الصحيح
WORKDIR /srv/stremio-server

# إظهار الملفات للتأكد (ستظهر في سجلات Render)
RUN ls -la

# إعطاء صلاحيات التشغيل للملف الصحيح
RUN chmod +x ./stremio-web-service-run.sh

# إعداد المتغيرات البيئية
ENV PORT=11470
EXPOSE 11470

# تشغيل الخادم مع إظهار النتائج
CMD ["sh", "-c", "echo 'Starting Stremio Server on Port $PORT...'; ./stremio-web-service-run.sh"]
