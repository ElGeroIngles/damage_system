execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{super_boots:1b}}]}] unless entity @s[tag=super_boots] run tag @s add super_boots
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{super_legs:1b}}]}] unless entity @s[tag=super_legs] run tag @s add super_legs
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{super_chest:1b}}]}] unless entity @s[tag=super_chest] run tag @s add super_chest
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{super_helm:1b}}]}] unless entity @s[tag=super_helm] run tag @s add super_helm

execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{super_boots:1b}}]}] if entity @s[tag=super_boots] run tag @s remove super_boots
execute unless entity @s[nbt={Inventory:[{Slot:101b,tag:{super_legs:1b}}]}] if entity @s[tag=super_legs] run tag @s remove super_legs
execute unless entity @s[nbt={Inventory:[{Slot:102b,tag:{super_chest:1b}}]}] if entity @s[tag=super_chest] run tag @s remove super_chest
execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{super_helm:1b}}]}] if entity @s[tag=super_helm] run tag @s remove super_helm

execute if entity @s[tag=super_bonus_applied] unless entity @s[tag=super_boots,tag=super_legs,tag=super_chest,tag=super_helm] run scoreboard players remove @s defens 500

execute if entity @s[tag=super_boots,tag=super_legs,tag=super_chest,tag=super_helm] run tag @s add super_armor
execute unless entity @s[tag=super_boots,tag=super_legs,tag=super_chest,tag=super_helm] run tag @s remove super_armor
execute unless entity @s[tag=super_armor] if entity @s[tag=super_bonus_applied] run tag @s remove super_bonus_applied

execute if entity @s[tag=super_armor,tag=!super_bonus_applied] run function ds:armor/super_armor/full_set
function ds:armor/super_armor/armor_pieces