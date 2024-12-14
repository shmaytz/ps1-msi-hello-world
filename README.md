# SysInfoModule

## Summary
The **SysInfoModule** is a PowerShell module designed to provide system information utilities. It simplifies retrieving key system details such as OS version, hardware information, and more. This module is ideal for system administrators, DevOps engineers, and anyone who needs quick access to system information in automated scripts or interactive sessions.

### Key Features
- Retrieve system information such as OS version, architecture, and memory.
- Extendable module that supports additional system utility functions.
- Compatible with PowerShell 5.1 and later.

---

## Installation

1. Clone or download the repository containing the SysInfoModule.
2. Place the module folder `SysInfoModule` in one of the directories listed in your PowerShell module path. You can check your module path with:
   ```powershell
   $env:PSModulePath -split ';'
   ```
3. Alternatively, specify the path to the module folder directly when importing.

---

## Usage

### Importing the Module
Before using the module, you need to import it into your PowerShell session:

```powershell
# Specify the full path to the module manifest file
$modulePath = "C:\Path\To\Modules\SysInfoModule"
Import-Module "$modulePath\SysInfoModule.psd1" -Force -Verbose
```

If the module is in a directory listed in `$env:PSModulePath`, you can import it directly by name:

```powershell
Import-Module SysInfoModule -Force -Verbose
```

### Running Functions

#### Example: Retrieve System Information
After importing the module, use the `Get-SystemInfo` function:

```powershell
# Retrieve basic system information
Get-SystemInfo
```

---

## Files and Directory Structure

The module consists of the following files:

```
Modules/
└── SysInfoModule/
    ├── SysInfoModule.psd1  # Module Manifest File
    └── SysInfoModule.psm1  # Module Script File
```

- **SysInfoModule.psd1**: The manifest file containing metadata about the module.
- **SysInfoModule.psm1**: The script file containing the implementation of the module functions.

---

## Example Output
When running the `Get-SystemInfo` function, the output might look like this:

```
OperatingSystem           : Microsoft Windows 10 Pro
OSArchitecture            : 64-bit
ProcessorCount            : 8
TotalPhysicalMemory (GB)  : 16
```

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

