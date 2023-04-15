# Mob characteristics:
execute store result score @s health run data get entity @s ArmorItems[3].tag.health
execute store result score @s defens run data get entity @s ArmorItems[3].tag.defens
execute store result score @s strength run data get entity @s ArmorItems[3].tag.strength
execute store result score @s crit_dmg run data get entity @s ArmorItems[3].tag.crit_dmg
execute store result score @s crit_chn run data get entity @s ArmorItems[3].tag.crit_chn
execute store result score @s max_health run data get entity @s ArmorItems[3].tag.health

function ds:display/update

tag @s add old
