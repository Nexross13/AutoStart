This PowerShell script is designed to automate the launch of multiple programs at system startup using a list defined in a JSON file. Each application window is positioned at a specific location as specified by the user in the JSON file.

### Table of Script Actions
This table summarizes the main actions performed by the PowerShell script to automate the launch and positioning of application windows at system startup.

| Action                      | Description    | Status |
|-----------------------------|----------------|--------|
| Read JSON File              | The script reads the contents of a JSON file that specifies the programs to be launched, along with their paths, arguments, and window positions. | Done |
| Validate File Paths         | The script checks if the specified file paths for the programs exist on the system. If a path does not exist, an error message is generated, and the script moves to the next program. | Done |
| Launch Programs             | The script launches each program using the specified path and optional arguments. | Done |
| Wait for Application Startup| The script pauses for a few seconds to allow the application to start before attempting to position its window. | Not Yet |
| Position Windows            | The script moves and resizes the application windows to the positions and sizes specified in the JSON file. | Not Yet |
| Output Messages             | The script outputs confirmation messages for each program launched and positioned successfully, and error messages for any issues encountered. | Done |

### Instructions for Setting Up Your PowerShell Script to Launch Programs Automatically at Startup

This guide will walk you through the steps to set up and execute a PowerShell script that automatically launches multiple programs based on a list defined in a JSON file, and configure it to run at startup.

#### Prerequisites

1. **PowerShell**: Ensure you have PowerShell installed on your computer. PowerShell is typically included by default on Windows systems.
2. **JSON File**: Create a JSON file that lists the programs you want to launch, including their names, paths, and optional arguments.

---

#### Summary

1. **Create a JSON file**: Define the programs, their paths, and optional arguments.
2. **Create a PowerShell script**: Read the JSON file and launch the programs.
3. **Create a batch file**: Execute the PowerShell script.
4. **Add the batch file to Startup**: Ensure the script runs automatically at startup.


#### Step-by-Step Setup

1. **Create the JSON File**:
   - Create a file named `programs.json` ([go see](./programs.json)) and add it to a convenient directory, such as `C:\script\`.
   - Populate the file with the details of the programs you want to launch. Here is an example structure for the JSON file
   - Replace `YourUsername` with your actual Windows username and adjust the paths as necessary for your specific setup.

2. **Create the PowerShell Script**:
   - Create a new PowerShell script file named `launch_programs.ps1` ([go see](./launch_programs.ps1)) in the same directory as your JSON file (`C:\script\`).
   - Copy and paste the following script into `launch_programs.ps1`

3. **Create a Batch File to Run the PowerShell Script**:
   - Create a new batch file named `launch_programs.bat` ([go see](./launch_programs.bat)) in the same directory (`C:\script\`).
   - Add the following content to the batch file:


4. **Add the Batch File to Startup**:
   - Press `Win + R` to open the Run dialog.
   - Type `shell:startup` and press `Enter`. This will open the Startup folder.
   - Copy the `launch_programs.bat` file into the Startup folder.

By following these steps, your PowerShell script will run automatically at startup, launching the programs specified in your JSON file. This ensures that your required applications are started automatically every time you log into your computer.

