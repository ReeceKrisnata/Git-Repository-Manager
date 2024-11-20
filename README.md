# Git Repository Manager
A versatile command-line tool to streamline Git operations, including initialising new repositories, cloning existing ones, and updating local repositories. It features automatic repository URL detection, user-friendly prompts, and robust error handling for seamless Git management.

## Table of Contents  
1. [Purpose](#purpose)  
2. [Requirements](#requirements)  
3. [Features](#features)  
4. [Installation](#installation)  
5. [Usage](#usage)  
6. [Contributing](#contributing)  
7. [Troubleshooting](#troubleshooting)  
8. [Licence](#licence)  
19. [Disclaimer](#disclaimer) 

## Purpose  
This project simplifies common Git tasks for developers by offering:  
- **Initialisation** of new repositories.  
- **Cloning** of existing repositories.  
- **Updating** local repositories with the latest changes.  

## Requirements  
- **Git** installed and added to your system's PATH.  
- **PowerShell** for enhanced feedback and pop-up alerts.  
- A **Windows environment** to run the script.  
- **Administrative permissions** if required for certain operations.  

## Features  
- **Automatic Repository Detection**: Retrieves the repository URL from local Git configurations or prompts users for input.  
- **Action Options**:  
  1. Initialise a repository.  
  2. Clone a repository.  
  3. Update an existing repository.  
- **Robust Error Handling**: Validates input, ensures correct repository setup, and displays PowerShell alerts.  
- **User-Friendly Prompts**: Provides clear, interactive instructions for users. 

## Installation  
1. Download the `git_repo_setup.bat` file to a local directory.  
2. Ensure the required tools are installed and configured (Git, PowerShell).  
3. Open a terminal in the directory containing the script.

## Usage  
1. **Run the Script**: Execute the following command:  
   ```bash  
   git_repo_setup.bat
   ```
3. **Follow Prompts**:
    - Enter the repository URL if not auto-detected.
    - Choose an action (initialise, clone, or update).
4. **Completion**: Check for PowerShell pop-ups indicating success or failure.

## Contributing
1. Fork the repository.
2. Create a new branch: `git checkout -b feature-name`.
3. Make your changes.
4. Push your branch: `git push origin feature-name`.
5. Create a pull request.

## Troubleshooting
**Common Issues**
- **Git Not Installed**: Ensure Git is installed and available in your system's PATH.
- **PowerShell Issues**: Check if PowerShell is properly installed.
- **Permission Errors**: Run the script with elevated privileges if needed.
  
**Adjusting for Custom Branch Names**

The script assumes the default branch is main. If your repository uses a different branch (e.g., master), modify the relevant branch references in the script.

## Licence
This project is proprietary software - see the [Licence](https://github.com/ReeceKrisnata/Git-Repository-Manager/tree/main?tab=License-1-ov-file) file for details.

## Disclaimer
This tool is intended for use at your own risk. The creators/maintainers/contributors assume no responsibility for any consequences arising from its use. Users are advised to comply with the terms of service of relevant platforms and adhere to all applicable laws, regulations, and ethical guidelines. Proceed with caution and at your own discretion.
