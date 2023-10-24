# Comenzamos actualizando los paquetes del sistema, Fedora utiliza dnf
sudo dnf up

# Instalamos apache -y para responder a todo yes
sudo dnf install httpd -y

# Despues debemos iniciar el servicio
sudo systemctl start httpd

# Ahora automatizamos el hecho de que se levante solo tras cada reinicio
sudo systemctl enable httpd

# Instalamos MySQL server
sudo dnf install community-mysql-server -y

# Hacemos lo mismo que en el anterior
# Despues debemos iniciar el servicio
sudo systemctl start mysqld

# Ahora automatizamos el hecho de que se levante solo tras cada reinicio
sudo systemctl enable mysqld

# Instalamos PHP
sudo dnf install php -y

# Instalamos la extension para conectarlo con MYSQL
sudo dnf install php-mysqlnd -y

# Reiniciamos el servicio Apache 
sudo systemctl restart httpd