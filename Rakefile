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
