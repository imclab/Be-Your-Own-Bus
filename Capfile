load 'deploy' if respond_to?(:namespace) # cap2 differentiator
load 'config/deploy'

namespace :deploy do
  task :start, :roles => :app do

    run "rm -rf /home/#{user}/public_html;ln -s #{current_path}/public /home/#{user}/public_html"
    run "cd #{current_path} && mongrel_rails start -e production -p #{mongrel_port} -d"

    #run "touch #{deploy_to}/current/tmp/restart.txt"
  end
   
  task :restart, :roles => :app do
    run "cd #{current_path} && mongrel_rails restart"
    #run "touch #{deploy_to}/current/tmp/restart.txt"
  end

  after "deploy:symlink" do
    #run "rm -f ~/public_html;ln -s #{deploy_to}/current/public ~/public_html"
    run "cp ~/byob_deploy_files/environment.rb #{deploy_to}/current/config/environment.rb"
  end
end
