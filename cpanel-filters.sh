#!/bin/bash

if [ -f $1 ]; then
	for i in `cat $1`;do
		owner="$(/scripts/whoowns $i)"
		echo "" > /etc/vfilters/$i
		echo "" > /home/$owner/.cpanel/filter.cache
		echo "---" > /home/$owner/.cpanel/filter.yaml
		echo "filter: []" > /home/$owner/.cpanel/filter.yaml
	done
else
	echo "Please select a file"
fi
