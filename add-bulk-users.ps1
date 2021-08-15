Write-Host "Script to add bulk users to teams"

# Get the team name and the path to the csv file
$TeamName = Read-Host -Prompt 'Input the name of your team'
$CsvPath = Read-Host -Prompt 'Input the path of the csv file which contain user emails'
$Date = Get-Date

Write-Host "Your team name is $TeamName and csv path is $CsvPath"

# Get team id using the name of the team 
$TeamId = (Get-Team -DisplayName $TeamName).GroupId

# Add user emails to the team as members
Write-Host "### Adding users to the Microsoft Team $TeamName with team id $TeamId"
Import-Csv -Path $CsvPath | foreach{Add-TeamUser -GroupId $TeamId -user $_.email}

Write-Host "### Added users to the Microsoft Team"
Write-Host "### Date: $Date"