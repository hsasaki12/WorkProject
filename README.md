## プロジェクト
「トラブルバスターズ」は多種多様なクエストを通じて、プレイヤーに収入やスキルアップの機会を提供するシステムです。

## 使用技術
- フロントエンド
 - HTML/CSS
 - Javascript
 - bootstrap-sass 3.4.1
  - app/assets/stylesheets/custom.scss
- バックエンド
 - Ruby
 - Ruby on Rails 7.0.4
- インフラ
 - コンテナ:Docker / Docker-compose
 - DB:sqlite3 
 - WEB:puma 5.6.4

clone後の操作
```
$ git clone https://github.com/hsasaki12/WorkProject.git
$ cd WorkProject/
$ docker-compose build #Dockerfileを元にイメージを作成する
$ docker-compose up -d #裏でコンテナを立ち上げる
$ docker-compose exec app bash #起動中のコンテナに入る

Railsコンテナ内操作
$ bin/rails db:migrate RAILS_ENV=development #マイグレーションコマンドを実行
$ rails db:seed #データ作成
$ exit
```