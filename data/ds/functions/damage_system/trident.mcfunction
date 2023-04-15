# @s is the trident!
execute store result score @s uuid run data get entity @s Owner[0] 1
tag @s add t_check_uuid
execute as @a if score @s uuid = @e[tag=t_check_uuid,limit=1] uuid run function ds:damage_system/trident_stats
tag @s remove t_check_uuid
data merge entity @s {Tags:["old"]}