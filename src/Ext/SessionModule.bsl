﻿
Процедура УстановкаПараметровСеанса(ТребуемыеПараметры)
	УстановитьПривилегированныйРежим(Истина);
	Если ТребуемыеПараметры = Неопределено Тогда
		
		УникальныйИдентификатор = Строка(ПользователиИнформационнойБазы.ТекущийПользователь().УникальныйИдентификатор);
		Пользователь = Справочники.Пользователи.НайтиПоРеквизиту("УникальныйИдентификатор", УникальныйИдентификатор);    
		ПараметрыСеанса.ТекущийПользователь = Пользователь;
		
	КонецЕсли;
	УстановитьПривилегированныйРежим(Ложь);
КонецПроцедуры
