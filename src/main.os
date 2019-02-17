#Использовать cli
#Использовать "."


Процедура ВыполнитьПриложение()

    Приложение = Новый КонсольноеПриложение( "edt-export-bugs", "Экспорт диагностик 1С: EDT для SonarQube 1C (BSL) Community Plugin");
    Приложение.Версия("v version", "0.0.2");

    Приложение.ДобавитьКоманду("c convert", "Конвертировать результат EDT в json для SonarQube 1C (BSL) Community Plugin", Новый edtExport);

    Приложение.УстановитьОсновноеДействие(ЭтотОбъект);
    Приложение.Запустить(АргументыКоманднойСтроки);

КонецПроцедуры // ВыполнениеКоманды()

Попытка

    ВыполнитьПриложение();

Исключение

    Сообщить(ОписаниеОшибки());

КонецПопытки;