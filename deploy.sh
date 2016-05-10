#!/usr/bin/bash

echo "committing and pushing changes to git repo"
git commit -am "auto commit"
git push

echo "pushing files out to all servers"
for host in `cat hosts`;
	do echo deploying to $host;
	for file in `cat filesToScp`;
		do scp $file $host:$file
	done;
done;
