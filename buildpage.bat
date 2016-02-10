set printfile=build\docs\print.html
set file1=build\docs\index.html
set file2=build\docs\ac.html
set file3=build\docs\at.html
set file4=build\docs\au.html
set file5=build\docs\cm.html
set file6=build\docs\cp.html
set file7=build\docs\ia.html
set file8=build\docs\ir.html
set file9=build\docs\ma.html
set file10=build\docs\mp.html
set file11=build\docs\pe.html
set file12=build\docs\pm.html
set file13=build\docs\ra.html
set file14=build\docs\sc.html
set file15=build\docs\si.html
:
type nul > %PRINTFILE%
echo ^<!DOCTYPE html^> >> %PRINTFILE%
echo ^<html^> >> %PRINTFILE%
echo ^<head^> >> %PRINTFILE%
echo ^<meta charset=utf-8^> >> %PRINTFILE%
echo ^<title^>Printed ^&#8212; ISSM Solutions^</title^> >> %PRINTFILE%
echo ^<link rel="stylesheet" href="print.css" type="text/css"^> >> %PRINTFILE%
echo ^<script src="http://code.jquery.com/jquery-1.11.0.min.js"^>^</script^> >> %PRINTFILE%
echo ^<script src="cdc.json"^>^</script^> >> %PRINTFILE%
for /f "skip=22 delims=`" %%i in (%file1%,%file12%,%file13%,%file11%,%file6%,%file5%,%file9%,%file15%,%file10%,%file8%,%file3%,%file7%,%file2%,%file4%,%file14%) do echo %%i >> %PRINTFILE%