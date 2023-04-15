# @s is the arrow!
execute store result score @s uuid run data get entity @s Owner[0] 1
tag @s add check_uuid
execute as @a if score @s uuid = @e[tag=check_uuid,limit=1] uuid run function ds:damage_system/arrow_stats
tag @s remove check_uuid
data merge entity @s {Tags:["old"],PierceLevel:4b}