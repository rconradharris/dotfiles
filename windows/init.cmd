REM dotfiles @ ~/init.cmd
@echo off
 
SET PATH=%PATH%;%~dp0
 
DOSKEY cp=copy $*
DOSKEY ls=dir $*
DOSKEY vi=gvim $*
