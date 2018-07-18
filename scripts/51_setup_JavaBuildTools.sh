#!/bin/bash

source "/vagrant/scripts/common.sh"

installMaven () {
	echo "setup maven "
	apt-get install -y maven
}

funcs=(installMaven)

for func in "${funcs[@]}"
do
	$func || fail $func
done

echo "Java build tools setup complete"
