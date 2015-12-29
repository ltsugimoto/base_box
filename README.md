# base_box

## セットアップ
```
# in the base_box directory
$ mkdir work
$ vagrant up
```

## 環境構築
```
# in the new vm

# install needed packages
$ sudo yum install -y git openssl-devel readline-devel zlib-devel
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
$ rbenv 2.3.0
$ rbenv global 2.3.0

# とりあえず
$ gem install bundler
$ gem install rails
```
