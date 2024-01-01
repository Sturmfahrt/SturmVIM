# My Neovim Configuration.
This is my active work for a working neovim configuration. this is currently not being done based on any one particular tutorial series as a result this is noticibaly more custom. though i did borrow from some of the previous work i had done where things worked nicely. this is also serving as an excuse for me to learn the git command line since i am going to be spending a lot of time in a terminal anyway.

## What is this branch.
This branch is what i have made so i dont mess up my main working configuration. i am going to attempt to further modularize the plugins by utilizing the way lazy will automatically handle lua modules in look like `lua/plugins/*.lua`. this will allow me to load and configure plugins in there own lua modules without me having to update the main init file each time to require those lua modules.
