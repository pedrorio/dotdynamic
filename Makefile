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
	local
	{username}\n\
	{fullname}\n\
	{email}\n\
	{keyid}\n\
	{work}\n\
	{work_username}\n\
	{work_fullname}\n\
	{work_email}\n\
	{work_keyid}\
	" > data

local_config:
	echo "Username: " ;\
	read username ;\
	echo "First and last names: " ;\
	read fullname ;\
	echo "Email address: " ;\
	read email ;\
	sed -i.bak -e "s/{username}/$$username/" `grep '{username}' -rl *` ;\
	sed -i.bak -e "s/{fullname}/$$fullname/" `grep '{fullname}' -rl *` ;\
	sed -i.bak -e "s/{email}/$$email/" `grep '{email}' -rl *` ;\
	find . -type f -name '*.bak' -delete

work_config:
	echo "Work: " ;\
	read work ;\
	echo "Username: " ;\
	read work_username ;\
	echo "First and last names: " ;\
	read work_fullname ;\
	echo "Email address: " ;\
	read work_email ;\
	sed -i.bak -e "s/{work}/$$work/" `grep '{work}' -rl *` ;\
	sed -i.bak -e "s/{work_username}/$$work_username/" `grep '{work_username}' -rl *` ;\
	sed -i.bak -e "s/{fullname}/$$fullname/" `grep '{fullname}' -rl *` ;\
	sed -i.bak -e "s/{email}/$$email/" `grep '{email}' -rl *` ;\
	find . -type f -name '*.bak' -delete

local_key_config:
	echo "Local keyid: " ;\
	read keyid ;\
	sed -i.bak -e "s/{keyid}/$$lkeyid/" `grep '{keyid}' -rl *` ;\
	find . -type f -name '*.bak' -delete

work_key_config:
	echo "Work keyid: " ;\
	read work_keyid ;\
	sed -i.bak -e "s/{work_keyid}/$$work_keyid/" `grep '{work_keyid}' -rl *` ;\
	find . -type f -name '*.bak' -delete