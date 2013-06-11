function fish_prompt
  printf '['
  set_color green
  printf '%s@%s:' (whoami) (hostname|cut -d . -f 1)
  set_color 23f
  printf '%s' (prompt_pwd)
  set_color normal
  set -l os
  set -l git_dir (git rev-parse --git-dir ^/dev/null; set os $status)
  if test $os -eq 0
    printf ']%s ' (__informative_git_prompt)
  else
    printf '] '
  end
end
