#!/bin/bash
#
dir='build/docs/md'
filename='tmp'
clean='temp'
cd $dir
for i in *.html;do
echo "<!DOCTYPE html>" > $filename
echo "<html>" >> $filename
echo "<head>" >> $filename
echo `grep "<title>" $i` >> $filename
echo `grep "<meta charset=utf-8" $i` >> $filename
echo `grep "<meta name=\"author" $i` >> $filename
echo `grep "<meta name=\"reviewer" $i` >> $filename
echo `grep "<meta name=\"status" $i` >> $filename
echo `grep "<meta name=\"date" $i` >> $filename
echo "<meta name=\"generator\" content=\"Scripsit\">" >> $filename
echo "<link rel=\"stylesheet\" href=\"meta.css\" type=\"text/css\">" >> $filename
echo "<script src=\"../js/ssp.js\"></script>" >> $filename
echo "</head>" >> $filename
echo "<body>" >> $filename
tail -n +32 $i >> $filename;
# clean up some html tags
grep -v "<!--Scripsit-->" $filename > $clean
grep -v "</body>" $clean > $filename
grep -v "</html>" $filename > $clean
cat $clean > $filename
echo "</body>" >> $filename
echo "</html>" >> $filename
rm $clean
md=`ls $i|cut -d \. -f1,2`
mv $filename $md.htm;
done
