# Defined in - @ line 1
function ffirefox --wraps='firejail' --description 'alias ffirefox firejail firefox </dev/null &>/dev/null &'
  firejail firefox </dev/null &>/dev/null &;
end
