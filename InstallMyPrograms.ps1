	Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Eowii/Windows/main/Programs.json" -OutFile "$env:UserProfile\Programs.json" -ErrorAction SilentlyContinue
	winget import  $env:UserProfile\Programs.json
	rm "$env:UserProfile\Programs.json"
	rm C:\Users\$env:username\Desktop\*.ps1
	rm C:\Users\$env:username\Desktop\*.lnk
	rm C:\Users\Public\Desktop\*.lnk
	shutdown -r -t 0
