                                                            
                                                            Управляющая конструкция 
                                                            
if команда
then
команды
fi

if команда
then
команды
else
команды
fi

if команда1
then
команды
elif команда2
then
команды
fi

                                                    Сравнение

n1 -eq n2Возвращает истинное значение, если n1 равно n2.
n1 -ge n2 Возвращает истинное значение, если n1больше или равно n2.
n1 -gt n2Возвращает истинное значение, если n1 больше n2.
n1 -le n2Возвращает истинное значение, если n1меньше или равно n2.
n1 -lt n2Возвращает истинное значение, если n1 меньше n2.
n1 -ne n2Возвращает истинное значение, если n1не равно n2.

val1=6
if [ $val1 -gt 5 ]
then
echo "The test value $val1 is greater than 5"
else
echo "The test value $val1 is not greater than 5"
fi

                                Сравнение строк

str1 = str2 Проверяет строки на равенство, возвращает истину, если строки идентичны.
str1 != str2Возвращает истину, если строки не идентичны.
str1 < str2Возвращает истину, если str1меньше, чем str2.
str1 > str2 Возвращает истину, если str1больше, чем str2.
-n str1 Возвращает истину, если длина str1больше нуля.
-z str1Возвращает истину, если длина str1равна нулю.

                                Проверки файлов

-d fileПроверяет, существует ли файл, и является ли он директорией.
-e fileПроверяет, существует ли файл.
-f file Проверяет, существует ли файл, и является ли он файлом.
-r fileПроверяет, существует ли файл, и доступен ли он для чтения.
-s file Проверяет, существует ли файл, и не является ли он пустым.
-w fileПроверяет, существует ли файл, и доступен ли он для записи.
-x fileПроверяет, существует ли файл, и является ли он исполняемым.
file1 -nt file2 Проверяет, новее ли file1, чем file2.
file1 -ot file2Проверяет, старше ли file1, чем file2.
-O file Проверяет, существует ли файл, и является ли его владельцем текущий пользователь.
-G fileПроверяет, существует ли файл, и соответствует ли его идентификатор группы идентификатору группы текущего пользователя.

-----------------------------------------------------------Циклы------------------------------------------------------------

                                                    ------ for------
                                                            
for var in list         for (( начальное значение переменной ; условие окончания цикла; изменение переменной ))
do                      
команды                                               for (( i=1; i <= 10; i++ ))
done                                                  do 
                                                      echo "number is $i"
                                                      done

                                              ------while-------
                                              
while команда проверки условия
do
другие команды
done
                                             -----break------
Прервать цикл до его окончания можно командой 
      break                                 
                                            -----contine------
Когда в теле цикла встречается эта команда, текущая итерация завершается досрочно и начинается следующая, 
при этом выхода из цикла не происходит.
      for (( var1 = 1; var1 < 15; var1++ ))
      do
      if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
      then                                      вывод без 6-9
      continue
      fi
      echo "Iteration number: $var1"
      done


--------------------------------------------------------------------------------------------------------------------------------
                                                        Разделители полей
                                                        
специальная переменная окружения, которая IFS (Internal Field Separator) и позволяет указывать разделители полей. 
По умолчанию оболочка bash считает разделителями полей следующие символы:

Пробел
Знак табуляции
Знак перевода строкину

Если bash встречает в данных любой из этих символов, он считает, что перед ним — следующее самостоятельное значение списка.
Что бы указать свой символ табуляции нужно переменной IFS указать этот символ
      IFS=:

