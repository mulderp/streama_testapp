# On branch deploy
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   Gemfile.lock
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	.rbenv-version
#	REVISION
#	config/unicorn.rb
#	log
#	public/assets/
no changes added to commit (use "git add" and/or "git commit -a")
streamaweb@dev:~/development/current$ cp .rbenv-version ..
streamaweb@dev:~/development/current$ cp config/unicorn.rb ..
streamaweb@dev:~/development/current$ cat config/unicorn.rb 
working_directory "/home/streamaweb/development/current"
pid "/home/streamaweb/development/current/tmp/pids/unicorn.pid"
stderr_path "/home/streamaweb/development/current/log/unicorn_stderr.log"
stdout_path "/home/streamaweb/development/current/log/unicorn_stdout.log"

listen "/tmp/unicorn_streamaweb.todo.sock"
worker_processes 2
timeout 30
