
# Generate tags file
def update_ctags!
  File.open(File.expand_path('~/.ctags'), 'w+') do |f|
    f.write Dir['ctags/*'].collect {|c| open(c).read }.join("\n")
  end
end

task :default do
  update_ctags!

  # source file linkers
  not_dotfile = ['Rakefile', 'README.md']
  ['vimrc', 'bash_profile'].each do |dotfile|
    File.open(File.expand_path("~/.#{dotfile}"), 'w+') do |f|
      f.write("source ~/dotfiles/#{dotfile}")
    end
  end

end


task :ctags do
  update_ctags!
end
