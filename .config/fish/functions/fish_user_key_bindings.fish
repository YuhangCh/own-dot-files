function fish_user_key_bindings
  fish_vi_key_bindings
  for mode in insert default visual
        bind -M $mode \cf forward-char
        bind -M $mode \cw forward-word
    end
end
function mcd --wraps mkdri --description 'mkdir && cd'
  mkdir $argv
  cd $argv
end
function g --wraps open --description 'google in safari'
  open -a Safari "https://google.com/search?q=$argv"
end
function post --description 'new post for hugo'
  set dir  "$HOME/Repos/Pages/blog"
  set filename  $argv[1]
  cd $dir
  set mdpath (echo (hugo new posts/$filename.md) | cut -f1 -d" ")
  sed -i '' '5i\
  tags: [""]
  ' $mdpath
  sed -i '' "6i\\
  categories: [\"\"]
  " $mdpath
  open -a typora $mdpath
end
