# zmd73_infra
zmd73 Infra repository

ДЗ№4: Управление ресурсами yandex cloud через YC

testapp_IP = 84.201.156.147
testapp_port = 9292


Дополнительное задание:

Автоматическое создание VM с запущенным сервисом
скрипт находится instance.sh параметры в user-data.yml

yc compute instance create \
  --name reddit-app-auto \
  --hostname reddit-app2 \
  --cores=2 \
  --memory=4 \
  --core-fraction=20 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./user-data.yml

Проверить допзадание можно по адресу http://62.84.115.112:9292
