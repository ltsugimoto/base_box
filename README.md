# 新春ハンズオンruby de ショウ

## 1) セットアップ
```
# in the base_box directory
$ mkdir work
$ vagrant up
```

## 2) 環境構築
```
# in the new vm

# install needed packages
$ sudo yum install -y git openssl-devel readline-devel zlib-devel mysql mysql-devel mysql-server

# install node.js
$ sudo su
$ curl --silent --location https://rpm.nodesource.com/setup | bash -
$ yum install -y nodejs
$ exit

# install nginx
$ sudo sh -c "cat <<\CONF > /etc/yum.repos.d/nginx.repo
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=0
enabled=1
CONF"
$ sudo yum install -y nginx
$ sudo sh -c "cat <<CONF > /etc/nginx/conf.d/default.conf
upstream rails {
    server localhost:3000;
}

server {
    listen       80;

    location / {
      proxy_pass http://rails;
    }
}
CONF"

# もろもろ立ち上げる
$ sudo chkconfig mysqld on
$ sudo service mysqld start
$ sudo service nginx start

# install rbenv
$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# ignore if fail
$ cd ~/.rbenv && src/configure && make -C src

# setup rc files
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

# install ruby-build
$ git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# install ruby - takes a bit of time
$ rbenv install 2.3.0
$ rbenv global 2.3.0

# とりあえず
$ gem install bundler
$ gem install rails
```

## 3) railsのレポジトリをとりあえず作る
```
# まずはrailsのアプリ作るところから
$ cd work
$ rails new exprails -d mysql -B

# さっそくgit管理します
$ cd exprails
$ git init
$ git add .
$ git commit -am "This is it"
```

## 4) 実際に動かしましょう
```
# 今回はbundle installにパスを指定します
# 注：良く使うのは --path vendor/bundleですが、今回はVMなので、別dirで。
# mountしているdirに入れるとこれでもかってくらいパフォーマンスが低下します。
$ mkdir -p ~/.gem_bowl/exprails
$ bundle install --path ~/.gem_bowl/exprails

# とりいそぎDBだけ作成
$ bin/rake db:create
```

## 5) アクセスしてみよう
ブラウザで以下にアクセスしてみる
```
http://192.168.33.20
```
これで動いてなかったら(´・ω・｀)ｼｮﾎﾞｰﾝ

同じvmで同じ手順なのにおかしいね

