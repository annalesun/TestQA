#language: ru

@tree
@IgnoreOnCIMainBuild
Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Переменные: 
ЗаголовокФормыСпискаПоступления = '{!Metadata.Documents.PurchaseInvoice.ListPresentation}'
ЗаголовокПодсистемаЗакупок ='{!Metadata.Subsystems.PurchaseAP.Synonym}'
ПроверяемыеЗначение = '450,00'
ПроверяемыеЗначения = 
		| 'Item'                  | 'Price'  |
		| 'ТоварБезХарактеристик' | '150,00' |
BarcodeSкрасный = "R5C3"
СообщениеШтрихКодНеНайден = '{!R().S_019}'