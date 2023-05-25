@Echo off 
CLS
del %1.sal 2> nul
del %1.asm 2> nul
java AnaLex %1
if errorlevel 1 goto Fallo 
echo ANALISIS LEXICOGRAFICO CORRECTO 
java SLR1Proy %1
:Fallo
ECHO Compilacion terminada 
del %1.sal 2> nul