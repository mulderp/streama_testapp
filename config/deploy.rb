set :application, "streamaweb"
set :user, "streamaweb"
set :repository, "/home/#{user}/repository/streamaweb.git"
set :local_repository, "."
# set :repository, "."
# set :deploy_via, :copy

set :scm, :git
# set :scm_command, "ssh xxxs@xxxxxx.com -p xxx git "
set :deploy_to, "/home/streamaweb/development"
set :port, "30333"
set :branch, "master"
set :db_file, "mongoid.yml"

role :web, "streamaweb.info"                          # Your HTTP server, Apache/etc
role :app, "streamaweb.info"                          # This may be the same as your `Web` server
role :db,  "streamaweb.info", :primary => true # This is where Rails migrations will run

set :use_sudo, false
set :scm_username, "streamaweb"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
#

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end

namespace :db do
  desc "Make symlink for database yaml" 
  task :symlink do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml" 
  end
end

# after "deploy:rollback:revision", "bundler:install"
# after "deploy:update_code", "bundler:bundle_new_release"
after "deploy:update_code", "db:symlink" 



