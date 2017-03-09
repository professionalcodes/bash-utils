function view_internet_profiles {
    ls /etc/NetworkManager/system-connections
}

# Google App Engine Utils For Python
function run_python_app {
	directory=$1
	dev_appserver.py "$directory/app.yaml"
}

# Google App Engine Utils For Ruby
function run_ruby_app {
	app_directory=$1
	port=$2
	bundle exec ruby app.rb -p $port 
}

# Utils that apply to all GAE Apps
function deploy_app {
	gcloud app deploy
}

function browse_app {
	gcloud preview
}

# find out which process is using the /var/lib/dpkg/lock file
function find_apt_lock_process {
	sudo lsof /var/lib/dpkg/lock 
}

function rm_lock_file {
	sudo rm /var/lib/apt/lists/lock
}

function rm_lock_cache {
	sudo rm /var/cache/apt/archives/lock 
}

function rm_lock {
	sudo rm /var/lib/dpkg/lock 
}

# list all windows users, also please be in the correct directory that contains the SAM file
function list_windows_users {
	sudo chntpw -i SAM
}

function generate_keypair {
	ssh-keygen -t rsa 
}

# Git Utils
function show_git_info {
	git_user_email=`git config user.email`
	git_username=`git config user.name`
	echo "${git_user_email}:${git_username}"
}

# when it comes to git terminology, "cached" means a file already added to the repo
function git_rm_cached_file {
	cached_filename=$1
	git rm --cached $cached_filename
}

# Universal rules for git repos if you choose to create it
function create_global_gitignore {
	git config --global core.excludesfile ~/.gitignore_global
}

function git_push {
	git push -u origin master
}

# Don't forget to add the commit message as parameter
function git_commit {
	message=$1
	git commit -m $message
}

# Let's say that you add files to git, then you add rules to the .gitignore to not add those files
# Simply run ' git rm -r --cached ' to remove all files in index, then run git add . to re add all the files except with the .gitignore rules present
function reset_with_gitignore {
	git rm -r --cached
	git add .
}
