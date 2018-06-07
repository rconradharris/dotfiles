REM dotfile @ ~/init.cmd
@echo off
 
SET PATH=%PATH%;%~dp0
 
DOSKEY cat=type $*
DOSKEY cp=copy $*
DOSKEY ls=dir $*
DOSKEY vi=gvim $*
