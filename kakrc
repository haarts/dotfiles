source "%val{config}/plugins/plug.kak/rc/plug.kak"
plug "andreyorst/fzf.kak" config %{
        map global normal <c-p> ': fzf-mode<ret>'
} defer "fzf" %{
        set-option global fzf_file_command "rg --files --hidden -g'!.git'"
        set-option global fzf_highlight_command 'bat'
}

hook global BufCreate .* %{editorconfig-load}
colorscheme default
add-highlighter global/ number-lines -relative
add-highlighter global/ show-matching


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
