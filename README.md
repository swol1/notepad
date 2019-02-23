## О Программе
Программа на языке Ruby с использованием базы данных SQLite.

Программа работает как блокнот. Вы можете создавать с ее помощью три разных вида записи - "заметка", "ссылка", "задача" и смотреть созданные записи.

## Как запустить
##### Создать запись
В консоли зайти в папку с программой и ввести `ruby new_post.rb`
##### Прочитать запись
В консоли зайти в папку с программой и ввести 

`ruby read.rb` - покажет все записи в базе данных

`ruby read.rb -h` - выведет доступный список команд

`ruby read.rb --type POST_TYPE` - вместо `POST_TYPE` введите определенный тип записи(Memo, Link, Task). Программа покажет все записи этого типа

`ruby read.rb --id POST_ID` - вместо `POST_ID` введите нужный ID записи. Программа покажет подробно только эту запись

`ruby read.rb --limit NUMBER` - вместо `NUMBER` введите число, сколько самых последних записей Вы хотите увидеть 
