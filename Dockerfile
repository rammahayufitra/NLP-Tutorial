# Gunakan base image Ubuntu
FROM ubuntu:20.04

# Update package manager dan instal Python
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# Buat direktori kerja di dalam container
WORKDIR /app

# Menyalin file kode sumber Anda ke dalam container (jika ada)
COPY . /app

# Menginstal dependensi Python menggunakan pip (contoh: Flask)
RUN pip3 install Flask

# Expose port yang digunakan oleh aplikasi Anda
#EXPOSE 80

# Menjalankan aplikasi ketika container dijalankan
# CMD ["python3", "/app/app.py"]
