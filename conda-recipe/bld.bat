SET CIL_VERSION 2>Nul | Findstr/I "."
IF ERRORLEVEL 1  
(
ECHO CIL_VERSION Not Defined.
exit 1
)
xcopy /e "%RECIPE_DIR%\.." "%SRC_DIR%"
%PYTHON% setup.py install
if errorlevel 1 exit 1
