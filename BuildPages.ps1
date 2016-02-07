##
#  location of the pages
#  build an array of pages and ensure they 
#  are in order you wish them to be compiled
##
$ssp = "ssp"
$dir = "build\docs"
$pages = @("index.html", "pm.html","ra.html","pe.html","cp.html","cm.html","ma.html","si.html","mp.html","ir.html","at.html","ia.html","ac.html","au.html","sc.html","doc_index.html","doc_ac-2.html")
##
#  insert document heading information to include
#  the print.css stylesheet and json file
##
echo "<!DOCTYPE html><html><head><meta charset-utf-8><title>System Security Plan &#8212; ISSM Solutions</title><link rel='stylesheet' href='print.css' type='text/css'><script src='http://code.jquery.com/jquery-1.11.0.min.js'></script><script src="https://raw.githubusercontent.com/chaffin/scripsit/master/$ssp.json"></script><script src='cdc.json'></script>"|Set-Content $dir\pages.html 
##
#  remove extraneous heading (first 24 lines) of each 
#  page and write to a single page file named pages. 
##
ForEach ($page in $pages) { Get-Content $dir\$page | Select -skip 24 | Add-Content $dir\pages.html }