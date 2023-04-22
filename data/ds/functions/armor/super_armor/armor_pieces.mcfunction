execute if entity @s[tag=super_boots,tag=!super_boots_applied] run scoreboard players add @s max_health 20
execute if entity @s[tag=super_legs,tag=!super_legs_applied] run scoreboard players add @s max_health 20
execute if entity @s[tag=super_chest,tag=!super_chest_applied] run scoreboard players add @s max_health 20
execute if entity @s[tag=super_helm,tag=!super_helm_applied] run scoreboard players add @s max_health 20

execute if entity @s[tag=super_boots] run tag @s add super_boots_applied
execute if entity @s[tag=super_legs] run tag @s add super_legs_applied
execute if entity @s[tag=super_chest] run tag @s add super_chest_applied
execute if entity @s[tag=super_helm] run tag @s add super_helm_applied

execute if entity @s[tag=super_boots_applied,tag=!super_boots] run scoreboard players remove @s max_health 20
execute if entity @s[tag=super_legs_applied,tag=!super_legs] run scoreboard players remove @s max_health 20
execute if entity @s[tag=super_chest_applied,tag=!super_chest] run scoreboard players remove @s max_health 20
execute if entity @s[tag=super_helm_applied,tag=!super_helm] run scoreboard players remove @s max_health 20

execute if score @s health > @s max_health run scoreboard players operation @s health = @s max_health

execute if entity @s[tag=super_boots_applied,tag=!super_boots] run tag @s remove super_boots_applied
execute if entity @s[tag=super_legs_applied,tag=!super_legs] run tag @s remove super_legs_applied
execute if entity @s[tag=super_chest_applied,tag=!super_chest] run tag @s remove super_chest_applied
execute if entity @s[tag=super_helm_applied,tag=!super_helm] run tag @s remove super_helm_applied
