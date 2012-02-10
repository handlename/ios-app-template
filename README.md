# iOS App Template #

## Overview ##

Generate base project for iOS Application.

## How to use ##

    $ cp -r __template /path/to/project
    $ cd /path/to/project
    $ /path/to/clone/init.sh ProjectName com.example

## File Tree ##

    ├── Info.plist
    ├── InfoPlist.strings
    ├── ProjectName.xcodeproj
    │     └── project.pbxproj
    ├── lib
    ├── resource
    │     ├── image
    │     └── view
    │            └── MainWindowView.xib
    └── src
           ├── AppDelegate.h
           ├── AppDelegate.m
           ├── common.h
           ├── controller
           ├── main.m
           └── model
