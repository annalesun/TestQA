﻿#language: ru

@tree

Функционал: Проверка прикрепления картинки на форме элемента справочника Товары

Как тестировщик я хочу
проверить прикрепление картинки на форме элемента справочника Товары
чтобы исключить ошибки

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка прикрепления картинки на форме элемента справочника Товары
	* Загрузка данных
		И Создание справочника товары
		И Создание файла для прикрепления
	* Открытие формы справочника
		И В командном интерфейсе я выбираю 'Товарные запасы' 'Товары'
		И в таблице "Список" я перехожу к строке:
			| 'Код'       | 'Наименование'               |
			| '000000101' | 'Тест прикрепления картинки' |
		И в таблице "Список" я выбираю текущую строку
		И я нажимаю кнопку выбора у поля с именем "ФайлКартинки"
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| 'Картинка 1'   |
		И я нажимаю на кнопку с именем 'ФормаВыбрать'
	* Проверка
		И элемент формы с именем 'ФайлКартинки' стал равен 'Картинка 1'
	* Очищение файлов
		И я нажимаю кнопку очистить у поля с именем "ФайлКартинки"
		И я закрываю все окна клиентского приложения