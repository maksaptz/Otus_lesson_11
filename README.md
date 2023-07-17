#  Автоматизация администрирования. Ansible

В работе использовалася vagrant box: "generic/debian10" version "4.2.16"

## Цель домашнего задания:
Подготовить стенд на Vagrant как минимум с одним сервером. На этом
сервере используя Ansible необходимо развернуть nginx со следующими
условиями:
- необходимо использовать модуль apt;
- конфигурационный файл должнен быть взят из шаблона jinja2 с
переменными;
- после установки nginx должен быть в режиме enabled в systemd;
- должен быть использован notify для старта nginx после установки;
- сайт должен слушать на нестандартном порту - 8080, для этого использовать
переменную в Ansible;
- делать все это с использованием Ansible роли.

### Ход выполнения домашнего задания
В домашнем задании используется 2 машины:
 1) ansible сервер, отвечает за удаленное развертывание инфраструктуры;
 2) nginx - машина на которой разворачивается web сервер.

Для выполнения домашнего задания были созданы роли nginx, которая на удаленном хосте устанавливает nginx и обновляет конфигурации, и роль ssh, которая устанвливает ssh-ключ на удаленном хосте.

В папке ansible выстроена структура для развертывания web-сервера.

#### Cкрипт ansible.sh содержит комментарии с описанием выполняемых команд!
#### Проверка домашнего задания
Для проверки домашнего задания требуется поднять Vagrantfile, зайти по ssh  в машину ansible (пароль: vagrant) и выполнить следующие команды:

- генерация ssh ключа:
```ssh-keygen```
- установка публичного ключа на удаленную машину:
```ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@nginx```
- запуск ansible сценария:
```ansible-playbook /etc/ansible/play.yml```
- проверка ответа web-сервера:
```curl http://192.168.50.11:8080```
