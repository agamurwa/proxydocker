## Memproxykan port phpmyadmin ke web alias
Akses phpmyadmin 
``http://localhost:8081``
ingin diproxykan ke
``http://localhost/phpmyadmin/``

Jalankan build docker menggunakan docker-compose
```
docker-compose up -d --build
```

Apabila pada folder ``/web/config/conf.d`` belum ada file ``proxy.conf`` dan ``proxy-html.conf`` maka copykan dari dalam container  \
Masuk kedalam contaner dahulu
```
docker exec -it nama_container sh
```

Lalu masuk folder ``/etc/apache2/conf.d``
```
cd /etc/apache2/conf.d
```

Copy ``proxy.conf`` dan ``proxy-html.conf`` taruh ke ``/web/config/conf.d``
```
copy proxy.conf proxy-html.conf /web/config/conf.d
```

Buat virtual host proxy  \
Contoh seperti pada file ``/web/config/conf.d/web.conf``  \
Jika anda menggunakan DocumentRoot pada ``web.conf``  \
Hapus atau beri tanda # pada DocumentRoot di ``/web/config/httpd.conf``
