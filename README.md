# Домашнее задание к занятию 1 «Disaster recovery и Keepalived»

### Цель задания
В результате выполнения этого задания вы научитесь:
1. Настраивать отслеживание интерфейса для протокола HSRP;
2. Настраивать сервис Keepalived для использования плавающего IP


------


### Задание 1
- Дана [схема](1/hsrp_advanced.pkt) для Cisco Packet Tracer, рассматриваемая в лекции.
- На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)
- Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).
- Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.
- На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.

### Ответ
`Настройка маршрутизатора`
![Настройка маршрутизатора](https://github.com/SeSloup/Disaster-recovery-Keepalived/blob/main/task1/screenshots/Screenshot%20from%202024-05-19%2019-17-30.png)

`Отправка запроса`
![Отправка запроса](https://github.com/SeSloup/Disaster-recovery-Keepalived/blob/main/task1/screenshots/Screenshot%20from%202024-05-19%2019-17-59.png)

[Ссылка на файл 1 с разрывом Switch 0](https://github.com/SeSloup/Disaster-recovery-Keepalived/blob/main/task1/hsrp_advanced_answer_01.pkt)

[Ссылка на файл 2 с разрывом Switch 0](https://github.com/SeSloup/Disaster-recovery-Keepalived/blob/main/task1/hsrp_advanced_answer_02.pkt)



------


### Задание 2
- Запустите две виртуальные машины Linux, установите и настройте сервис Keepalived как в лекции, используя пример конфигурационного [файла](1/keepalived-simple.conf).
- Настройте любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах
- Напишите Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера.
- Настройте Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Используйте для этого секцию vrrp_script
- На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html

### Ответ
[keepalived_checker.sh](https://github.com/SeSloup/Disaster-recovery-Keepalived/blob/main/task2/keepalived_checker.sh)

[keepalived.conf](https://github.com/SeSloup/Disaster-recovery-Keepalived/blob/main/task2/keepalived.conf)

[Скриншоты с демонстрацией работы keepalived](https://github.com/SeSloup/Disaster-recovery-Keepalived/tree/main/task2/screens)

------

