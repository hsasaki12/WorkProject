# ベースイメージの指定
FROM ruby:3.0

# 必要なパッケージのインストール
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# 作業ディレクトリの設定
WORKDIR /WorkProject

# ホストマシンのGemfileをコンテナ内にコピー
COPY Gemfile* ./

# Gemのインストール
RUN bundle install

# ホストマシンのアプリケーションファイルをコンテナ内にコピー
COPY . .

# マイグレーションの実行
RUN bin/rails db:migrate RAILS_ENV=development

# アプリケーションの実行コマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
