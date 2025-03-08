# AWS TF code repo
Just watch the vide to do integration with VS code...

https://www.youtube.com/watch?v=i_23KUAEtUM

To install git for Mac
$ brew install git

==Common commands for cli
1. git init -- to initialize a local folder. Creates a .git repository
create a file in vs code readme.md and add any text
2. git status -- it will show no commits yet
3. git add <Filename> -- to add the file
4. git commit -m "First commit" -- this will only commit locally. 
5. git push origin main -- all the staged commits will be pushed to the repository no Github
6. git rm --cached <File/Folder name> -- this will remove the file from tracked changes after the git add . command

-- icons
U - Untracked
A - Staged files. After running git add, untracked files are Added to stage
M - Modified
D - Deleted
Comment needed while commiting. only commits to local repo
Publish changes actually pushes everything to Github

== New branch V1 - This is the best practice to make changes to a branch and submit a pull request to be merged with the main branch
This change is only on the new branch
Changes can be approved and accepted directly on GitHuB (Approvals can be done with Team based license) / can be done by owner for single user.

Cloning my repository from GitHub
git clone https://github.com/sandy4v/AWS.git
pushing changes back to the hub
git push --set-upstream https://github.com/sandy4v/AWS.git main   -- after this command only use git push after committing the changes
git push


EC2 Linux Logs
==
Linux EC2 bootstrap - sudo cat /var/log/cloud-init-output.log
sudo systemctl status httpd 
userdata logs - /var/log/cloud-init.log and
                /var/log/cloud-init-output.log
