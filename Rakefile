require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  Dir['*.symlink'].each do |linkable|
    file = linkable.split('.symlink').first
    system %Q{rm -rf "$HOME/.#{file}"}
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{linkable}" "$HOME/.#{file}"}
  end
end

namespace :dota do

  task :link_config do
    system %Q{rm -rf "$DOTA_PATH/autoexec.cfg"}
    puts "linking dotfiles/dota.cfg to path/to/dota/autoexec.cfg"
    system %Q{ln -s "$PWD/dota.cfg" "$DOTA_PATH/autoexec.cfg"}
  end

end

namespace :vundle do

  task :clone do
    exec 'git clone https://github.com/gmarik/vundle.git vim.symlink/bundle/vundle'
  end

  task :install do
    exec 'vim +BundleInstall +qall'
  end

end

task default: :install
