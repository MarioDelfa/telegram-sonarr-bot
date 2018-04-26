clean:
	stop_server
	rm -fR ~/examples ~/lib ~/locales ~/modules ~/node_modules
	rm -f ~/* 
deploy:
	status
	npm install
	start_server
start_server:
	status
	mkdir ~/lock
	node sonarr.js & echo "$$!" > ~/lock/sonnar.pid
stop_server:
	status
	ifeq (,$(wildcard ~/lock/sonarr.pid)) 
		cat ~/lock/sonarr.pid | xargs kill -9
		rm -fR ~/lock
	endif 
status:
	ifeq (,$(wildcard ~/lock/sonarr.pid)) 
		echo "El proceso esta ya en ejecucion"
		exit
	else
		echo "El proceso no se esta ejecutando"
	endif