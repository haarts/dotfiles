source "%val{config}/plugins/plug.kak/rc/plug.kak"
plug "andreyorst/fzf.kak" config %{
        map global normal <c-p> ': fzf-mode<ret>'
} defer "fzf" %{
        set-option global fzf_file_command "rg --files --hidden -g'!.git'"
        set-option global fzf_highlight_command 'bat'
}

hook global BufCreate .* %{editorconfig-load}
eval %sh{kak-lsp --kakoune -s $kak_session}
nop %sh{ (kak-lsp -s $kak_session -vvv ) > /tmp/kak-lsp.log 2>&1 < /dev/null & }
hook global WinSetOption filetype=(rust|python|go|javascript|dart) %{
        lsp-enable-window
        set global lsp_cmd "kak-lsp -s %val{session} -vvv --log /tmp/kak-lsp.log"
}

colorscheme default
add-highlighter global/ number-lines -relative
add-highlighter global/ show-matching



map global normal '#' :comment-line<ret> -docstring 'comment line'

map global user y '<a-|>xsel -i -b<ret>' -docstring 'Copy selection to system clipboard'

map global user l ': enter-user-mode lsp<ret>' -docstring 'Enter LSP user mode'

# map global user \ ': tmux-terminal-horizontal kak -c %val{session}<ret>' -docstring 'Split horizontal'
# map global user = ': tmux-terminal-vertical kak -c %val{session}<ret>' -docstring 'Split vertical'

hook global WinSetOption filetype=python %{
    hook window InsertChar \t -group python-indent %{ exec -draft h@ }
}

hook global WinSetOption filetype=git-commit %{
  autowrap-enable
}
