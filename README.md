# Git Repository Manager

# Overview
The git_repo_setup.bat script is a command-line utility designed to simplify common Git repository management tasks. It offers a user-friendly interface to:
1. **Initialise a new Git repository**
2. **Clone a Git repository**
3. **Update an existing Git repository**

The script includes error handling, user prompts, and PowerShell-based alerts for clear and effective interaction.

# Prerequisites
**Required Tools**
- **Git**: Ensure Git is installed and added to the system's PATH.
- **PowerShell**: Required for pop-up alerts and enhanced feedback.
- **Windows Environment**: This script is built for use on Windows systems.

**Recommended Setup**
- Run the script from a terminal with appropriate permissions.
- Place the script in a directory where you have access to Git repositories.

# Features
**Automatic Repository Detection**
- Attempts to detect the Git repository URL from the local configuration.
- Prompts for manual input if the URL is not found.
  
**Action Options**

The script offers three core functions:
1. **Initialise a Repository**: Sets up a new Git repository and links it to a remote origin.
2. **Clone a Repository**: Clones a repository from a given URL.
3. **Update a Repository**: Pulls the latest changes into an existing Git repository.
   
**Error Handling**
- Validates user input for action selection.
- Checks if the current directory is a valid Git repository before updating.
- Displays helpful PowerShell alerts for success or failure.
  
**User-Friendly Prompts**
- Guides users through each step with clear instructions.
- Allows retrying operations if an error occurs.
  
# Usage Instructions
1. **Download the Script**: Save the file git_repo_setup.bat to a local directory.
2. **Run the Script**: Open a command prompt or terminal and execute the script:
- git_repo_setup.bat
3. **Follow Prompts**:
- Enter the repository URL if not auto-detected.
- Choose an action (initialise, clone, or update).
4. **Completion**: Check for PowerShell pop-ups indicating success or failure.

# Script Workflow
1. **Detect Git Repository URL**:
  - Fetches the URL from git config --get remote.origin.url.
  - If not found, prompts the user to manually enter the URL.

2. **Prompt for Action**:
  - Provides three options: initialise, clone, or update.

3. **Perform the Selected Action**:
  - **Initialise**: Sets up a new repository and links it to the remote.
  - **Clone**: Clones the repository to the current directory.
  - **Update**: Pulls the latest changes from the remote.

4. **Error Handling**:
  - Ensures valid input for user prompts.
  - Displays PowerShell-based error or success messages.
  - Offers retry options for failures.

5. **Completion**:
  - Provides clear feedback on the success or failure of the operation.

# Example Scenarios
**Initialise a Repository**:
1. Run the script.
2. Enter the repository URL when prompted.
3. Choose **Option 1** to initialise.
4. Verify that a new Git repository has been set up.
   
**Clone a Repository**:
1. Run the script.
2. Enter the repository URL.
3. Choose **Option 2** to clone the repository.
   
**Update a Repository**:
1. Run the script inside a Git repository directory.
2. Choose **Option 3** to pull the latest changes.
3. Check for updates in the repository.

# Troubleshooting
**Common Issues**
- **Git Not Installed**: Ensure Git is installed and available in your system's PATH.
- **PowerShell Issues**: Check if PowerShell is properly installed.
- **Permission Errors**: Run the script with elevated privileges if needed.
  
**Adjusting for Custom Branch Names**

The script assumes the default branch is main. If your repository uses a different branch (e.g., master), modify the relevant branch references in the script.

# Notes
- The script is intended for use in Windows environments.
- It uses PowerShell commands for advanced notifications; these may not work if PowerShell is unavailable.
- Ensure the remote repository URL is correct to avoid connection errors.

# Licence
This project is proprietary software - see the [Licence]([https://github.com/your-username/Win-KeX-Launcher](https://github.com/ReeceKrisnata/Git-Repository-Manager/tree/main?tab=License-1-ov-file)) file for details.

# Disclaimer
This tool is intended for use at your own risk. The creators/maintainers/contributors assume no responsibility for any consequences arising from its use. Users are advised to comply with the terms of service of relevant platforms and adhere to all applicable laws, regulations, and ethical guidelines. Proceed with caution and at your own discretion.
