tag @s add p_attacker
execute if entity @s[advancements={ds:on_hit={target=true}}] run function ds:damage_system/find_entity
advancement revoke @s only ds:on_hit
tag @s remove p_attacker