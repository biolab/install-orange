C:\Python34\Scripts\pip.exe install pygraphviz-1.3rc2-cp34-none-win32.whl
reg add HKCU\Environment /v PATH /d "C:\Program Files (x86)\Graphviz2.38\bin;C:\Program Files\Graphviz2.38\bin;%path%"
pause