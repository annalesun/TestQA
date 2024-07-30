﻿#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Создание документа поступления товаров

Как Менеджер по закупкам я хочу
создать документ поступления товаров
чтобы поставить товар на учет

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: Создание документа поступления товаров

* Открытие документа создание поступления товаров
	И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров'
	Тогда открылось окно 'Поступления товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Поступление товара (создание)'
* Заполнение шапки
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И из выпадающего списка с именем "Поставщик" я выбираю точное значение 'ЭлектроБыт ЗАО'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице  "Список" я перехожу на один уровень вниз
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Поступление товара (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '1,00'
	И в таблице "Товары" я активизирую поле с именем "ТоварыСумма"
	И в таблице "Товары" в поле с именем 'ТоварыСумма' я ввожу текст '1 500,00'
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я добавляю строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыТовар"
	И в таблице "Товары" я отменяю редактирование строки
* Запоминаем номер
	И я нажимаю на кнопку с именем 'ФормаЗаписать'	
	И Я запоминаю значение поля "Номер" как "$НомерЗаказа$"
* Проверка заполнения табличной части
	Тогда таблица "Товары" стала равной:
		| 'N' | 'Товар'     | 'Артикул' | 'Цена'     | 'Количество' | 'Сумма'    |
		| '1' | 'Босоножки' | 'Bos0009' | '1 500,00' | '1,00'       | '1 500,00' |
	
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Поступление товара (создание) *' в течение 20 секунд
* Проверка создания
	И таблица "Список" содержит строки
	 |"Номер"|
	 |"$НомерЗаказа$"|	


Сценарий: Проверка наличия в справочнике номенклатуры торт
И В командном интерфейсе я выбираю 'Продажи' 'Товары'
Когда открылось окно 'Товары'
И я нажимаю на кнопку с именем 'ФормаСписок'
И таблица "Список" содержит строки
	| 'Наименование' |
	| 'Торт '        |
И я закрываю все окна клиентского приложения
