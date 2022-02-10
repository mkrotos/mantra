# Defined in - @ line 1
function brightness --wraps='xrandr --output HDMI-1 --brightness' --description 'alias brightness xrandr --output HDMI-1 --brightness'
  xrandr --output HDMI-1 --brightness $argv;
end
