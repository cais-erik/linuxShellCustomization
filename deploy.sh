#!/usr/bin/bash

echo "committing and pushing changes to git repo"
git commit -am "auto commit"
git push

echo "pushing files out to all servers"
for host in `cat hosts`;
	do echo deploying to $host;
	for file in '.bashrc' '.bash_logout' '.bash_profile';
		do scp $file $host:$file
	done;
done;
