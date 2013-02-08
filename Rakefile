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


namespace :vundle do

  task :clone do
    exec 'git clone https://github.com/gmarik/vundle.git vim.symlink/bundle/vundle'
  end

  task :install do
    exec 'vim +BundleInstall +qall'
  end

end

task default: :install
