#!/bin/bash
echo -n "Enter your directory(~):"
read basedir
for i in $(ls $basedir/raw)
do 
 if [ ! -f $basedir/jpg/${i%.CR2}.jpg ]; then
   echo move  $basedir/raw/$i to trash
   #mv $basedir/raw/$i ~/.Trash
 fi
done
