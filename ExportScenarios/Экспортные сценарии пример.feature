﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Проверка создания заказа для организации 

Как тестировщик я хочу
создать заказ 
чтобы проверить что заказ создается без ошибок

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения

@ТипШага: Экспортные сценарии_Заказы
@Описание: Экспортный сценарий который проверяет создание заказа
@ПримерИспользования:И Проверка создания заказа для организации 'ИмяОрганизации'
Сценарий: Проверка создания заказа для организации 'ИмяОрганизации'
	* Открытие формы создания Заказ
		И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	* Заполнение реквизитов
		И из выпадающего списка с именем "Организация" я выбираю точное значение '[ИмяОрганизации]'
		И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
		И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	* Добавление товаров
		И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
		И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование'  |
			| '000000012' | 'Электротовары' |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование' |
			| '000000013' | 'Чайники'      |
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование' |
			| '000000018' | 'Bosch15'      |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
		И в таблице "Товары" я завершаю редактирование строки
	* Запись и Проведение
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		И я запоминаю значение поля с именем 'Номер' как 'НомерЗаказа'
		И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	* Проверка что созданный заказ появился в списке заказов
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
		Если в таблице "Список" нет строки Тогда
			| 'Номер'     |
			| '$НомерЗаказа$' |
			И я вызываю исключение "Заказа номер $НомерЗаказа$ не найден"