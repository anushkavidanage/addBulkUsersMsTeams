Write-Host "Script to add bulk users to private teams channels"

# Get the team name, channel name, and the path to the csv file
$TeamName = Read-Host -Prompt 'Input the name of your team'
$ChannelName = Read-Host -Prompt 'Input the name of your teams private channel'
$CsvPath = Read-Host -Prompt 'Input the path of the csv file which contain user emails'
$Date = Get-Date

Write-Host "Your team name is $TeamName, channel is $ChannelName and csv path is $CsvPath"

# Get team id using the name of the team
$TeamId = (Get-Team -DisplayName $TeamName).GroupId

# Add user emails to the team channel as members
Write-Host "### Adding users to the Microsoft Team channel $ChannelName with team id $TeamId"
Import-Csv -Path $CsvPath | foreach{Add-TeamChannelUser -GroupId $TeamId -DisplayName $ChannelName -user $_.email}

Write-Host "### Added users to the Microsoft Teams channel"
Write-Host "### Date: $Date"
