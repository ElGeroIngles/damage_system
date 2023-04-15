# @s is the player!
# @e[tag=check_uuid] is the arrow!
execute store result score @e[tag=check_uuid] a_strength run data get entity @s SelectedItem.tag.strength
execute store result score @e[tag=check_uuid] a_crit_dmg run data get entity @s SelectedItem.tag.crit_dmg
execute store result score @e[tag=check_uuid] a_crit_chn run data get entity @s SelectedItem.tag.crit_chn
