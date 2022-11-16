# test-table
Тестовое задание для компании "MealHub"
PostgreSql
Есть таблица users, user_carts, orders, order_items

Реализовать связь этих таблиц.

Написать запрос создания всех 4 таблиц со связями.

Написать запрос добавления тестовых данных в эти таблицы.

Написать запрос для вывода одной таблицы, которая содержит эти данные:

user.id , user.name , orders.id , order_items.id, order_items.name, orders.created_at

Написать запрос удаления. Запрос должен удалять пользователя, корзину и все его заказы. DELETE FROM users WHERE id = 1;
