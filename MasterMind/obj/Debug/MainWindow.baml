   M S B A M L   `   `   `  ????E  AMasterMind, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:MasterMind
MasterMind  5   	       MasterMind.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:MasterMind     5   	     ? Title$   ??5   	   $??714.65??6   $??1177.1??6"   .??5	      ? -   5         ?Name$ 	totalGrid??5	      $??0,0,-8,2q?6   ???	#FF66BFBD ? ColumnDefinitions 5
   
   ?? 5      $??1162* ?6   ?? 5      $	??15* ?6   .+?5   
   ? -   5        $ 	gridjuego??5      $
??Left=?6"   $	??648??6=   $??	10,24,0,0q?6J   $	??Top=?6]   $	??708??6u    J? RenderTransformOrigin$ 0.472,0.516&?6?   ???	#FFE0D570.+?5      ?? -   5         ??Name$ btnrojo??5      $?? ??6&   $
??Left=?61   $??
68,576,0,0q?6L   $	??Top=?6`   $??59??6x   $??60??6?   
???  ??6?   ?? 5      -   5        $ btnazul??5      $?? ??6&   $
??Left=?61   $??132,576,0,0q?6L   $	??Top=?6a   $??64??6y   $??60??6?   
????  ?$ 0.619,0.492&?6?   ?? 5      -   5        $ 
btnnaranja??5      $?? ??6)   $
??Left=?64   $??201,576,0,0q?6O   $	??Top=?6d   $??58??6|   $??60??6?   
??? ???$ 2.925,0.542&?6?   ?? 5      -   5        $ btnamarillo??5      $?? ??6*   $
??Left=?65   $??264,576,0,0q?6P   $	??Top=?6e   $??59??6}   $??60??6?   
??? ???6?   ?? 5      -   5        $ btnverde??5      $?? ??6'   $
??Left=?62   $??328,576,0,0q?6M   $	??Top=?6b   $??59??6z   $??60??6?   
??? ? ?6?   ?? 5      -   5        $ btnnegro??5      $?? ??6'   $
??Left=?62   $??392,576,0,0q?6M   $	??Top=?6b   $??59??6z   $??60??6?   
???   ?$ 0.619,0.492&?6?   ?? 5      -	   5        $ btnrosa??5      $?? ??6&   $
??Left=?61   $??456,576,0,0q?6L   $	??Top=?6a   $??58??6y   $??60??6?   
???????$ 2.925,0.542&?6?   ?? 5      -
   5        $ btngris??5      $?? ??6&   $
??Left=?61   $??517,576,0,0q?6L   $	??Top=?6a   $??59??6y   $??60??6?   
???????6?   ?? 5      -   5         ??Name$
 lbl1??5      $?? ??6"   $
??Left=?6-   $??
529,32,0,0q?6H   $	??Top=?6\   ???	#FFFBE2466t   ?? 5      -   5        $ lbl10??5      $?? ??6#   $
??Left=?6.   $??529,515,0,0q?6I   $	??Top=?6^   ???	#FFFBE2466v   ?? 5      -   5        $
 lbl9??5      $?? ??6"   $
??Left=?6-   $??529,456,0,0q?6H   $	??Top=?6]   ???	#FFFBE2466u   ?? 5      -   5        $
 lbl8??5      $?? ??6"   $
??Left=?6-   $??529,408,0,0q?6H   $	??Top=?6]   ???	#FFFBE2466u   ?? 5      -   5        $
 lbl7??5      $?? ??6"   $
??Left=?6-   $??529,352,0,0q?6H   $	??Top=?6]   ???	#FFFBE2466u   ?? 5      -   5        $
 lbl6??5      $?? ??6"   $
??Left=?6-   $??529,296,0,0q?6H   $	??Top=?6]   ???	#FFFBE2466u   ?? 5      -   5        $
 lbl5??5      $?? ??6"   $
??Left=?6-   $??529,243,0,0q?6H   $	??Top=?6]   ???	#FFFBE2466u   ?? 5      -   5        $
 lbl4??5      $?? ??6"   $
??Left=?6-   $??529,190,0,0q?6H   $	??Top=?6]   ???	#FFFBE2466u   ?? 5       -   5        $
 lbl3??5       $?? ??6"   $
??Left=?6-   $??529,147,0,0q?6H   $	??Top=?6]   ???	#FFFBE2466u   ?? 5!      -   5        $
 lbl2??5!      $?? ??6"   $
??Left=?6-   $??
529,84,0,0q?6H   $	??Top=?6\   ???	#FFFBE2466t   ?? 5"      -   5        $ btne1??5"      $?? ??6$   $
??Left=?6/   $??
155,21,0,0q?6J   $	??Top=?6^   $??50??6v   $??48??6?   
??????? ?? 	IsDefault . 6?   ?? 5#      -   5        $ btne2??5#      $?? ??6$   $
??Left=?6/   $??
219,21,0,0q?6J   $	??Top=?6^   $??50??6v   $??48??6?   
???????6?   ?? 5$      -   5        $ btne3??5$      $?? ??6$   $
??Left=?6/   $??
283,21,0,0q?6J   $	??Top=?6^   $??50??6v   $??48??6?   
???????6?   ?? 5%      -   5        $ btne4??5%      $?? ??6$   $
??Left=?6/   $??
347,21,0,0q?6J   $	??Top=?6^   $??50??6v   $??48??6?   
???????6?   ?? 5&      -   5        $ btne5??5&      $?? ??6$   $
??Left=?6/   $??
155,74,0,0q?6J   $	??Top=?6^   $??50??6v   $??48??6?   
???????6?   ?? 5'      -   5        $ btne6??5'      $?? ??6$   $
??Left=?6/   $??
219,74,0,0q?6J   $	??Top=?6^   $??50??6v   $??48??6?   
???????6?   ?? 5(      -   5        $ btne7??5(      $?? ??6$   $
??Left=?6/   $??
283,74,0,0q?6J   $	??Top=?6^   $??50??6v   $??48??6?   
???????6?   ?? 5)      -   5        $ btne8??5)      $?? ??6$   $
??Left=?6/   $??
347,74,0,0q?6J   $	??Top=?6^   $??50??6v   $??48??6?   
???????6?   ?? 5*      -   5        $ btne9??5*      $?? ??6$   $
??Left=?6/   $??155,127,0,0q?6J   $	??Top=?6_   $??50??6w   $??48??6?   
???????6?   ?? 5+      -   5        $ btne10??5+      $?? ??6%   $
??Left=?60   $??219,127,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5,      -   5        $ btne11??5,      $?? ??6%   $
??Left=?60   $??283,127,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5-      -    5        $ btne12??5-      $?? ??6%   $
??Left=?60   $??347,127,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5.      -!   5        $ btne14??5.      $?? ??6%   $
??Left=?60   $??219,183,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5/      -"   5        $ btne13??5/      $?? ??6%   $
??Left=?60   $??155,183,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 50      -#   5        $ btne15??50      $?? ??6%   $
??Left=?60   $??283,183,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 51      -$   5        $ btne16??51      $?? ??6%   $
??Left=?60   $??347,183,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 52      -%   5        $ btne17??52      $?? ??6%   $
??Left=?60   $??155,236,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 53      -&   5        $ btne18??53      $?? ??6%   $
??Left=?60   $??219,236,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 54      -'   5        $ btne19??54      $?? ??6%   $
??Left=?60   $??283,236,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 55      -(   5        $ btne20??55      $?? ??6%   $
??Left=?60   $??347,236,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 56      -)   5        $ btne21??56      $?? ??6%   $
??Left=?60   $??155,289,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 57      -*   5        $ btne22??57      $?? ??6%   $
??Left=?60   $??219,289,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 58      -+   5        $ btne23??58      $?? ??6%   $
??Left=?60   $??283,289,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 59      -,   5        $ btne24??59      $?? ??6%   $
??Left=?60   $??347,289,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5:      --   5        $ btne25??5:      $?? ??6%   $
??Left=?60   $??155,342,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5;      -.   5        $ btne26??5;      $?? ??6%   $
??Left=?60   $??219,342,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5<      -/   5        $ btne27??5<      $?? ??6%   $
??Left=?60   $??283,342,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5=      -0   5        $ btne28??5=      $?? ??6%   $
??Left=?60   $??347,342,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5>      -1   5        $ btne29??5>      $?? ??6%   $
??Left=?60   $??155,395,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5?      -2   5        $ btne30??5?      $?? ??6%   $
??Left=?60   $??219,395,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5@      -3   5        $ btne31??5@      $?? ??6%   $
??Left=?60   $??283,395,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5A      -4   5        $ btne32??5A      $?? ??6%   $
??Left=?60   $??347,395,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5B      -5   5        $ btne33??5B      $?? ??6%   $
??Left=?60   $??155,448,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5C      -6   5        $ btne34??5C      $?? ??6%   $
??Left=?60   $??219,448,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5D      -7   5        $ btne35??5D      $?? ??6%   $
??Left=?60   $??283,448,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5E      -8   5        $ btne36??5E      $?? ??6%   $
??Left=?60   $??347,448,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5F      -9   5        $ btne37??5F      $?? ??6%   $
??Left=?60   $??155,504,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5G      -:   5        $ btne38??5G      $?? ??6%   $
??Left=?60   $??219,504,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5H      -;   5        $ btne39??5H      $?? ??6%   $
??Left=?60   $??283,504,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5I      -<   5        $ btne40??5I      $?? ??6%   $
??Left=?60   $??347,504,0,0q?6K   $	??Top=?6`   $??50??6x   $??48??6?   
???????6?   ?? 5J      -=   5        $ comp1??5J      $??	Comprobar??6$   $
??Left=?68   $??
430,29,0,0q?6S   $	??Top=?6g   $??80??6   $??33??6?   ???	#FF0FD5F1$??15(?6?   6?   ?? 5K      ->   5        $ comp2??5K      $??	Comprobar??6$   $
??Left=?68   $??
430,77,0,0q?6S   $	??Top=?6g   $??80??6   $??33??6?   ???	#FF0FD5F1$??15(?6?   {?.  6?   ?? 5L      -?   5        $ comp3??5L      $??	Comprobar??6$   $
??Left=?68   $??430,140,0,0q?6S   $	??Top=?6h   $??80??6?   $??33??6?   ???	#FF0FD5F1$??15(?6?   {?.  6?   ?? 5M      -@   5        $ comp4??5M      $??	Comprobar??6$   $
??Left=?68   $??430,190,0,0q?6S   $	??Top=?6h   $??80??6?   $??33??6?   ???	#FF0FD5F1$??15(?6?   {?.  6?   ?? 5N      -A   5        $ comp5??5N      $??	Comprobar??6$   $
??Left=?68   $??430,243,0,0q?6S   $	??Top=?6h   $??80??6?   $??33??6?   ???	#FF0FD5F1$??15(?6?   {?.  6?   ?? 5O      -B   5        $ comp6??5O      $??	Comprobar??6$   $
??Left=?68   $??430,296,0,0q?6S   $	??Top=?6h   $??80??6?   $??33??6?   ???	#FF0FD5F1$??15(?6?   {?.  6?   ?? 5P      -C   5        $ comp7??5P      $??	Comprobar??6$   $
??Left=?68   $??430,352,0,0q?6S   $	??Top=?6h   $??80??6?   $??32??6?   ???	#FF0FD5F1$??15(?6?   {?.  6?   ?? 5Q      -D   5        $ comp8??5Q      $??	Comprobar??6$   $
??Left=?68   $??430,401,0,0q?6S   $	??Top=?6h   $??80??6?   $??33??6?   ???	#FF0FD5F1$??15(?6?   {?.  $ 0.462,1.115&?6?   ?? 5R      -E   5        $ comp9??5R      $??	Comprobar??6$   $
??Left=?68   $??430,456,0,0q?6S   $	??Top=?6h   $??80??6?   $??32??6?   ???	#FF0FD5F1$??15(?6?   {?.  $ 0.181,1.013&?6?   ?? 5S      -F   5        $ comp10??5S      $??	Comprobar??6%   $
??Left=?69   $??430,508,0,0q?6T   $	??Top=?6i   $??80??6?   $??33??6?   ???	#FF0FD5F1$??15(?6?   {?.  6?   ?? 5T      -G   5         ??Name$
 img1??5T      $
??Left=?6$   $??26??6?   $??	44,32,0,0q?6K   $	??Top=?6^   $??54??6v   $??Imagenes/flechasin.ico??6?    J? OpacityMask
 ?   ?6?   ?? 5U      -H   5        $
 img2??5U      $
??Left=?6$   $??26??6?   $??	44,84,0,0q?6K   $	??Top=?6^   $??54??6v   $??Imagenes/flechasin.ico??6?   
 ?   ?6?   ?? 5V      -I   5        $
 img3??5V      $
??Left=?6$   $??26??6?   $??
44,133,0,0q?6K   $	??Top=?6_   $??54??6w   $??Imagenes/flechasin.ico??6?   
 ?   ?6?   ?? 5W      -J   5        $
 img4??5W      $
??Left=?6$   $??26??6?   $??
44,190,0,0q?6K   $	??Top=?6_   $??54??6w   $??Imagenes/flechasin.ico??6?   
 ?   ?6?   ?? 5X      -K   5        $
 img5??5X      $
??Left=?6$   $??26??6?   $??
44,243,0,0q?6K   $	??Top=?6_   $??54??6w   $??Imagenes/flechasin.ico??6?   
 ?   ?$ 0.448,3.405&?6?   ?? 5Y      -L   5        $
 img6??5Y      $
??Left=?6$   $??26??6?   $??
44,296,0,0q?6K   $	??Top=?6_   $??54??6w   $??Imagenes/flechasin.ico??6?   
 ?   ?$ 0.448,3.405&?6?   ?? 5Z      -M   5        $
 img7??5Z      $
??Left=?6$   $??26??6?   $??
44,352,0,0q?6K   $	??Top=?6_   $??54??6w   $??Imagenes/flechasin.ico??6?   
 ?   ?$ 0.448,3.405&?6?   ?? 5[      -N   5        $
 img8??5[      $
??Left=?6$   $??26??6?   $??
44,408,0,0q?6K   $	??Top=?6_   $??54??6w   $??Imagenes/flechasin.ico??6?   
 ?   ?$ 0.448,3.405&?6?   ?? 5\      -O   5        $
 img9??5\      $
??Left=?6$   $??26??6?   $??
44,462,0,0q?6K   $	??Top=?6_   $??54??6w   $??Imagenes/flechasin.ico??6?   
 ?   ?$ 0.448,3.405&?6?   ?? 5]      -P   5        $ img10??5]      $
??Left=?6%   $??26??6@   $??
44,515,0,0q?6L   $	??Top=?6`   $??58??6x   $??Imagenes/flechasin.ico??6?   
 ?   ?$ 0.448,3.405&?6?   ?? 5^      $??7??6   $
??Left=?6    $??111,351,0,0q?6;   $	??Top=?6P   $??20(?6h   $??37??6v   $??22??6?   $ 0.818,-0.649&?6?   ?? 5_      $??8??6   $
??Left=?6    $??111,401,0,0q?6;   $	??Top=?6P   $??20(?6h   $??37??6v   $??22??6?   ?? 5`      $??9??6   $
??Left=?6    $??111,455,0,0q?6;   $	??Top=?6P   $??20(?6h   $??37??6v   $??22??6?   $ 0.455,1.135&?6?   5b      ? 5c   
   -Q   5        $ panelColores??5c      $
??Left=?6%   $??99??6@   $??
741,39,0,0q?6L   $	??Top=?6`   $	??389??6x   ???	#FFA1BFB0 ?	#FFB627276?   ?? 5d   
   -R   5        $
 btn1??5d      $?? ??6   $
??Left=?6*   $??
806,62,0,0q?6E   $	??Top=?6Y   $??64??6q   $??60??6|   ???	#FFF3F3F36?   ?? 5e   
   -S   5        $??RENDIRSE??5e      $
??Left=?6$   $??766,169,0,0q?6?   $	??Top=?6T   $	??385??6l   $??66??6x   $??48(?6?   6?   ?? 5f   
   -T   5        $??NUEVA PARTIDA??5f      $
??Left=?6)   $??766,248,0,0q?6D   $	??Top=?6Y   $	??385??6q   $??76??6}   $??48(?6?   6?   ?? 5g   
   -U   5        $ 
puntuacion??5g      $?? ??6$   $
??Left=?6/   $??996,447,0,0q?6J   $	??Top=?6_   $??68??6w   $	??155??6?   $??48(?6?   $
??Bold"?6?   ??6?   Z? ?? 5h   
   $??PUNTUACION:??6   $
??Left=?6&   $??741,447,0,0q?6A   $	??Top=?6V   $??68??6n   $	??255??6z   $??36(?6?   ??6?   Z? ?? 5i   
   $??1??6   $
??Left=?6   $??
126,53,0,0q?67   $	??Top=?6K   $??20(?6c   $??37??6q   $??22??6}   $ 1.091,-0.324&?6?   ?? 5j   
   $??10??6   $
??Left=?6   $??113,534,0,0q?68   $	??Top=?6M   $??20(?6e   $??37??6s   $??32??6   ?? 5k   
   $??6??6   $
??Left=?6   $??126,319,0,0q?67   $	??Top=?6L   $??20(?6d   $??37??6r   $??22??6~   ?? 5l   
   $??5??6   $
??Left=?6   $??126,264,0,0q?67   $	??Top=?6L   $??20(?6d   $ 0.481,0.861&?6r   $??37??6?   $??22??6?   ?? 5m   
   $??4??6   $
??Left=?6   $??126,208,0,0q?67   $	??Top=?6L   $??20(?6d   $??37??6r   $??22??6~   ?? 5n   
   $??3??6   $
??Left=?6   $??123,152,0,0q?67   $	??Top=?6L   $??20(?6d   $??37??6r   $??22??6~   ?? 5o   
   $??2??6   $
??Left=?6   $??126,101,0,0q?67   $	??Top=?6L   $??20(?6d   $??37??6r   $??22??6~   ?? 5p   
   -V   5        $
 btn2??5p      $?? ??6   $
??Left=?6*   $??
875,62,0,0q?6E   $	??Top=?6Y   $??64??6q   $??60??6|   ???	#FFF3F3F36?   ?? 5q   
   -W   5        $
 btn3??5q      $?? ??6   $
??Left=?6*   $??
944,62,0,0q?6E   $	??Top=?6Y   $??64??6q   $??60??6|   ???	#FFF3F3F36?   ?? 5r   
   -X   5        $
 btn4??5r      $?? ??6   $
??Left=?6*   $??1013,62,0,0q?6E   $	??Top=?6Z   $??64??6r   $??60??6}   ???	#FFF3F3F36?   ?? 5s   
   -Y   5        $ btnPartidas??5s      $??Partidas??6&   $
??Left=?69   $??767,342,0,0q?6T   $	??Top=?6i   $	??385??6?   $??76??6?   $??48(?6?   6?   5u      5v      