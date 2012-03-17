
# Generate tags file
def update_ctags!
  File.open('~/.ctags', 'w+') do |f|
    f.write Dir['ctags/*'].collect {|c| "source ~/dotfiles/ctags/#{c}" }.join("\n")
  end
end

task :default do
  update_ctags!

  # source file linkers
  ['vimrc', 'gvimrc', 'bash_profile'].each do |dotfile|
    File.open("~/.#{dotfile}", 'w+') do |f|
      f.write("source ~/.vim/#{dotfile}")
    end
  end

end


task :ctags do
  update_ctags!
end
