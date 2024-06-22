# ProgramRunner

This repository contains a batch script that prompts the user for the name of an executable file, searches for that file on the D: and C: drives, and runs the file as an administrator if found.

## Script Details

The script does the following:

1. Prompts the user to enter the name of a program they want to run.
2. Appends `.exe` to the program name.
3. Searches the D: drive for the `.exe` file.
4. If the file is found on the D: drive, it attempts to run the program and informs the user whether it was successful.
5. If the file is not found on the D: drive, it searches the C: drive for the `.exe` file and attempts to run the program if found.
6. If the program is not found on either drive, it informs the user and prompts for another program name.
7. The script continues this loop until the user types 'exit', at which point it displays an exit message and closes the window after 10 seconds.

## Usage

To use this script, follow these steps:

1. Open Command Prompt.
2. Navigate to the directory where the script is located.
3. Run the script by typing `ProgramRunner.bat`

    *Alternatively, you can run the program directly by right clicking it and running with `CMD.exe`.
## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

MIT
