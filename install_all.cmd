@echo off
echo Installation von 7Zip, Windows Terminal, VSCode und Python sowie einigen Plugins fuer Python.

for %%G in (7zip.7zip Microsoft.WindowsTerminal Microsoft.VisualStudioCode Python.Python.3) do (
    winget install %%G
)

@IF EXIST "%LOCALAPPDATA%\Programs\Python\Python310\python.exe" "%LOCALAPPDATA%\Programs\Python\Python310\python.exe" -m pip install --upgrade pip

for %%G in (ms-python.python ms-python.vscode-pylance ms-toolsai.jupyter njpwerner.autodocstring mechatroner.rainbow-csv janisdd.vscode-edit-csv) do (
	@echo Installing %%G
    @"%LOCALAPPDATA%\Programs\Microsoft VS Code\bin\code" --install-extension  %%G > NUL
)
