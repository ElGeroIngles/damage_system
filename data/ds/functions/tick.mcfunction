# Functions:
execute as @e[type=#ds:targets,type=!player,tag=!old] run function ds:damage_system/stats
execute as @e[type=armor_stand,tag=old,tag=dmg_ind] run function ds:damage_indicators/kill
execute as @e[type=arrow,tag=!old] run function ds:damage_system/arrow
execute as @e[type=trident,tag=!old] run function ds:damage_system/trident
execute as @a if score @s health < @s max_health run function ds:regen/timer

# Cloud wolf damage detection:
execute if score #loaded entityid matches 1 run function ds:damage_system/real_tick

# Die on 0 health or lower:
execute as @e[scores={health=..0}] run kill @s
execute as @a[scores={health=..0}] run scoreboard players operation @s health = @s max_health

# Action bar:
execute as @a run title @s actionbar ["",{"score":{"name":"@s","objective":"health"},"color":"red"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"defens"},"color":"green"}]

# Effects:
effect give @a[gamemode=!creative,gamemode=!spectator] resistance 2 255 true
effect give @a[gamemode=!creative,gamemode=!spectator] regeneration 2 255 true
effect give @a[gamemode=!creative,gamemode=!spectator] saturation 2 255 true
effect give @e[type=#ds:targets] resistance 2 255 true

# Commands:
execute as @a store result score @s uuid run data get entity @s UUID[0] 1
