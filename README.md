# zmd73_infra
zmd73 Infra repository

ДЗ№8 Знакомство с Terraform
Выполненные работы
1.	Создаем ветку terraform-1 и устанавливаем terraform
2.	Создаем каталог terraform с main.tf внутри и добавляем исключения в .gitignore 
3.	Выполняем задания, указанные в методичке в результате, получаем запущенное приложение 
4.	Используя input vars, описываем наши переменные в variables.tf а сами параметры для переменных записываем в terraform.tfvars
        Проверяем - все работает!

  Задание со звездочкой
1.	Создаем файл lb.tf, в котором указываем настройки для сетевого балансировщика для двух нод
2.	Модифицируем файл  main.tf путем добавление блока динамического создания нод на основе задаваемого из колва в переменной instances. Используется блок dynamic 
3.	Добавляем 2 переменные region_id  и instances в файлы  variables.tf и terraform.tfvars
4.	Меняем также output.tf, чтобы теперь он выводил ip не только нод, но и балансировщика
5.	Применяем изменения и проверяем работу путем захода на ноды и выключения сервиса puma. Балансировщик отрабатывает, как и требуется в задании




ДЗ№7 Модели управления инфраструктурой. Подготовка образов с помощью Packer

1. Создаем новую ветку packer-base и переносим скрипты из предыдущего ДЗ в config-scripts
2. Устанавливаем packer
3. Создаем сервисный аккаунт yc и предоставляем ему права editor
4. Создаем шаблон ubuntu16.json после чего проверяем и собираем образ
5. Создаем файлы с переменными variables.json и variables.json.example, включают в себя 
   параметры которые мы хотим переопределить 
6. Добавляем variables.json в .gitignore 
7. Чтобы прошла проверка тестами travis необходимо создать key.json с придуманными параметрами.
8. Было выполнено задание со звездочкой – создан образ содержащий все необходимое, чтобы созданная
   на его основе ВМ запускалась с уже работающим приложением. На базе ubuntu16.json создаем immutable.json,
   в котором добавляем скрипт установки и запуска сервиса puma. Созданный image называем reddit-full
9. На основе созданного image при помощи скрипта create-reddit-vm.sh создаем ВМ в Yandex.Cloud



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
