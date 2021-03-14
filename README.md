# Приложение 'Барбекю'

В данном приложении вы можете создавать "События", на которые могут подписываться как 
ваши друзья, так и другие, желающие поучавстовать.

Если же вы хотите, чтобы доступ имели только друзья, то можете добавить пинкод к событию при 
создании и редактировании события.

Данное приложение реализовано на языке Ruby 2.7.1 и Rails 6.0.3.4

### Запуск приложения

1. Скопируйте приложение:

```
$ git clone git@github.com:rust-am/barbecue.git
```

Или просто скачайте его на свой компьютер.

2. Установите необходимые гемы, создайте базу данных и сделайте необходимые миграции, создайте файл ```config/database.yml``` - 
в данном файле необходимо прописать настройки для подключения к вашей БД, [тут можно прочитать как это сделать](https://edgeguides.rubyonrails.org/configuring.html#configuring-a-database)
После настройки параметров подключения к БД, выполните следующие действия в консоли:

```
$ bundle
$ yarn
$ rails db:create
$ rails db:migrate
```

2.1 Так же для работы приложения
вам необходимо добавить токены от таких сервисов, как:

Для отображения точки на Яндекс картах - ```app/views/layous/application.html.erb```

Для отправки уведомлений и писем Mailjet - ```config/initializers/mailjet.rb```

Для хранения файлов изображений Amazon AWS - ```config/initializers/carrierwave.rb```

Для деплоя на ваш удаленный сервер Capistrano - ```config/deploy.rb```

Если вы планируете хранить код приложения в открытых источниках, то лучше добавить необходимые токены в credentials, 
при помощи команды

```
EDITOR="nano --wait" bin/rails credentials:edit
```
где 'nano' вызов вашего текстового редактора


Структура файла с credentials:

```
 aws:
   s3_access_key: <token>
   s3_secret_key: <token>
   s3_bucket_name: <token>
   s3_region_name: <token>
 mailjet:
   mailjet_default_from: <token>
   mailjet_password: <token>
   mailjet_smtp_login: <token>
   mailjet_smtp_port: <token>
   mailjet_smtp_server: <token>
 capistrano:
   application: <token>
   repo_url: <token>
 yandex_maps:
   api_key: <token>
 vkontakte:
   app_id: <token>
   app_secret_key: <token>
 facebook:
   app_id: <token>
   app_secret_key: <token>


secret_key_base: <token>

mailjet:
  api_key: <token>
  secret_key: <token>
  gmail_sender: <token>
  mailru_sender: <token>
  yandex_hi_sender: <token>
  yandex_admin_sender: <token>

pg:
  name: <token>
  password: <token>
  db: <token>

aws:
  bucket_region: <token>
  bucket_name: <token>
  access_key_id: <token>
  secret_access_key: <token>

yandex:
  map_api_key: <token>
  
```

3. Запустите приложение:

3.1 Выполните в двух отдельных окнах терминала

```
$ bundle exec bin/webpack-dev-server
```
```
$ bundle exec rails s
```

Так же можете попробовать рабочий сайт по ссылке: [http://barbecue.ru.com](http://barbecue.ru.com)
