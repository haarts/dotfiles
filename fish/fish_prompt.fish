function fish_prompt --description "Write out the prompt"
    echo -n -s $USER @ (hostname|cut -d . -f 1) ' ' \
      (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) \
      (__terlar_git_prompt) \
      '> '
end
