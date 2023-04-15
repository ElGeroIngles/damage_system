summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["dmg_ind","place_holder"],DisabledSlots:4144959}

execute as @e[type=armor_stand,tag=dmg_ind,tag=!old,tag=place_holder] at @s run tp @s ~ ~ ~ facing entity @p[tag=p_attacker]
execute as @e[type=armor_stand,tag=dmg_ind,tag=!old,tag=place_holder] at @s run summon armor_stand ^ ^1 ^0.3 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["dmg_ind"],DisabledSlots:4144959}
execute unless score p_total_crit_chn wp_stats >= 1-100 wp_stats at @s run setblock ~ 319 ~ oak_sign{Text1:'["",{"text":"-","color":"red"},{"score":{"name":"p_dmg_dealt","objective":"wp_stats"},"color":"red"}]'}
execute if score p_total_crit_chn wp_stats >= 1-100 wp_stats at @s run setblock ~ 319 ~ oak_sign{Text1:'["",{"text":"\\u2742","color":"gold"},{"text":"-","color":"red"},{"score":{"name":"p_dmg_dealt","objective":"wp_stats"},"color":"red"},{"text":"\\u2742","color":"gold"}]'}
data modify entity @e[type=armor_stand,tag=dmg_ind,tag=!old,limit=1,tag=!place_holder] CustomName set from block ~ 319 ~ Text1
data modify entity @e[type=armor_stand,tag=dmg_ind,tag=!old,limit=1,tag=!place_holder] CustomNameVisible set value 1b

tag @e[type=armor_stand,tag=dmg_ind,tag=!old] add old
setblock ~ 319 ~ air
kill @e[type=armor_stand,tag=dmg_ind,tag=old,tag=place_holder]