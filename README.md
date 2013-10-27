# rails-dev-box

## Introduction

This project automates the setup of a development environment for Ruby on Rails

## Requirements

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant](http://vagrantup.com)

## How To Build The Virtual Machine

```zsh
$ git clone git@github.com:vigosan/rails-dev-box.git
$ cd rails-dev-box
$ vagrant plugin install vagrant-berkshelf
$ vagrant up
$ vagrant provision
$ vagrant ssh
Linux dev 3.2.0-4-amd64 #1 SMP Debian 3.2.46-1 x86_64
...
vagrant@dev:~$
```

## What's In The Box

* Git
* Ruby 2.0.0-p247 via rbenv
* Bundler
* SQLite3, MySQL, and Postgres
* Node.js
* Memcached
* Redis
* PhantomJS
