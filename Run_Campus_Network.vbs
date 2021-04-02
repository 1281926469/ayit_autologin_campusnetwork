Current_Path = createobject("Scripting.FileSystemObject").GetFile(Wscript.ScriptFullName).ParentFolder.Path
Current_Run = Current_Path+"\Campus_Network.bat"
'Wscript.echo Current_Run
CreateObject("WScript.Shell").Run Current_Run,0
