source "%val{config}/plugins/plug.kak/rc/plug.kak"
hook global BufCreate .* %{editorconfig-load}
plug "andreyorst/fzf.kak"
colorscheme default
add-highlighter global/ number-lines -relative
add-highlighter global/ show-matching

map global normal <c-p> ': fzf-mode<ret>'

map global normal '#' :comment-line<ret> -docstring 'comment line'

map global user y '<a-|>xsel -i -b<ret>'

#eval %sh{kak-lsp --kakoune -s $kak_session}

#hook global BufCreate .* %{
#    editorconfig-load
#}

#hook global WinSetOption filetype=(?!md).* %{
#  set buffer autowrap_column 79
#}

hook global WinSetOption filetype=python %{
    hook window InsertChar \t -group python-indent %{ exec -draft h@ }
}

hook global WinSetOption filetype=git-commit %{
  autowrap-enable
}

source ~/prj/smarttab.kak/rc/smarttab.kak
