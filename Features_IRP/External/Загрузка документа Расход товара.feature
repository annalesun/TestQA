﻿#language: ru
@tree
@IgnoreOnCIMainBuild
@ExportScenarios

Функционал: Загрузка документа Расход товара

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Загрузка документа Расход товара

	// Справочник.ВидыЦен

	И я проверяю или создаю для справочника "ВидыЦен" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |

	// Справочник.Контрагенты

	И я проверяю или создаю для справочника "Контрагенты" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'  | 'Улица'        | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта' | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000012' | 'Мосхлеб ОАО'  | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '456789' | 'Россия' | 'Москва' | 'Петровка'     | '12'  | '+7(999)234-78-64' | 'mh@hleb.ru'       | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'Поставка хлеба'           | 'Громышева П.Р.' | 55.762744 | 37.618102 |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c4235' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000005' | 'Скороход АО'  | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '121456' | 'Россия' | 'Москва' | 'Полярная ул.' | '33'  | '+7(999)234-57-65' | ''                 | '+7(999)234-57-65' | ''        | 'e1cib/data/Справочник.ВидыЦен?refName=Закупочная'                   | ''                         | 'Улиткин Ф.Ф.'   | 55.88895  | 37.64444  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'   | ''                                                                   | ''       | ''       | ''       | ''             | ''    | ''                 | ''                 | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |

	// Справочник.Организации

	И я проверяю или создаю для справочника "Организации" объекты:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование'       | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'False'           | '000000003' | 'ООО "1000 мелочей"' | 'False'        |

	// Справочник.Пользователи

	И я проверяю или создаю для справочника "Пользователи" объекты:
		| 'Ссылка'                                                                  | 'ПометкаУдаления' | 'Код'           | 'Наименование'  | 'ИдентификаторПользователяИБ'          |
		| 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76a026436bc' | 'False'           | 'Администратор' | 'Администратор' | '0f42f230-0f1f-42db-b5f3-f7b2b01f2aec' |

	// Справочник.Регионы

	И я проверяю или создаю для справочника "Регионы" объекты:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |

	// Справочник.Склады

	И я проверяю или создаю для справочника "Склады" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование'        | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | 'False'           | '000000004' | 'Склад отдела продаж' | 'False'          |

	// Справочник.Товары

	И я проверяю или создаю для справочника "Товары" объекты:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель' | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул' | 'Поставщик' | 'ФайлКартинки' | 'Вид' | 'Штрихкод' | 'Описание' | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db8c51bbb079ae' | 'False'           | ''         | 'True'      | '000000001' | 'Обувь'        | ''        | ''          | ''             | ''    | ''         | ''         | ''       |


	// Справочник.ХранимыеФайлы

	И я проверяю или создаю для справочника "ХранимыеФайлы" объекты:
		| 'Ссылка'                                                                   | 'ПометкаУдаления' | 'Владелец'                                                          | 'Код'       | 'Наименование' | 'ДанныеФайла'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | 'ИмяФайла'        | 'Подпись'                               | 'Подписан' | 'Зашифрован' | 'ДляОписания' |
		| 'e1cib/data/Справочник.ХранимыеФайлы?ref=a9d700179a069b1011dc3e85df74aa18' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | '000000001' | 'Ботинки'      | 'ValueStorage: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' | 'Ботинки_new.jpg' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | 'False'    | 'False'      | 'False'       |

	// Документ.Заказ

	И я проверяю или создаю для документа "Заказ" объекты:
		| 'Ссылка'                                                         | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта' | 'ВидЦен'                                                             | 'Организация'                                                            | 'СостояниеЗаказа'              | 'Автор'                                                                   | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=936100090ffe000111ef5baf20516a13' | 'False'           | '000000026' | '16.08.2024 12:22:12' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | ''       | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' | 'Enum.СостоянияЗаказов.Открыт' | 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76a026436bc' | 2100    |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                         | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=936100090ffe000111ef5baf20516a13' | 'e1cib/data/Справочник.Товары?ref=a9b000055d49b45e11db90eb5198ae43' | 2100   | 1            | 2100    |

	// Документ.РасходТовара

	И я проверяю или создаю для документа "РасходТовара" объекты:
		| 'Ссылка'                                                                | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта' | 'ВидЦен'                                                             | 'ОбоснованиеОтгрузки' | 'Организация'                                                            |
		| 'e1cib/data/Документ.РасходТовара?ref=936100090ffe000111ef5baf20516a15' | 'False'           | '000000109' | '16.08.2024 12:23:06' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710076' | 'e1cib/data/Справочник.Склады?ref=8ca1000d8843cd1b11dc8eb49faea67b' | ''       | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                    | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c65' |

	И я перезаполняю для объекта табличную часть "Товары":
		| 'Ссылка'                                                                | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.РасходТовара?ref=936100090ffe000111ef5baf20516a15' | 'e1cib/data/Справочник.Товары?ref=8ca1000d8843cd1b11dc8eacd471d6c7' | 1800   | 1            | 1800    |