# MyScriptModule

## Summary
The **MyScriptModule** is a PowerShell module designed to verify successful installation of MyScriptInstaller Application.

### Key Features
- Create a folder according to the user input during installation.
- Create a text file inside the folder with a message according to the user input during installation.
- Compatible with PowerShell 5.1 and later.

---

## Installation

### Interactive Installation
1. Run the `MyScriptInstaller.msi` file.
2. On the `סקריפט PS` Dialog, enter the `DIRECTORYNAME` and `MESSAGE` to create.

### Silent Installation
1. Open CMD (Run as Administrator).
2. Run the following command:
```
# Specify the full path to the msi file
# Enter the DIRECTORYNAME and MESSAGE to create (The parameters must be written in Uppercase letters)
msiexec /i MyScriptInstaller.msi /quiet DIRECTORYNAME="C:\TestDir" MESSAGE="Silent Install"
```
---

## Verify Installation

1. Verify that the folder and the `HelloWorld.txt` file were created.
2. Open the `HelloWorld.txt` file, and verify the message inside the file.
3. Check the execution.log file (C:\Windows\Temp\execution.log).
---

## Files and Directory Structure

The Installation consists of the following files:

```
Modules/
└── MyScriptModule/
|  ├── MyScript.psd1  # Module Manifest File
|  └── MyScript.psm1  # Module Script File
├ HelloWorldInstaller.aip # Application project file
├ MyScript.ps1 # PS Script file
├ MyScriptInstaller.msi # Application installation file
└ README.md # Installing instruction file
```

- **MyScript.psd1**: The manifest file containing metadata about the module.
- **MyScript.psm1**: The script file containing the implementation of the module functions.
- **HelloWorldInstaller.aip**: The project file containing the application settings.
- **MyScript.ps1**: The script file calling the module.
- **MyScriptInstaller.msi**: The installation file for the application.
- **README.md**: The document containing information on how to install and verify successful installation of the application.

---

## Compatibility
- PowerShell 5.1 and later.
- Windows OS (tested on Windows 10 and Windows Server 2019).

---

## Contributing
Feel free to contribute to this module by adding new features or fixing issues. Submit a pull request with a detailed description of the changes.

---

## License
This project is licensed under the MIT License. See the LICENSE file for details.

