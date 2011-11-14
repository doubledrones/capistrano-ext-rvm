Capistrano::Configuration.instance.load do

  namespace :rvm do
    namespace :gemset do
      desc "create RVM gemset"
      task :create, :roles => :app, :except => { :no_release => true } do
        run "rvm gemset create '#{rvm_gemset}'"
      end
    end
  end

end
