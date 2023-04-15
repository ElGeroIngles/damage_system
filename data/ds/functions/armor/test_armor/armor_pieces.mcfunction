execute if entity @s[tag=test_boots,tag=!test_boots_applied] run scoreboard players add @s defens 50
execute if entity @s[tag=test_legs,tag=!test_legs_applied] run scoreboard players add @s defens 50
execute if entity @s[tag=test_chest,tag=!test_chest_applied] run scoreboard players add @s defens 50
execute if entity @s[tag=test_helm,tag=!test_helm_applied] run scoreboard players add @s defens 50

execute if entity @s[tag=test_boots] run tag @s add test_boots_applied
execute if entity @s[tag=test_legs] run tag @s add test_legs_applied
execute if entity @s[tag=test_chest] run tag @s add test_chest_applied
execute if entity @s[tag=test_helm] run tag @s add test_helm_applied

execute if entity @s[tag=test_boots_applied,tag=!test_boots] run scoreboard players remove @s defens 50
execute if entity @s[tag=test_legs_applied,tag=!test_legs] run scoreboard players remove @s defens 50
execute if entity @s[tag=test_chest_applied,tag=!test_chest] run scoreboard players remove @s defens 50
execute if entity @s[tag=test_helm_applied,tag=!test_helm] run scoreboard players remove @s defens 50

execute if entity @s[tag=test_boots_applied,tag=!test_boots] run tag @s remove test_boots_applied
execute if entity @s[tag=test_legs_applied,tag=!test_legs] run tag @s remove test_legs_applied
execute if entity @s[tag=test_chest_applied,tag=!test_chest] run tag @s remove test_chest_applied
execute if entity @s[tag=test_helm_applied,tag=!test_helm] run tag @s remove test_helm_applied
