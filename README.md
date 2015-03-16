# sudowin - sudo for windows powershell

## Install

Download the files in this repository into the same directory, and run setup.bat. sudowin.ps1 and sudowin.bat will be copied to c:\windows\system32

## Using

You can open up shells in isolation, ex:

    sudowin # opens powershell as admin
    sudowin powershell
    sudowin cmd
    sudowin bash # assumes bash is in path

Can be used similar to the sudo command in linux, ex:

    sudowin rm c:\windows\system32\foobar.txt
    sudowin subl c:\windows\system32\foobar.txt

Note that the subl and bash commands assume you have them in your path. If you don't, see [here](https://github.com/gkovacs/add_utilities_to_windows_path).

Note that pipes and redirection are not currently supported

## Author

[Geza Kovacs](https://github.com/gkovacs)

## License

MIT