# alif
The Alif Arabic Programming Language - لغة البرمجة العربية ألف
---------
project status | حالة المشروع

[![GitHub issues](https://img.shields.io/github/issues/aliflanguage/alif.svg)](https://github.com/aliflanguage/alif/issues)
[![GitHub forks](https://img.shields.io/github/forks/aliflanguage/alif.svg)](https://github.com/aliflanguage/alif/network)
[![GitHub stars](https://img.shields.io/github/stars/aliflanguage/alif.svg)](https://github.com/aliflanguage/alif/stargazers)


[![Conda](https://img.shields.io/conda/pn/conda-forge/python.svg)](https://github.com/aliflanguage/alif)


---------


Official website : [www.aliflang.org](https://www.aliflang.org)

![alt text](https://www.aliflang.org/images/alif_calc.png)

ماهي لغة ألف ؟
---------

لغة ألف (حرف أ)، هي لغة برمجة عربية عالية المستوى من الجيل الثالث، صممت من طرف حسن دراكة في كندا سنة 2018، و هي لغة برمجة تعليمية الأهداف، حيث توفر للطلبة الناطقين بالعربية أرضية سهلة لتعلم أسس البرمجة باللغة العربية

لماذا لغة برمجة عربية ؟
---------

منذ ظهور أولى لغات البرمجة العربية سنة 1978، توالت محاولات تصميم لغات عربية لاكن كلها توقفت مند سنين، حتى ظهرت لغة ألف سنة 2018، واضحة الفلسفة و الأهداف، فمؤسسها يقول أن الهدف هو تعليمي و ليس منافسة لغات البرمجة العالمية، و فلسفتها البدء من حيث انتهى الآخرون

البدء من حيث انتهى الآخرون
---------

إدا أردنا صناعة لغة برمجة من الصفر، لتوجب علينا صناعة لغة تترجم من لغة عالية المستوى (لغة ألف) إلى لغة منخفضة المستوى (لغة التجميع)، و هذا يتطلب سنين طويلة من العمل و دعم من مؤسسات حكومية و فريق متكامل من خبراء عرب

بما أن المشروع بدأ بمجهود فردي، فظل مؤسس لغة ألف عدم اختراع العجلة و البدء من حيث انتهى الآخرون، حيث صمم لغة ألف لتترجم من لغة عالية المستوى (لغة ألف) إلى لغة عالية المستوى أخرى (سي++) ثم إلى لغة منخفضة المستوى (لغة التجميع)، و استغرق هذا ثلاثة سنوات من العمل

مثال 
------

Hello World in Alif - أهلا بالعالم

```
#ألف 
 
نافدة رئيسية 
 
	دالة رئيسية 
 
	نهاية دالة 
 
نهاية نافدة 
```

كيف يعمل مترجم ألف ؟
-------

مترجم ألف يقوم بترجمة لغة ألف إلى لغة سي++ مع إستعمال مكتبات [وكس ويدجيتز](https://github.com/wxWidgets)

طريقة الأستعمال
-------

```
$ alif [source.alif / source.aliflib] [output binary]  [logfile]
```

ويندوز
---------

```
$ alif foo.alif bar.exe log.txt
```

لينكس
---------

```
$ alif foo.alif bar log.txt
```

ماك أوس
---------

```
$ alif foo.alif bar.app log.txt
```

طريقة ترجمة الشيفرة المصدرية للمشروع
---------

1 - تثبيث [ألف ستوديو](https://www.aliflang.org/download)

2 - تحميل أخر شيفرة مصدرية (Master)

3 - إستعمال سكريبت الترجمة الموجود مع الشيفرة المصدرية (build)

Licence
-------
[![GitHub license](https://img.shields.io/github/license/aliflanguage/alif.svg)](https://github.com/aliflanguage/alif/blob/master/LICENSE)

GNU GPLv3.
