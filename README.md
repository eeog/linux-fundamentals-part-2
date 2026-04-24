# Linux Fundamentals Part 2 — Foundations for SOC Analysts

## Overview
This project demonstrates intermediate Linux skills essential for SOC analysts, including file management, permissions, user switching, and filesystem structure. These capabilities support real-world tasks such as triage, log analysis, privilege investigations, and understanding attacker behaviour on Linux systems.

---

## Skills Demonstrated
- Secure remote access using SSH  
- Listing files, including hidden files  
- Using help systems (`--help`, `man`)  
- Creating, copying, moving, and deleting files  
- Understanding Linux file types  
- Reading and interpreting file permissions  
- Converting symbolic permissions (rwx) to numeric values  
- Switching users and understanding login shells  
- Navigating key system directories (`/etc`, `/var`, `/root`, `/tmp`)  

---

## Key Command Examples

```
ssh user@ip                 # Secure remote login
ls                          # List directory contents
ls -a                       # Show hidden files
command --help              # Show command options
man command                 # View manual page

touch file.txt              # Create file
mkdir folder                # Create directory
cp source dest              # Copy file or folder
mv source dest              # Move or rename
rm file                     # Remove file
rm -r folder                # Remove directory recursively

file filename               # Identify file type
ls -l filename              # View permissions and ownership

su username                 # Switch user
su -l username              # Full login shell
```

---

## Understanding Permissions

Linux permissions use three groups:

- **Owner**
- **Group**
- **Other**

Each group has three possible permissions:

- **Read (r)** = 4  
- **Write (w)** = 2  
- **Execute (x)** = 1  

To convert symbolic permissions to numeric, add the values:

```
rwx = 4 + 2 + 1 = 7
rw- = 4 + 2 + 0 = 6
r-- = 4 + 0 + 0 = 4
```

Example:

```
rwxrwxrwx = 777
rw-r--r-- = 644
rwxr-x--- = 750
```

---

## Important System Directories

- **/etc** — System configuration files  
- **/var** — Variable data (logs, mail, spool)  
- **/root** — Root user’s home directory  
- **/tmp** — Temporary files, world-writable  

---

## Mini Investigation Scenario

A fictional alert indicated suspicious permission changes on files inside `/var/tmp`.

### Steps Taken

1. **List files including hidden ones**
   ```
   ls -la /var/tmp
   ```

2. **Check file types**
   ```
   file suspicious.sh
   ```

3. **Inspect permissions**
   ```
   ls -l suspicious.sh
   ```

4. **Convert symbolic permissions to numeric**
   - Example: `rwxr-xr--` → `754`

5. **Check whether the file was created by another user**
   ```
   su -l analyst
   ```

6. **Document findings**
   ```
   ls -la /var/tmp > evidence/var-tmp-listing.txt
   ```

### Outcome
The file had overly permissive `777` permissions and was created by a non-root user. This behaviour was flagged as suspicious and escalated for further investigation.

---

## Next Steps
This project builds on Linux Fundamentals Part 1 and prepares for more advanced SOC tasks such as log analysis, process investigation, and privilege escalation detection.

