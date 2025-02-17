# Bash EXE-Tools

`Bash EXE-Tools` is a collection of Bash scripts designed to help users find and list executable commands on their system. It consists of two scripts: `findexe.sh` and `lsexe.sh`, along with a `Makefile` for installation.

## Scripts

### findexe.sh
`findexe.sh` helps locate executable commands that match a given pattern. It supports multiple search modes and formatting options.

#### Features
- Search for executables using regex or character matching.
- Display results in various formats: one per line, wrapped in a single line, or column view.
- Optionally include duplicate commands.

#### Usage
```sh
findexe --help                  # Display help message
findexe -# 'top$'               # List all executables ending in 'top', one per line
findexe -t --sep ','            # Create a CSV of all executables
findexe s ctl                   # Find commands containing 's' and 'ctl'
```

### lsexe.sh
`lsexe.sh` lists all executable commands, aliases, built-ins, functions, and keywords available on the system.

#### Features
- List aliases, built-ins, commands, functions, and keywords.
- Supports filtering by type (aliases, built-ins, commands, etc.).

#### Usage
```sh
lsexe -A                      # List all available executables
lsexe -a                      # Show only aliases

```

## Requirements/Depencies
- `bash` 
- `compgen` and `grep` 

  
## Installation
Clone the repository, enter the directory, and run `make install` as root or using `sudo`:
in the folder where you keep 3rd party git repo's (or your ~/Downloads ~/  or /tmp ) folder: 
```sh
git clone https://github.com/hoefkensj/bash_exetools.git
cd bash_exetools
```
Run install.run (from your gui) or :
```sh
./install.run
```
Alternatively:
```sh
sudo make install
```
## To Uninstall:
from the  bash_exetools folder issue:
```sh
sudo make uninstall
```


## License
This script is licensed under the MIT License. See the [LICENSE](../LICENSE) file for details.

## Contributing
Pull requests and issues are welcome. If you find a bug or have a feature request, please open an issue on the [GitHub repository](https://github.com/hoefkensj/bash_exetools).

## Author
[Jeroen Hoefkens](https://github.com/hoefkensj)

