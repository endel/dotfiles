source ~/.vim/vimrc

" Authoring
let g:snips_author = $USER

" Configure Gist plugin
let g:github_user = $GITHUB_USER
let g:github_token = $GITHUB_TOKEN
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Gui customization
if has('gui_running')
  set lines=42
  set columns=201
endif
