@echo off

set scriptFileName=ConfigureRemotingForAnsible
set scriptFolderPath=c:\Users\Admin\Downloads\agents_ms\AnsibleonWindows
set powershellScriptFileName=%scriptFileName%.ps1

powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -Command `\"cd \`\"%scriptFolderPath%\`\"; & \`\".\%powershellScriptFileName%\`\"`\"\" -Verb RunAs"
powershell -Command "Set-ExecutionPolicy AllSigned"
powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
powersheel -Command "choco intsall 7zip -y"
powersheel -Command "choco install git -y"
