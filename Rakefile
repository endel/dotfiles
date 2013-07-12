require 'fileutils'

# Generate tags file
def update_ctags!
  File.open(File.expand_path('~/.ctags'), 'w+') do |f|
    f.write Dir['ctags/*'].collect {|c| open(c).read }.join("\n")
  end
end

def update_modules!
  %x(git submodule update --init)
  %x(git submodule foreach git pull origin master)
end

task :default do
  update_ctags!
  update_modules!

  #
  # Link dynamic files to home directory
  #
  ['vimrc', 'bash_profile', 'inputrc', 'ackrc'].each do |dotfile|
    File.open(File.expand_path("~/.#{dotfile}"), 'w+') do |f|
      f.write("source ~/dotfiles/#{dotfile}")
    end
  end

  #
  # Copy raw files to home directory
  #
  raw_copy_file_list = FileList['git*'] + ['inputrc']
  raw_copy_file_list.each do |file|
    File.open(File.expand_path("~/.#{file}"), 'w+') do |f|
      f.write(open(file).read)
    end
  end

  FileList['Library/Preferences/*'].each do |f|
    FileUtils.cp(File.expand_path(f), File.expand_path("~/#{f}"))
  end

end


task :ctags do
  update_ctags!
end
