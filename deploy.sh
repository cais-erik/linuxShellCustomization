#!/usr/bin/bash

git commit -am "auto commit"
git push

for host in `cat hosts`;
	do echo deploying to $host;
	for file in '.bashrc' '.bash_logout' '.bash_profile';
		do echo scping file $file;
	done;
done;
