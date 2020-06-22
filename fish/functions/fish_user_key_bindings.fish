function fish_user_key_bindings
  fish_vi_key_bindings
end
function mcd --wraps mkdri --description 'mkdir && cd'
  mkdir $argv
  cd $argv
end
function g --wraps open --description 'google in safari'
  open -a Safari "https://google.com/search?q=$argv"
end
