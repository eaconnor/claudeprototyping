# Living off The Land

**Source:** Confluence TI space (Nightscope Threat Research), page 60363345208  
**Author:** Kevin O'Connor  
**Last Modified:** Feb 04, 2022  
**[CS: VERIFIED]** — Direct export from n-able.atlassian.net

---

**Living off the Land (LOL)** is a technique used by both advanced and traditional threats. It's a style of exploitation and post-exploitation operations which relies on the use of binaries, libraries, or other assets already on the target system in order to reduce attacker development costs and assist in avoiding detection from endpoint security products and security software. 

‌

## Common Assets Used

### Windows 

| **Asset** | **Type** | **Usage** | **Details (known actors etc)** |
| --- | --- | --- | --- |
| cmd.exe | Application | Command execution on target | Common |
| powershell.exe | Application | Command execution on target | Common |
| cmdkey.exe | Application | Providers for creation, listing, and modification of users and passwords / credentials | Common  |
| cmdl32.exe | Application | Allows for downloading of arbitrary specified file to disk as trusted | Common |
| rundll32.exe | Application | Runtime DLL loading and execution  | Common |
| at.exe | Application | Scheduler | Common |
| ieexec.exe | Application | Can be used to download and run code |  |
| ntdll.dll | Library / DLL | NT Kernel functions | Common, used by run32dll.exe and lots of system applications |
| msvcrt.dll | Library / DLL | Microsoft C Runtime Library, includes memcpy function |  |
| MpCmdRun.exe | Application | Used by Windows Defender, can be used to download and execute a file | Uncommon |
| ilasm.exe | Application | Can be used to compile C# code to a dll on target. Developer focused targets. | Uncommon |
| mavinject.exe | Application | Inject DLLs into running processes (APP-v specific) | Uncommon |
| windbg.exe | Application | attaching to or running processes and enabling debug capabilities, injection, etc | Common, advanced |
| procdump.exe | Application |  | Common |
| wmic.exe | Application |  | Common |
| regedit.exe |  |  | Common |
| [regsvcs.ee](http://regsvcs.ee) |  |  | Common |
| kernel32.dll |  |  | Common |
| robocopy.exe | Application | Robust copying of files/filetrees to local or remote hosts | Unique |
| shell32.dll |  |  | Common |

### Linux 

| **Asset** | **Type** | **Usage** | **Details (known actors etc)** |
| --- | --- | --- | --- |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |

### MacOS

| **Asset** | **Type** | **Usage** | **Details (known actors etc)** |
| --- | --- | --- | --- |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |

## Resources 

[LOLBAS (Windows binaries)](https://lolbas-project.github.io/)  

[GTFOBins (Linux Binaries)](https://gtfobins.github.io/)
