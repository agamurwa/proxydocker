=== Memproxykan port phpmyadmin ke web alias ===

# akses phpmyadmin
http://localhost:8081
# ingin diproxykan ke
http://localhost/phpmyadmin/

# jalankan build docker menggunakan docker-compose
docker-compose up -d --build

# apabila pada folder /web/config/conf.d belum ada file proxy.conf dan proxy-html.conf
# copykan dari dalam container
# masuk kedalam contaner dahulu
docker exec -it nama_container sh

# lalu masuk folder /etc/apache2/conf.d
cd /etc/apache2/conf.d

# copy proxy.conf dan proxy-html.conf taruh ke /web/config/conf.d
copy proxy.conf proxy-html.conf /web/config/conf.d

# buat virtual host proxy
# contoh seperti pada file /web/config/conf.d/web.conf
# jika anda menggunakan DocumentRoot pada web.conf
# hapus atau beri tanda # pada DocumentRoot di /web/config/httpd.conf