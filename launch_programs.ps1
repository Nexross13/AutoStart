# Define the path to the json file
$jsonPath = "C:\script\programs.json"
# Read the content of the json file
$jsonContent = Get-Content -Path $jsonPath -Raw | ConvertFrom-Json

# Iterate over each program in the json file
foreach ($program in $jsonContent.programs) {

    # Check if the path exists
    if (-Not (Test-Path $program.path)) {
        $message = "The specified path for $($program.name) (Path = $($program.path)) does not exist. Please check the path in the json file."
        Write-Error $message
        continue
    }

    # Start the program with or without arguments
    if (-Not ($program.argument -eq $null)) {
        Start-Process -FilePath $program.path -ArgumentList $program.argument
    } else {
        Start-Process -FilePath $program.path
    }

    Write-Output "$($program.name) has been started successfully."
}