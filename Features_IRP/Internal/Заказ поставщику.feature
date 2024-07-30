﻿#language: ru

@tree

Функционал: Заказ поставщику

Как Менеджер по закупкам я хочу
зафиксировать заказанный поставщику товар
чтобы проанализировать разницу между тем что было заказано и что было фактчиески доставлен 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: _0401 Подготовительный(заказ поставщику)
		И Экспорт основных данных
		И Экспорт документов закупок
		И Экспорт настроек картинок

Сценарий: Проверка заполнения цены из соглашения
	* Открытие формы создания
		И Я открываю навигационную ссылку "e1cib/list/Document.PurchaseOrder"
		И я нажимаю на кнопку с именем 'FormCreate'
	* Выбор поставщика
		И я нажимаю кнопку выбора у поля с именем "Partner"
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'               |
			| '3'   | 'Поставщик 1 (1 соглашение)' |
		И я нажимаю на кнопку с именем 'FormChoose'
	* 
		И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
		И в таблице "ItemList" я активизирую поле с именем "ItemListItem"
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItem"
		И в таблице "List" я активизирую поле с именем "Description"
		И я нажимаю на кнопку с именем 'FormChoose'
	* Проверка заполнения цены
		Тогда таблица "ItemList" стала равной:
			| 'Вид цены'          | 'Цена'   |
			| 'Цена поставщика 1' | '110,00' |
	* Изменение вида цен и проверка
		И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListPriceType"
		И в таблице "List" я перехожу к строке:
			| 'Валюта' | 'Код' | 'Наименование'      | 'Ссылка'            |
			| 'USD'    | '4'   | 'Цена поставщика 2' | 'Цена поставщика 2' |
		И в таблице "List" я активизирую поле с именем "Description"
		И я нажимаю на кнопку с именем 'FormChoose'
		Тогда таблица "ItemList" стала равной:
			| 'Вид цены'          | 'Цена' |
			| 'Цена поставщика 2' | ''     |
		Когда открылось окно 'Заказ поставщику (создание) *'
		И я нажимаю кнопку выбора у поля с именем "Agreement"
		
				
Сценарий: тест
И Я открываю навигационную ссылку "e1cib/list/Document.PurchaseOrder"
И я нажимаю на кнопку с именем 'FormCreate'
И я нажимаю кнопку выбора у поля с именем "Partner"
И в таблице "List" я активизирую поле с именем "Description"
И я нажимаю на кнопку с именем 'FormChoose'
И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
И я нажимаю сочетание клавиш "Enter"
И в таблице "ItemList" из выпадающего списка с именем "ItemListItem" я выбираю по строке 'товар без характеристик'
И я перехожу к следующему реквизиту
И я нажимаю сочетание клавиш "F9"
И в таблице "ItemList" я перехожу к следующей ячейке
//
//И в таблице "ItemList" я устанавливаю флаг "Отмена"
//проверка на исключение
//И Проверяю шаги на Исключение:
		|'И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListItem"'|
//сортировка
Тогда таблица "ItemList" содержит строки:
	| 'Сумма без налогов' | 'Сумма скидки' | 'N' | 'Причина отмены' | 'Номенклатура партнера' | 'Номенклатура'            | 'Не рассчитывать строки' | 'Характеристика'          | 'Сумма налогов' | 'Количество' | 'Ед. изм.' | 'Заказ покупателя' | 'Общая сумма' | 'Дата выполнения' | 'Основание закупки' | 'Склад'                         | 'Вид цены'          | 'Статья расходов' | 'Центр прибыли/убытков' | 'Цена'   | 'Заявка на обеспечение товара' | 'НДС' | 'Отмена' | 'Комментарий' |
	| '250,00'            | ''             | '2' | ''               | ''                      | 'Товар без характеристик' | 'Нет'                    | 'Товар без характеристик' | '50,00'         | '2,000'      | 'шт'       | ''                 | '300,00'      | ''                | ''                  | 'Склад 1 (с контролем остатка)' | 'Цена поставщика 1' | ''                | ''                      | '150,00' | ''                             | '20%' | 'Нет'    | ''            |
	| '125,00'            | ''             | '1' | ''               | ''                      | 'Товар без характеристик' | 'Нет'                    | 'Товар без характеристик' | '25,00'         | '1,000'      | 'шт'       | ''                 | '150,00'      | ''                | ''                  | 'Склад 1 (с контролем остатка)' | 'Цена поставщика 1' | ''                | ''                      | '150,00' | ''                             | '20%' | 'Нет'    | ''            |
И в таблице "ItemList" количество строк "равно" 2
//сортировка
И в таблице 'ItemList' я активизирую поле 'Количество'
И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListSortListAsc'
Тогда таблица "ItemList" стала равной:
	| 'Сумма без налогов' | 'Сумма скидки' | 'N' | 'Причина отмены' | 'Номенклатура партнера' | 'Номенклатура'            | 'Не рассчитывать строки' | 'Характеристика'          | 'Сумма налогов' | 'Количество' | 'Ед. изм.' | 'Заказ покупателя' | 'Общая сумма' | 'Дата выполнения' | 'Основание закупки' | 'Склад'                         | 'Вид цены'          | 'Статья расходов' | 'Центр прибыли/убытков' | 'Цена'   | 'Заявка на обеспечение товара' | 'НДС' | 'Отмена' | 'Комментарий' |
	| '125,00'            | ''             | '1' | ''               | ''                      | 'Товар без характеристик' | 'Нет'                    | 'Товар без характеристик' | '25,00'         | '1,000'      | 'шт'       | ''                 | '150,00'      | ''                | ''                  | 'Склад 1 (с контролем остатка)' | 'Цена поставщика 1' | ''                | ''                      | '150,00' | ''                             | '20%' | 'Нет'    | ''            |
	| '250,00'            | ''             | '2' | ''               | ''                      | 'Товар без характеристик' | 'Нет'                    | 'Товар без характеристик' | '50,00'         | '2,000'      | 'шт'       | ''                 | '300,00'      | ''                | ''                  | 'Склад 1 (с контролем остатка)' | 'Цена поставщика 1' | ''                | ''                      | '150,00' | ''                             | '20%' | 'Нет'    | ''            |

И в таблице "List" текущего окна я устанавливаю сортировку по колонке "Partner" по возрастанию (расширение)
Тогда таблица "ItemList" стала равной по шаблону:
	| 'Сумма без налогов' | 'Сумма скидки' | 'N' | 'Причина отмены' | 'Номенклатура партнера' | 'Номенклатура'            | 'Не рассчитывать строки' | 'Характеристика'          | 'Сумма налогов' | 'Количество' | 'Ед. изм.' | 'Заказ покупателя' | 'Общая сумма' | 'Дата выполнения' | 'Основание закупки' | 'Склад'                         | 'Вид цены'          | 'Статья расходов' | 'Центр прибыли/убытков' | 'Цена'   | 'Заявка на обеспечение товара' | 'НДС' | 'Отмена' | 'Комментарий' |
	| '125,00'            | ''             | '1' | ''               | ''                      | 'Товар без характеристик' | 'Нет'                    | 'Товар без характеристик' | '25,00'         | '1,000'      | 'шт'       | ''                 | '150,00'      | ''                | ''                  | 'Склад 1 (с контролем остатка)' | 'Цена поставщика 1' | ''                | ''                      | '150,00' | ''                             | '20%' | 'Нет'    | ''            |
	| '125,00'            | ''             | '2' | ''               | ''                      | 'Товар без характеристик' | 'Нет'                    | 'Товар без характеристик' | '25,00'         | '1,000'      | 'шт'       | ''                 | '150,00'      | ''                | ''                  | 'Склад 1 (с контролем остатка)' | 'Цена поставщика 1' | ''                | ''                      | '150,00' | ''                             | '20%' | 'Нет'    | ''            |

Тогда таблица "ItemList" стала равной макету "Макет1"

Сценарий: Проверка полей заказа покупателя
	* Открытие формы создания
		И Я открываю навигационную ссылку "e1cib/list/Document.PurchaseOrder"
		И я нажимаю на кнопку с именем 'FormCreate'
	* Выбор поставщика
		И я нажимаю кнопку выбора у поля с именем "Partner"
		И в таблице "List" я перехожу к строке:
			| 'Код' | 'Наименование'               |
			| '3'   | 'Поставщик 1 (1 соглашение)' |
		И я нажимаю на кнопку с именем 'FormChoose'
	* Проверка заполнения поля Партнер
		Тогда элемент формы с именем "Partner" стал равен 'Поставщик 1 (1 соглашение)'
	* Проверка заполнения поля Соглашение
		Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с поставщиком 1'
	* Проверка блокировки поля Контрагент, если не выбран Партнер
		И в поле с именем 'Partner' я ввожу текст ''
		И я перехожу к следующему реквизиту		
		И Проверяю шаги на Исключение:
			|'И я активизирую поле "LegalName"'|		
	* Закрытие окон
		И я закрываю все окна клиентского приложения
		
			