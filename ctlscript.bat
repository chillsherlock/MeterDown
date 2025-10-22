@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Users\Shubham\Desktop\meterdown\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Users\Shubham\Desktop\meterdown\ingres\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\ingres\scripts\ctl.bat START)
if exist C:\Users\Shubham\Desktop\meterdown\mysql\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\mysql\scripts\ctl.bat START)
if exist C:\Users\Shubham\Desktop\meterdown\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\postgresql\scripts\ctl.bat START)
if exist C:\Users\Shubham\Desktop\meterdown\apache\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\apache\scripts\ctl.bat START)
if exist C:\Users\Shubham\Desktop\meterdown\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\openoffice\scripts\ctl.bat START)
if exist C:\Users\Shubham\Desktop\meterdown\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\apache-tomcat\scripts\ctl.bat START)
if exist C:\Users\Shubham\Desktop\meterdown\resin\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\resin\scripts\ctl.bat START)
if exist C:\Users\Shubham\Desktop\meterdown\jetty\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\jetty\scripts\ctl.bat START)
if exist C:\Users\Shubham\Desktop\meterdown\subversion\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Users\Shubham\Desktop\meterdown\lucene\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\lucene\scripts\ctl.bat START)
if exist C:\Users\Shubham\Desktop\meterdown\third_application\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Users\Shubham\Desktop\meterdown\third_application\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\third_application\scripts\ctl.bat STOP)
if exist C:\Users\Shubham\Desktop\meterdown\lucene\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Users\Shubham\Desktop\meterdown\subversion\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\subversion\scripts\ctl.bat STOP)
if exist C:\Users\Shubham\Desktop\meterdown\jetty\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\jetty\scripts\ctl.bat STOP)
if exist C:\Users\Shubham\Desktop\meterdown\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Users\Shubham\Desktop\meterdown\resin\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\resin\scripts\ctl.bat STOP)
if exist C:\Users\Shubham\Desktop\meterdown\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Users\Shubham\Desktop\meterdown\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Users\Shubham\Desktop\meterdown\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\openoffice\scripts\ctl.bat STOP)
if exist C:\Users\Shubham\Desktop\meterdown\apache\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\apache\scripts\ctl.bat STOP)
if exist C:\Users\Shubham\Desktop\meterdown\ingres\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\ingres\scripts\ctl.bat STOP)
if exist C:\Users\Shubham\Desktop\meterdown\mysql\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\mysql\scripts\ctl.bat STOP)
if exist C:\Users\Shubham\Desktop\meterdown\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\Shubham\Desktop\meterdown\postgresql\scripts\ctl.bat STOP)

:end

