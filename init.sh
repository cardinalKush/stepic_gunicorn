sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart
sudo nginx -s reload

#sudo ﻿ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
#sudo /etc/init.d/nginx restart
#sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start

#1) git clone ... ( /home/box/web/etc/nginx.conf - это копия файла /etc/nginx/nginx. conf);
#2) sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/nginx.conf - делаем ссылку или /etc/nginx/sites-enabled/default и без пункта 3 
#3) sudo rm -rf /etc/nginx/sites-enabled/default - этот файл портил все карты, удалил его чтобы не мешал;
#4) в  /home/box/web/etc/nginx.conf  файл в блок "http" добавил блок "server" c location;
#5) sudo nginx -t (проверяем conf на наличие ошибок);
#6) sudo /etc/init.d/nginx restart; или чтобы не сбросить соединения $ sudo nginx -s reload

#curl -I http://localhost:80/some.file

#default конфиг подключается поверх etc, поэтому нужно исключить повторениее http