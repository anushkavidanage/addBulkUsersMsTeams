# addBulkUsersMsTeams Powershell scripts

Prerequisites
=============
You need to have admin privileges to your Windows machine.

Instructions
============
- Open Powershell CLI as Administrator.
- Run install-ms-teams.ps1 script to install and connect to MS Teams. If you have already installed MS Teams via Powershell then comment out the line 'Install-Module -Name MicrosoftTeams' and run the script.
- Create a csv file with all the user emails that need to be added to the MS Teams. A sample csv file is given in the repository. Make sure to follow that formatting.
- Run add-bulk-users.ps1 script to add users to the specific team (input the team name and the path to the csv accordingly).
- Run add-bulk-users-channel.ps1 script to add users to private channels inside a team (input the team name, channel name, and the path to the csv accordingly).
