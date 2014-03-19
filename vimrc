source ~/.vim/vimrc

" Authoring
let g:snips_author = $USER

" Configure Gist plugin
let g:github_user = $USER
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" PHP Author
let g:pdv_cfg_Author = split(system('git config --global --get user.name'), "\n")[0] . ' <' . split(system('git config --global --get user.email'), "\n")[0]. '>'

" Gui customization
if has('gui_running')
  set lines=42
  set columns=201
endif
