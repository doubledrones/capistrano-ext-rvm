Capistrano::Configuration.instance.load do

  namespace :rvm do
    namespace :gemset do

      task :create, :roles => :app, :except => { :no_release => true } do
        run "rvm gemset create '#{rvm_gemset}'"
      end

    end
  end

end
