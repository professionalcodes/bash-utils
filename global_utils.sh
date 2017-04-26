
# bash helper functions for daftware.io ruby stack
alias ssh_rubystack='gcloud compute ssh rubystack-1-vm'
# push to github

function start_ruby_mine {
    bash ~/Desktop/RubyMine-2017.1.1/bin/rubymine.sh
}

function start_android_studio {
	bash ~/Desktop/android-studio/bin/studio.sh
}

function connect_daftware_mysql_instance {
	  mysql -uroot -p -h 104.196.160.106 \
    --ssl-ca=/home/charlie/.daftware_mysql_keys/server-ca.pem \
    --ssl-cert=/home/charlie/.daftware_mysql_keys/client-cert.pem \
    --ssl-key=/home/charlie/.daftware_mysql_keys/client-key.pem
}


