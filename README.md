# rs-candidate
This readme outlines the responses to the rs IT/DevOps candidate assignments.

# Problem 1: Wrong Google Search
There are two solutions to this problem under ./reverseproxy.

* bash/install-rsreverseproxy.sh - A script to install and configure nginx on Ubuntu.

    *   `sudo sh install-reverseproxy.sh`

* docker/ - Dockerfile and configuration payload using nginx:latest. 

    * Run latest from DockerHub:
    `docker run -d -p 80:80 chriswastaken/rs-reverseproxy`

Live demo @ https://reverseproxy.chriswastaken.com 


# Problem 2: Powershell deleter
There are three files under ./powershell. 

* remove-unwantedfiles.ps1 - A flat script which accepts commandline parameters as requested.
* testfile.txt - A placeholder file
* testfilecopy.txt - A copy of the placeholder file.

To execute script, run "remove-uwantedfiles.ps1 $AbsolutePath $StartDateString $EndDateString". 

For Example:
`remove-unwantedfiles.ps1 c:\code\rs-candidate\powershell '05 00 2017 27 05' '08 00 2017 27 05'`