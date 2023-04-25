## Rails環境構築用プロジェクトファイル
開発環境：Cloud9 \
RailsVerion：rails 7.0.4 \
Webサーバ：puma 5.6.4 \
DB：sqlite3 1.4.2 \
デザイン：bootstrap-sass 3.4.1
 - app/assets/stylesheets/custom.scss


clone後の設定について
```
$ git clone https://github.com/hsasaki12/hello_app.git
$ cd hello_app/
$ bundle _2.3.14_ config set --local without 'production'
$ bundle _2.3.14_ install
$ bundle _2.3.14_ update
$ git init
$ git add -A
$ git commit -m "Initialize repository"

GitHubリポジトリを新規作成
$ git remote set-url origin <新規作成リポジトリのURL>
$ git push origin main
```