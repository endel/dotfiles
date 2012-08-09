require 'fileutils'

# Generate tags file
def update_ctags!
  File.open(File.expand_path('~/.ctags'), 'w+') do |f|
    f.write Dir['ctags/*'].collect {|c| open(c).read }.join("\n")
  end
end

task :default do
  update_ctags!

  # source file linkers
  ['vimrc', 'bash_profile'].each do |dotfile|
    File.open(File.expand_path("~/.#{dotfile}"), 'w+') do |f|
      f.write("source ~/dotfiles/#{dotfile}")
    end
  end

  Dir['git*'].each do |gitfile|
    File.open(File.expand_path("~/.#{gitfile}"), 'w+') do |f|
      f.write(open(gitfile).read)
    end
  end

  FileList['Library/Preferences/*'].each do |f|
    FileUtils.cp(File.expand_path(f), File.expand_path("~/#{f}"))
  end

end


task :ctags do
  update_ctags!
end
