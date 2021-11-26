	Write-Output "Installing my programs from winget"
	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Eowii/Windows/main/Programs.json" -OutFile "$env:UserProfile\Programs.json" -ErrorAction SilentlyContinue
	winget import  $env:UserProfile\Programs.json --silent
