# pg_devops_intern_task
## Solution for Postgres Pro's task for interns
* Решение этого задания в папке src ветки develop. Было принято решение использовать bash + ansible.
* Пароль от ansible vault - `PostgresProForeverAndEver!#()@hehe`. С помощью него зашифрован пароль юзера student в postgres.
* Для удобства тестирования создан Vagrantfile с двумя виртуальными машинами - debian, almalinux. Для обхода блокировок российских ip при загрузке боксов используется tor + proxychians (после загрузки боксов нужно прервать proxychians, иначе vagrant не сможет соединиться с машинами):
![](./images/image_1.png)
* выполнение программы и запуск playbook:
![](./images/image_2.png)
![](./images/image_3.png)
* в конце выполнения playbook отображается вывод запроса SELECT 1 вместе с остальной информацией:
![](./images/image_4.png)
* по условию задачи, postgres на target server принимает соединения. Подключаемся к юзеру postgres. К юзеру student подключиться с хоста не можем, как и задумано:
![](./images/image_5.png)
* подключаеся к student со второй виртуальной машины:
![](./images/image_6.png)
* Вопросы в ходе выполнения - мне было не совсем понятно, что такое server load в вашей интерпретации. Решил использовать то, что чаще всего попадается в гугле - вывод команды uptime с awk. Больше вопросов не было, вроде все понятно, задание хорошо сформулировано.
