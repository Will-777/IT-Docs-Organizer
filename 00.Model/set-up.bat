; For now this script doesn't work xD
; 
REM @echo off
@break on
@title Create Folder Arborescence
@color  

REM set FoldersName=""
REM set RootFolderName=""
set folderID=0

:menu
echo Welcome to folder arborescence builder of IT Documents Organizer
echo more info available here https://github.com/Will-777/IT-Docs-Organizer)
echo You can use this batch file to generate folder or just download the github.
echo Do you want use batch cloning method or GitHub cloning ?  
:choice
set /p choice="[1] for batch [2] for Github :"
if '%choice%'=='1' goto Select-the-char
if '%choice%'=='2' goto githubCreation
echo "%choice%" is not valid, try again
goto choice


:Select-the-char
echo The charactere separator is the character between number and folder name.
echo "exemple : 10-Model << "-" is the separator" 
echo you can use point(.), comma(,) or hyphen(-)...)  
set /p chrSep="Enter the separator character[DEFAULT -]:"


:foldersCreation
for /f "delims=" %%N in (folders.txt) do (
	set /A folderID += 10
	if not exist "%folderID%%%N" (
			mkdir "%folderID%%%N"
		) else (
			echo folder already exists.)
	)
)

echo "Arborescence creation process done."
echo "you can now delete batch & folders.txt file"
goto end


:githubCreation
echo "For github creation, go to: "
echo " https://github.com/Will-777/IT-Docs-Organizer "
echo "and clone the repository. Thank you." 
goto end


:end
pause
exit

