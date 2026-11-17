This file contain about basic command in WSL, SSH Key, Git
1st: Search "PowerShell" and run as administrator, then 1."wsl --install", 2.set username and password, 3."wsl -l -v"

 you should see 'VERSION 2'

2nd: Search "Ubuntu", 1.update system and check git version "sudo apt update && sudo apt upgrade -y" and "git --version", 2. "git config --global user.name "yourusername" and then "git config --global user.email "yourGithubemail" and "git config --global init.defaultBranch main" and "git config --global --list", 3.create SSH key "ssh-keygen -t ed25519 -C "yoursameemail", 4."cat ~/.ssh/id_ed25519.pub" you have to copy the answer and put it in "GitHub → Settings → SSH and GPG keys → New SSH key", 5."ssh -T git@github.com" to connect it then type "yes"
