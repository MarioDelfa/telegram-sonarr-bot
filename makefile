PATH_PID = /opt/sonarrbot/lock/sonarr.pid
#SHELL = /bin/bash
.PHONY: clean
clean:
	stop_server
	rm -fR ~/examples ~/lib ~/locales ~/modules ~/node_modules
	rm -f ~/*
.PHONY: deploy
deploy:
	status
	npm install
	start_server
.PHONY: start_server
start_server:
	status
	mkdir ~/lock
	node sonarr.js & echo "$$!" > ~/lock/sonnar.pid
.PHONY: stop_server
stop_server:
	status
	ifneq(,$(wildcard ~/lock/sonarr.pid))
	cat ~/lock/sonarr.pid | xargs kill -9
	rm -fR ~/lock
	endif
.PHONY: status
status:
	$(status)

define  status =
	if [ -f /opt/sonarrbot/lock/sonarr.pid ]; 
	then
		echo "patata"; 
	else
		echo "arenque";
	fi
endef
