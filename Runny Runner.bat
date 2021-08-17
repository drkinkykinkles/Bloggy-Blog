@ECHO off
TITLE Runny Runner

:: Setup paths
	SET frontend_path=%cd%\bloggy-blog

:: Setup commands
	SET run_frontend=wt -w 0 new-tab cmd.exe /K "cd /d %frontend_path% & npm start"

:: The entrypoint to the console app
	ECHO Runny Runner v1
	GOTO help

:: The main start point of the runner
	:loop
		SET input=
		SET /p input=">"
		IF "%input%"=="help" GOTO help
		IF "%input%"=="-h" GOTO help
		IF "%input%"=="start" GOTO run_start
		IF "%input%"=="s" GOTO run_start

		ECHO Invalid command, try again or type 'help'
		GOTO loop

	:help
		ECHO.
		ECHO Runny Runner is a quick launcher for commands to run Bloggy Blog
		ECHO.
		ECHO Command		^| Description
		ECHO -----------------------------
		ECHO start, s	^| Runs the frontend React app
		ECHO.
		ECHO More commands coming soon!
		GOTO loop

	:run_start
		%run_frontend%
		GOTO loop