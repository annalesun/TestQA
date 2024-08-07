﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: локальные переменные

И В командном интерфейсе я выбираю 'Закупки' 'Поступления товаров и услуг'
Тогда открылось окно 'Поступления товаров и услуг'
И в таблице "List" я перехожу к строке:
	| 'Автор' | 'Валюта' | 'Дата'                | 'Контрагент'  | 'Номер' | 'Организация'            | 'Партнер'                    | 'Склад'                         | 'Ссылка'                                               | 'Статус'     | 'Сумма'    |
	| 'CI'    | 'USD'    | '24.02.2021 10:04:33' | 'Поставщик 1' | '1'     | 'Собственная компания 1' | 'Поставщик 1 (1 соглашение)' | 'Склад 1 (с контролем остатка)' | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | 'В процессе' | '8 500,05' |
И в таблице "List" я активизирую поле с именем "Date"
И в таблице "List" я выбираю текущую строку
И я запоминаю текущее окно как "ЗаголовокОкнаПоступлениеТоваров"
И я вывожу значение переменной "ЗаголовокОкнаПоступлениеТоваров"

Когда открылось окно 'Поступление товаров и услуг * от *'
И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
Тогда открылось окно 'Движения документа'
И из выпадающего списка с именем "FilterRegister" я выбираю точное значение 'R1001 Закупки'
И я нажимаю на кнопку с именем 'GenerateReport'
Тогда табличный документ "ResultTable" равен:
	| '$ЗаголовокОкнаПоступлениеТоваров$' | ''                    | ''           | ''         | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                     | ''                                                         | ''                                     | ''                  |
	| 'Движения документа по регистрам'   | ''                    | ''           | ''         | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                     | ''                                                         | ''                                     | ''                  |
	| 'Регистр  "R1001 Закупки"'          | ''                    | ''           | ''         | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                     | ''                                                         | ''                                     | ''                  |
	| ''                                  | 'Period'              | 'Resources'  | ''         | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                     | ''                                                         | ''                                     | 'Attributes'        |
	| ''                                  | ''                    | 'Количество' | 'Сумма'    | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                               | 'Характеристика'                                           | 'Ключ строки'                          | 'Отложенный расчет' |
	| ''                                  | '24.02.2021 10:04:33' | '20'         | ''         | ''                  | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | '<Объект не найден> (76:b762b13668d0905011eb766bf96b2751)' | '16651dd1-4d7d-4d22-bdf4-ee2a2b196cba' | 'Да'                |
	| ''                                  | '24.02.2021 10:04:33' | '20'         | '2 577,04' | '2 147,5'           | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | '<Объект не найден> (76:b762b13668d0905011eb766bf96b2751)' | '16651dd1-4d7d-4d22-bdf4-ee2a2b196cba' | 'Нет'               |
	| ''                                  | '24.02.2021 10:04:33' | '20'         | '3 000,05' | '2 500'             | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | '<Объект не найден> (76:b762b13668d0905011eb766bf96b2751)' | '16651dd1-4d7d-4d22-bdf4-ee2a2b196cba' | 'Нет'               |
	| ''                                  | '24.02.2021 10:04:33' | '20'         | '3 000,05' | '2 500'             | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | '<Объект не найден> (76:b762b13668d0905011eb766bf96b2751)' | '16651dd1-4d7d-4d22-bdf4-ee2a2b196cba' | 'Нет'               |
	| ''                                  | '24.02.2021 10:04:33' | '20'         | '3 000,05' | '2 500'             | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | '<Объект не найден> (76:b762b13668d0905011eb766bf96b2751)' | '16651dd1-4d7d-4d22-bdf4-ee2a2b196cba' | 'Нет'               |
	| ''                                  | '24.02.2021 10:04:33' | '50'         | ''         | ''                  | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | 'S/Красный'                                                | '2ce7a713-e5f5-4b4c-b5b7-0bd4a98dff06' | 'Да'                |
	| ''                                  | '24.02.2021 10:04:33' | '50'         | '4 724,5'  | '3 937,08'          | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | 'S/Красный'                                                | '2ce7a713-e5f5-4b4c-b5b7-0bd4a98dff06' | 'Нет'               |
	| ''                                  | '24.02.2021 10:04:33' | '50'         | '5 500'    | '4 583,33'          | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | 'S/Красный'                                                | '2ce7a713-e5f5-4b4c-b5b7-0bd4a98dff06' | 'Нет'               |
	| ''                                  | '24.02.2021 10:04:33' | '50'         | '5 500'    | '4 583,33'          | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | 'S/Красный'                                                | '2ce7a713-e5f5-4b4c-b5b7-0bd4a98dff06' | 'Нет'               |
	| ''                                  | '24.02.2021 10:04:33' | '50'         | '5 500'    | '4 583,33'          | ''             | 'Собственная компания 1' | 'Подразделение 1'           | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 от 24.02.2021 10:04:33' | 'S/Красный'                                                | '2ce7a713-e5f5-4b4c-b5b7-0bd4a98dff06' | 'Нет'               |


Сценарий: Глобальные переменные
	И я закрываю все окна клиентского приложения
	И я удаляю переменную '$$СсылкаТоварБезХарактеристик$$'
	И я сохраняю навигационную ссылку текущего окна в переменную "$$$$СсылкаТоварБезХарактеристик$$$$"
	И я закрываю текущее окно
	И Я открываю навигационную ссылку "$$СсылкаТоварБезХарактеристик$$"