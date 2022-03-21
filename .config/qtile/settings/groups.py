# Antonio Sarosi
# https://youtube.com/c/antoniosarosi
# https://github.com/antoniosarosi/dotfiles

# Qtile workspaces

from libqtile.config import Key, Group
from libqtile.command import lazy
from settings.keys import mod, keys


# Get the icons at https://www.nerdfonts.com/cheat-sheet (you need a Nerd Font)
# Icons: 
# nf-fa-firefox, 
# nf-fae-python, 
# nf-dev-terminal, 
# nf-fa-code, 
# nf-seti-config, 
# nf-mdi-folder, 
# nf-mdi-image, 
# nf-fa-video_camera, 
# nf-mdi-layers

groups = [Group(i) for i in [
    "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ",
]]

#groups = [Group(i) for i in [
#    "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ",
#]]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen(toggle=True)),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))
    ])

#def toscreen(qtile, group_name):
#    if group_name  == qtile.current_screen.group.name:
#        return qtile.current_screen.set_group(qtile.current_screen.previous_group)
#    for i, group in enumerate(qtile.groups):
#        if group_name == group.name:
#            return qtile.current_screen.set_group(qtile.groups[i])
