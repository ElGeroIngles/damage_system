execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{test_boots:1b}}]}] unless entity @s[tag=test_boots] run tag @s add test_boots
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{test_legs:1b}}]}] unless entity @s[tag=test_legs] run tag @s add test_legs
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{test_chestplate:1b}}]}] unless entity @s[tag=test_chest] run tag @s add test_chest
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{test_helmet:1b}}]}] unless entity @s[tag=test_helm] run tag @s add test_helm

execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{test_boots:1b}}]}] if entity @s[tag=test_boots] run tag @s remove test_boots
execute unless entity @s[nbt={Inventory:[{Slot:101b,tag:{test_legs:1b}}]}] if entity @s[tag=test_legs] run tag @s remove test_legs
execute unless entity @s[nbt={Inventory:[{Slot:102b,tag:{test_chestplate:1b}}]}] if entity @s[tag=test_chest] run tag @s remove test_chest
execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{test_helmet:1b}}]}] if entity @s[tag=test_helm] run tag @s remove test_helm

execute if entity @s[tag=test_bonus_applied] unless entity @s[tag=test_boots,tag=test_legs,tag=test_chest,tag=test_helm] run scoreboard players remove @s max_health 1000
execute if entity @s[tag=test_bonus_applied] unless entity @s[tag=test_boots,tag=test_legs,tag=test_chest,tag=test_helm] if score @s health > @s max_health run scoreboard players operation @s health = @s max_health

execute if entity @s[tag=test_boots,tag=test_legs,tag=test_chest,tag=test_helm] run tag @s add test_armor
execute unless entity @s[tag=test_boots,tag=test_legs,tag=test_chest,tag=test_helm] run tag @s remove test_armor
execute unless entity @s[tag=test_armor] if entity @s[tag=test_bonus_applied] run tag @s remove test_bonus_applied

execute if entity @s[tag=test_armor,tag=!test_bonus_applied] run function ds:armor/test_armor/full_set
function ds:armor/test_armor/armor_pieces