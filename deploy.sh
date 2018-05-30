#!/usr/bin/env bash

while IFS='' read -r line || [[ -n "$line" ]]; do
	dest=`echo $line | awk -F'/' '{print $(NF-1)}'`
	sudo mkdir /vagrant/alc/kiran/stage/$dest 2>/dev/null
	if [[ $dest == $dest ]]; then
		cp -r $line /vagrant/alc/kiran/stage/${dest}
	fi
done < "alc.txt"
