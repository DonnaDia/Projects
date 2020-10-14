:'
bicycle-world-ii
|—— brands.txt
|—— freight/
|   |—— messenger/
|   |—— porteur/
|—— mountain/
|   |—— downhill/
|   |   |—— heavyweight/
|   |   |—— lightweight/
|   |—— hardtail/
|—— racing/
    |—— road/
    |—— track/
'
$ pwd; ls; cd freight/; ls
/home/ccuser/workspace/bicycle-world-ii
brands.txt  freight  mountain  racing
messenger  porteur
$ cd porteur/; pwd
/home/ccuser/workspace/bicycle-world-ii/freight/porteur
$ cd ../../; pwd; ls
/home/ccuser/workspace/bicycle-world-ii
brands.txt  freight  mountain  racing
$ cd mountain/downhill/; ls; touch dirt.txt mud.txt; ls
heavyweight  lightweight
dirt.txt  heavyweight  lightweight  mud.txt
$ pwd
/home/ccuser/workspace/bicycle-world-ii/mountain/downhill
$ mkdir safety; ls
dirt.txt  heavyweight  lightweight  mud.txt  safety
$ cd ../../; ls; pwd
brands.txt  freight  mountain  racing
/home/ccuser/workspace/bicycle-world-ii
$ mkdir bmx
$ touch bmx/tricks.txt; ls; ls -a 
bmx  brands.txt  freight  mountain  racing
.  ..  bmx  brands.txt  freight  mountain  racing
$ ls -l
total 0
drwxr-xr-x 2 ccuser ccuser 24 Oct 14 15:39 bmx
-rw-r--r-- 1 ccuser ccuser  0 Feb 27  2018 brands.txt
drwxr-xr-x 4 ccuser ccuser 38 Mar  5  2016 freight
drwxr-xr-x 4 ccuser ccuser 38 Feb 19  2016 mountain
drwxr-xr-x 4 ccuser ccuser 31 Feb 27  2018 racing
$ ls bmx/
tricks.txt
