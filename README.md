# sudowin - sudo for windows powershell

## Install

Download the files in this repository into the same directory, and run setup.bat. sudowin.ps1 and sudowin.bat will be copied to c:\windows\system32

## Using

Can be used similar to the sudo command in linux, ex:

sudowin rm c:\windows\system32\foobar.txt
sudowin subl c:\windows\system32\foobar.txt

Note that the subl command assumes you have sublime text in your path.

Note that pipes and redirection are not currently supported

