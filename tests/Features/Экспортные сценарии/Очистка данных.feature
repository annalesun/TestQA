﻿#language: ru

@tree
@IgnoreOnCIMainBuild
@ExportScenarios

Функционал: Очистка данных после тестов

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И я закрываю все окна клиентского приложения
	
Сценарий: Очищаю данные
	И В командном интерфейсе я выбираю 'Откат изменений данных' 'История изменения данных (ОИД)'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокОбновить'
	И в таблице "Список" я перехожу к строке:
		| 'Имя метаданных / тип значения' | 'Наименование'        | 'Представление объекта' |
		| 'Закладка'                      | 'Начало тестирования' | 'Начало тестирования'   |
	И в таблице "Список" я активизирую поле с именем "Наименование"
	И в таблице "Список" я нажимаю на кнопку с именем 'ФормаОткатитьИзмененияДоТекущего'
	И я нажимаю на кнопку с именем 'Button0'
	И я закрываю все окна клиентского приложения