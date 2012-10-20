set :application, "chiliproject"
set :repository,  "https://github.com/acmfox/chiliproject.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "rails_apps/project"
ssh_options[:forward_agent] = true

role :web, "foxcomputersystems.com"                          # Your HTTP server, Apache/etc
role :app, "foxcomputersystems.com"                          # This may be the same as your `Web` server
role :db,  "foxcomputersystems.com", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

set :user,			"foxcompu"
set :password,      '3MFR3YL2yz'
set :scm_username,	"acmfox"
set :scm_password,	"rulergit12"
set :use_sudo, false
set :dbuser,        'foxcompu_chili'
set :dbpass,        'yoi5g2oyCVS2'

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

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