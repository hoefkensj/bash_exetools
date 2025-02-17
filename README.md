# Bash EXE-Tools
![image](https://github.com/user-attachments/assets/6ae79aaa-3df3-4c46-830a-d4d613b1b98d)
## Installation
Clone the repository, enter the directory, and run `make install` as root or using `sudo`:
in the folder where you keep 3rd party git repo's (or your ~/Downloads ~/  or /tmp ) folder: 
```sh
git clone https://github.com/hoefkensj/bash_exetools.git
cd bash_exetools
./install.run      # or #      sudo make install
```
## To Uninstall:
```sh
# from bash_exetools folder
sudo make uninstall
```

## findexe
`findexe.sh` helps locate executable commands that match a given pattern. It supports multiple search modes and formatting options.


### Features
- Search for executables using regex or character matching.
- Display results in various formats: one per line, wrapped in a single line, or column view.
- Optionally include duplicate commands.

### Usage
```sh
findexe --help                  # Display help message
findexe -# 'top$'               # List all executables ending in 'top', one per line
findexe -t --sep ','            # Create a CSV of all executables
findexe s ctl                   # Find commands containing 's' and 'ctl'
```

## lsexe
`lsexe` (a wrapper around compgen that cleans up the output al little and makes it easier to digest )
### Features
- List aliases, built-ins, commands, functions, and keywords.
- Supports filtering by type (aliases, built-ins, commands, etc.).

### Usage
```sh
lsexe -A                      # List all available executables
lsexe -a                      # Show only aliases
```

## Requirements/Depencies
- `bash` 
- `compgen` and `grep` 
![image](https://github.com/user-attachments/assets/0562d82a-a992-496f-9a05-5a6a2e0b8739)
  




## Contributing
Pull requests and issues are welcome. If you find a bug or have a feature request, please open an issue on the [GitHub repository](https://github.com/hoefkensj/bash_exetools).

## Author
[Jeroen Hoefkens](https://github.com/hoefkensj)

