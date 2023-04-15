# @s is the player!
# @e[tag=t_check_uuid] is the trident!
execute store result score @e[tag=t_check_uuid] t_strength run data get entity @s SelectedItem.tag.strength
execute store result score @e[tag=t_check_uuid] t_crit_dmg run data get entity @s SelectedItem.tag.crit_dmg
execute store result score @e[tag=t_check_uuid] t_crit_chn run data get entity @s SelectedItem.tag.crit_chn
