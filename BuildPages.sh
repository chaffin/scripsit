#!/bin/bash
#
dir='build/docs'
filename='doc_SSP.html'
clean='temp'
cd $dir
echo "<!DOCTYPE html>" > $filename
echo "<html>" >> $filename
echo "<head>" >> $filename
echo "<title>Risk Management Framework &#8212; RMF</title>" >> $filename
echo "<meta charset=utf-8>" >> $filename
echo "<meta name=\"author\" content=\"Larry Chaffin\">" >> $filename
echo "<meta name=\"reviewer\" content=\"none\">" >> $filename
echo "<meta name=\"status\" content=\"draft\">" >> $filename
echo "<meta name=\"date\" content=\"2015-10-18\">" >> $filename
echo "<meta name=\"generator\" content=\"Python-Markdown\">" >> $filename
echo "<link rel=\"metadata\" href=\"md/index.md.txt\" type=\"text/md\">" >> $filename
echo "<link rel=\"stylesheet\" href=\"css/document.css\" type="text/css">" >> $filename
echo "<script src=\"js/jquery-1.11.3.min.js\"></script>" >> $filename
echo "<script src=\"js/scripsit.js\"></script>" >> $filename
echo "<script src=\"json/ssp.json\"></script>" >> $filename
echo "<script src=\"json/cdc.json\"></script>" >> $filename
echo "</head>" >> $filename
echo "<body>" >> $filename
for i in index.html pm.html ra.html pe.html cp.html cm.html ma.html si.html mp.html ir.html at.html ia.html ac.html au.html sc.html doc_index.html doc_ac-2.html;
do tail -n +55 $i >> $filename;done
# clean up some html tags
grep -v "</div> <" $filename > $clean  
grep -v "</article>" $clean > $filename
grep -v "</body>" $filename > $clean  
grep -v "</html>" $clean > $filename
echo "</body>" >> $filename
echo "</html>" >> $filename
rm $clean

