REM dotfile @ ~/init.cmd
@echo off
 
SET PATH=%PATH%;%~dp0
 
DOSKEY cdh=cd %USERPROFILE%
DOSKEY cdcode=cd %USERPROFILE%\Documents\code
DOSKEY cat=type $*
DOSKEY cp=copy $*
DOSKEY ls=dir $*
DOSKEY vi=gvim $*
