set :application, "wra"
set :repo_url, "git@github.com:dirtydev404/wra.git"

set :deploy_to, '/home/deploy/wra'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"


namespace :deploy do 
    
    after :restart, :clear_cache do 
        on roles(:web), in: :groups, limit: 3, wait: 10 do 
 
        end
    end
     