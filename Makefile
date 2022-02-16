.PHONY: config macos linux_server linux_desktop

config:
	echo config............
	$(MAKE) --directory=config symlink
	$(MAKE) --directory=scripts export_keys
	
macos:
	echo macos............
	$(MAKE) --directory=scripts macos


linux_server:
	echo linux_server............
	$(MAKE) --directory=scripts linux_server

linux_desktop:
	echo linux_desktop............
	$(MAKE) --directory=scripts linux_destop

repos:
	echo repos............
	$(MAKE) --directory=repos all

secrets:
	echo secrets............
	$(MAKE) --directory=secrets import_keys

reset:
	echo "\
	{username}\n\
	{fullname}\n\
	{email}\
	" > data

dotconfig:
	echo "Type in your username: " ;\
	read username ;\
	echo "Type in your first and last names: " ;\
	read fullname ;\
	echo "Type in your email address: " ;\
	read email ;\
	sed -i.bak -e "s/{username}/$$username/" `grep 'username' -rl *`
	sed -i.bak -e "s/{fullname}/$$fullname/" `grep 'fullname' -rl *`
	sed -i.bak -e "s/{email}/$$email/" `grep 'email' -rl *`
	rm -rf **/*.bak