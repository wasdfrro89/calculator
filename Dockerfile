# ใช้ภาพเบส Python 3.8
FROM python:3.8

# สร้างโฟลเดอร์ /app ใน Docker container
WORKDIR /app

# คัดลอกไฟล์ app.py จากโฟลเดอร์ปัจจุบันของคุณไปยังโฟลเดอร์ /app ใน Docker container
COPY app.py /app

# คัดลอกโฟลเดอร์ templates จากโฟลเดอร์ปัจจุบันของคุณไปยังโฟลเดอร์ /app/templates ใน Docker container
COPY templates /app/templates

# ติดตั้ง Flask
RUN pip install Flask

# เปิดพอร์ต 5000 ใน Docker container
EXPOSE 5000

# รันเว็บแอปพลิเคชัน
CMD ["python", "app.py"]
