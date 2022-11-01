@echo off
echo Installation von VSCode und Python sowie einigen Plugins fuer VSCode (Python, Docstring, CSV).

for %%G in (Microsoft.VisualStudioCode Python.Python.3.11) do (
    winget install %%G
)

@IF EXIST "%LOCALAPPDATA%\Programs\Python\Python311\python.exe" "%LOCALAPPDATA%\Programs\Python\Python311\python.exe" -m pip install --upgrade pip

for %%G in (ms-python.python njpwerner.autodocstring mechatroner.rainbow-csv janisdd.vscode-edit-csv) do (
	@echo Installing %%G
    @"%LOCALAPPDATA%\Programs\Microsoft VS Code\bin\code" --install-extension  %%G > NUL
)
