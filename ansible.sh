#!/bin/bash

#обновляем пакеты и устанавливаем требуемые программы
apt update
apt install git ansible sshpass -y

#добавляем запись во внутренний DNS
echo "192.168.50.11 nginx" >> /etc/hosts
#копируем с репозитория git конфигурационные файлы ansible
git clone https://github.com/maksaptz/Otus_lesson_11 ~/temp
rm -R /etc/ansible
cp -r ~/temp/ansible /etc/ansible
rm -R ~/temp/ansible
