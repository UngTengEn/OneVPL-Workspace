# oneVPL vscode Workspace (Windows)
This document describes how to build the binaries.

## Prerequisites

To build this project on Windows you will need:

- Visual Studio Code
- Visual Studio Build Tools 2022
	* Desktop Development with C++
	* C++ CMake tools for Windows
	* C++ ATL latest build tools (x86 and x64)
	* Windows 10 SDK

## Clone and Build
```
git clone https://github.com/UngTengEn/OneVPL-Workspace.git --recursive
```

Open the workspace in the folder with Visual Studio Code.

In Visual Studio Code menu, goto Terminal > Run Task..., run "Build|oneVPL|Release".

The binaries and sample programs will build in _install\Release\bin.