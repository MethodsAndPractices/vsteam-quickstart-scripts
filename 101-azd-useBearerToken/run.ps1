# you can copy and paste this code into your Azure Pipeline build
# make sure and enable OAuth token access for the Classic Editor
Install-Module VSTeam -Scope CurrentUser -Force
Set-VSTeamAccount -Account $(System.CollectionUri) -Token $(System.AccessToken) -UseBearerToken
Get-VSTeamInfo
Get-VSTeamProject