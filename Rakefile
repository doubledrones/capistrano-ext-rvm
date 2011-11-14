begin
  require 'echoe'
rescue LoadError
  abort "You'll need to have `echoe' installed to use capistrano-ext-rvm's Rakefile"
end

require "./lib/capistrano/ext/version"

version = Capistrano::Ext::Rvm::Version::STRING.dup
if ENV['SNAPSHOT'].to_i == 1
  version << "." << Time.now.utc.strftime("%Y%m%d%H%M%S")
end

Echoe.new('capistrano-ext-rvm', version) do |p|
  p.changelog        = "CHANGELOG.rdoc"

  p.author           = "Marcin Nowicki"
  p.email            = "pr0d1r2@gmail.com"
  p.summary          = "Capistrano recipes to support RVM installations"
  p.url              = "https://github.com/doubledrones/capistrano-ext-rvm"

  p.need_zip         = true

  p.dependencies     = ["capistrano >=1.0.0"]
end
