# .\*rc configuration #

## About ##

.rc are becoming  a mess due to  different OS I use.  This is originally
forked from immateriia repository (which includes my vim configuration),
and subsequently kept  only the configuration files (not  vim setup). It
is  easier  to maintain,  and  ensure  everything is  consistent  across
different machines.

## Installation ##

Installation scripts are located  to the [scripts] (scripts) repository.
The easiest way  to install is to run `wget  n.vasilak.is/rc && chmod +x
rc; ./rc`. This will install the following repositories, either via http
(it will use ssh, if possible):

1. scripts, a tiny script library (scriptorium).
1. dotrc, the unix configuration files.
1. vimrc, the vim configuration and plug ins.

It will take care of creating the symbolic links and other minutiae.

Note : Only for this repository, one can use a manual clone and setup.

## TODO list ##

Split all directories
