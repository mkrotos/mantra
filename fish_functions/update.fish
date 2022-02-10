# Defined in - @ line 1
function update --wraps='sudo apt update && sudo apt dist-upgrade -y' --description 'alias update sudo apt update && sudo apt dist-upgrade -y'
  sudo apt update && sudo apt dist-upgrade -y $argv;
end
