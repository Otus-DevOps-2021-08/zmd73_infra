# zmd73_infra
zmd73 Infra repository


**Основное задание:**  

bastion_IP = 62.84.113.81  
someinternalhost_IP = 10.128.0.18


**для подключения создается файл в ~/.ssh/config в котором делаются следующие настройки**
  
Host bastion  
    HostName 62.84.113.81  
    User appuser  
    Port 22  
    IdentityFile ~/.ssh/appuser  
  
Host someinternalhost  
    HostName 10.128.0.18  
    User appuser  
    Port 22  
    IdentityFile ~/.ssh/appuser  
    ProxyJump bastion  
      
**После этого подключение одной командой выглядит как**  
ssh -J bastion someinternalhost

**Чтобы войти по имени хоста someinternalhost**  
   в ~/.bashrc добавляем   
   alias someinternalhost='ssh -J bastion someinternalhost'  
  
**Доступ к консоли VPN сервера организован по адресу https://62.84.113.81.sslip.io ** 
  
**Был сгенерирован сертификат и добавлен в конфиг**  
  
cat /etc/pritunl.conf                                                                                                                                      
{  
    "mongodb_uri": "mongodb://localhost:27017/pritunl",  
    "log_path": "/var/log/pritunl.log",  
    "static_cache": true,  
    "temp_path": "/tmp/pritunl_cf702221dca64697a0abae47ddaf6780",  
    "bind_addr": "0.0.0.0",  
    "www_path": "/usr/share/pritunl/www",  
    "local_address_interface": "auto",  
    "port": 443,  
    "ssl_certificate": "/etc/letsencrypt/live/62.84.113.81.sslip.io/fullchain.pem",  
    "ssl_certificate_key": "/etc/letsencrypt/live/62.84.113.81.sslip.io/privkey.pem"  
}  

