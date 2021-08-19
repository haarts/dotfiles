# Defined in /tmp/fish.sgnl91/alphabet.fish @ line 2
function alphabet
  set all a b c d e f g h i j k l m n o p q r s t u v w x y z
  for letter in $all
    if [ $letter = $argv ]
      echo -n (set_color red --bold)$letter(set_color normal)
    else
      echo -n $letter
    end
  end
end
