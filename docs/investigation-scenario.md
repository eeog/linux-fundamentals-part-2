# Mini Investigation Scenario

## Scenario Summary
A fictional alert indicated suspicious file creation and permission changes inside `/var/tmp`. The objective was to identify the file, inspect its permissions, and determine whether it posed a security risk.

## Investigation Steps

### 1. List files including hidden ones
```
ls -la /var/tmp
```

### 2. Identify file type
```
file suspicious.sh
```

### 3. Inspect permissions
```
ls -l suspicious.sh
```

### 4. Convert symbolic permissions to numeric
Example:  
`rwxr-xr--` → `754`

### 5. Switch user to validate ownership
```
su -l analyst
```

### 6. Document findings
```
ls -la /var/tmp > evidence/var-tmp-listing.txt
```

## Outcome
The file had `777` permissions and was created by a non-root user. This behaviour was flagged as suspicious and escalated for further review.
