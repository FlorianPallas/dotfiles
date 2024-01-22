swayidle -w \
  timeout 300 'swaylock -f' \
  timeout 360 'systemctl suspend' \
  before-sleep 'swaylock -f'
