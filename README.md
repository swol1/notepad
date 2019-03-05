## О Программе
Программа на языке Ruby с использованием базы данных SQLite.

Программа работает как блокнот. Вы можете создавать с ее помощью три разных вида записи - "заметка", "ссылка", "задача" и смотреть созданные записи.

__Ruby 2.5.*+__

## Установка
Для работы программы понадобится:

[SQLite](https://www.sqlite.org/download.html)

И гем:

```
gem install sqlite3
```

## Как запустить
#### Создать запись
В консоли зайти в папку с программой и ввести:

```
ruby new_post.rb
```

#### Прочитать запись
Посмотреть все записи в базе данных:

```
ruby read.rb
```

Посмотреть все доступные списки команд:

```
ruby read.rb -h
```

Посмотреть все записи определенного типа. вместо `POST_TYPE` введите определенный тип записи(Memo, Link, Task):

```
ruby read.rb --type POST_TYPE
```

Посмотреть подробно только одну запись. вместо `POST_ID` введите нужный ID записи:

```
ruby read.rb --id POST_ID
```

Посмотреть определенное количество последних записей. вместо `NUMBER` введите число, сколько самых последних записей Вы хотите увидеть:

```
ruby read.rb --limit NUMBER
```

## Автор

[Denis Gavrilin](https://github.com/swol1)
