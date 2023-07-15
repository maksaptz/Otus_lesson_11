#  Автоматизация администрирования. Ansible

В работе использовалася vagrant box: "generic/debian10" version "4.2.16"

## Цель домашнего задания:
Подготовить стенд на Vagrant как минимум с одним сервером. На этом
сервере используя Ansible необходимо развернуть nginx со следующими
условиями:
- необходимо исполþзовать модуль apt;
- конфигурационный файл должнен быть взят из шаблона jinja2 с
переменными;
- после установки nginx должен быть в режиме enabled в systemd;
- должен быть использован notify для старта nginx после установки;
- сайт должен слушать на нестандартном порту - 8080, для этого использовать
переменную в Ansible;
* Сделать все это с использованием Ansible роли.

### Ход выполнения домашнего задания
Для выполнения домашнего задания был написан скрипт который выводит данные из каталога /proc/PID.

#### Cкрипт запускать от рута. 
#### Cкрипт содержит комментарии с описанием выполняемых команд!










#ssh-keygen
#ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@nginx
ansible-playbook /etc/ansible/play.yml 
curl http://192.168.50.11:8080
