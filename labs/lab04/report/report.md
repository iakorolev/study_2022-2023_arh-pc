---
## Front matter
title: "Отчёт по лабораторной работе №4.Язык разметки Markdown"
subtitle: "Простейший вариант"
author: "Королёв Иван АНдреевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.


# Задание

Необходимо заполнить и скомпилировать отчет с использованием *Makefile*

# Теоретическое введение

1. **Базовые сведения о Markdown**
Чтобы создать заголовок, используйте знак #, например:
	# This is heading 
	## This is heading 
	### This is heading 
	#### This is heading 
Чтобы задать для текста полужирное начертание, заключите его в двойные звездочки:
This text is **bold**.
Чтобы задать для текста курсивное начертание, заключите его в одинарные звездочки:
This text is *italic*.
Чтобы задать для текста полужирное и курсивное начертание, заключите его в тройные звездочки:
This is text is both **bold and italic***.
Блоки цитирования создаются с помощью символа >:
	> The drought had lasted now for ten million years, and the reign of
	the terrible lizards had long since ended. Here on the Equator,
	in the continent which would one day be known as Africa, the
	battle for existence had reached a new climax of ferocity, and
	the victor was not yet in sight. In this barren and desiccated
	land, only the small or the swift or the fierce could flourish,
	or even hope to survive. 
Упорядоченный список можно отформатировать с помощью соответствующих цифр:
	1.First instruction
	1.Sub-instruction
	1.Sub-instruction
	1.Second instruction
Чтобы вложить один список в другой,добавьте отступ для элементов дочернего списка:
	1.First instruction
	1.Second instruction
	1Third instruction
Неупорядоченный (маркированный) список можно отформатировать с помощью звездочек или тире:
	* List item 1
	* List item 2
	* List item 3
Чтобы вложить один список в другой,добавьте отступ для элементов дочернего списка:
	- List item 1
	- List item A
	- List item B
	- List item 2
Синтаксис Markdown для встроенной ссылки состоит из части , представляющей текст гиперссылки, и части (file-name.md) – URL-адреса или имени файла, на который дается ссылка
Markdown поддерживает как встраивание фрагментов кода в предложение, так и их размещение между предложениями в виде отдельных огражденных блоков. Огражденные блоки кода — это простой способ выделить синтаксис для фрагментов кода. Общий формат огражденных блоков кода:
	``` language
	your code goes in here
	```
2. **Оформление формул в Markdown**
Внутритекстовые формулы делаются аналогично формулам LaTeX.Например, формула sin2(𝑥)+cos2(𝑥)=1 
3. **Оформление изображений в Markdown**
В Markdown вставить изображение в документ можно с помощью непосред- ственного указания адреса изображения. Синтаксис данной команды выглядит следующим образом:
• в квадратных скобках указывается подпись к изображению;
• в круглых скобках указывается URL-адрес или относительный путь изоб- ражения, а также (необязательно) всплывающую подсказку, заключённую в двойные или одиночные кавычки.
• в фигурныхскобкахуказываетсяидентификаторизображения для ссылки на него потексту и размер изображения относительно ширины страницы 

4. **Обработка файлов в формате Markdown**
Преобразовать файл README.md можно следующим образом:
pandoc README.md -o README.pdf
или так
pandoc README.md -o README.docx


# Выполнение лабораторной работы

1. Открываю терминал
2. Перейду в каталог курса сформированный при выполнении лабораторной работы №3([-@fig:1])

 ![Каталог курса](image/1page.jpg){ #fig:1 width=70% }

3. Обновлю локальный репозмторий и перейду в каталог с шаблоном отчета по лабораторной работе № 4([-@fig:2])

 ![Каталог с шаблоном отчета по лабораторной №4](image/2page.jpg){ #fig:2 width=70% }
 
4. Проведу компиляцию шаблона с использованием Makefile. Для этого введу команду make([-@fig:3])

  ![make](image/3page.jpg){ #fig:3 width=70% }
 
	Проверю корректность сгенерированных файлов.([-@fig:4])
 	
  ![report.pdg](image/4page.jpg){ #fig:4 width=70% }
 
 5. Удалю полученные файлы с использованием Makefile.Для этого введу команду make clean([-@fig:5])
 
  ![make clean](image/5page.jpg){ #fig:5 width=70% }
 
 6. Открою файл report.md c помощью любого текстового редактора, например gedit([-@fig:6])
 
  ![gedit](image/6page.jpg){ #fig:6 width=70% }
  
 7. Заполню и скомпилирую отчет с использованием Makefile. Проверю корректность полученных файлов.
 8. Отправлю файлы на Github.( Команды git add ., git commit -am 'feat(main): add files lab-4', git push.)([-@fig:7])
 
  ![Отправка файлов на GitHub](image/7page.jpg){ #fig:7 width=70% }

## Выполнение самостоятельной работы:

 В соответствующем каталоге сделал отчёт по лабораторной работе № 3 в формате Markdown. В качестве отчёта предоставил отчёты в 3 форматах: pdf, docx и md. 
 Загрузил их на GitHub.([-@fig:8])
 
 ![Отчеты в 3 форматх на GitHub](image/8page.jpg){ #fig:8 width=70% }
 
# Выводы

Я освоил процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

