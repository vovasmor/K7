﻿
Процедура СоздатьПоУмолчанию() Экспорт
	
	Запрос = Новый Запрос;
	Запрос.Текст = "ВЫБРАТЬ Породы.Ссылка КАК Ссылка ИЗ Справочник.Породы КАК Породы";
	РезультатЗапроса = Запрос.Выполнить();
	
	Если Не РезультатЗапроса.Пустой() Тогда
		Возврат;	
	КонецЕсли;
	
	НовыйЭлемент = Справочники.Породы.СоздатьЭлемент();
	НовыйЭлемент.Наименование = "Бобтейл";
	НовыйЭлемент.Записать();
	
	НовыйЭлемент = Справочники.Породы.СоздатьЭлемент();
	НовыйЭлемент.Наименование = "Британец";
	НовыйЭлемент.Записать();
	
КонецПроцедуры
