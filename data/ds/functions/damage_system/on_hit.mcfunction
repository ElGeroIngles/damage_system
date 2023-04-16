# Player attacks entity!
# @s is the entity!
# Formula: (((Strength * Strength) / (Strength + Defense)) * Crit_dmg) + 1 (Crit_dmg is only applied when a crit attack is done)
execute at @s as @p[tag=p_attacker] unless entity @s[advancements={ds:is_arrow=true}] run function ds:damage_system/p_wp_stats
execute at @s if entity @p[advancements={ds:is_arrow=true},tag=p_attacker] as @e[type=arrow,tag=old,sort=nearest,limit=1] run function ds:damage_system/ap_wp_stats
execute at @s if entity @p[advancements={ds:is_trident=true},tag=p_attacker] as @e[type=trident,tag=old,sort=nearest,limit=1] run function ds:damage_system/tp_wp_stats

execute store result score m_defens defense_calc run data get entity @s HandItems[0].tag.defens
scoreboard players operation m_total_defens defense_calc = @s defens
scoreboard players operation m_total_defens defense_calc += m_defens defense_calc

scoreboard players operation p_dmg_dealt wp_stats = p_total_str wp_stats
scoreboard players operation p_dmg_dealt wp_stats *= p_total_str wp_stats
scoreboard players operation m_str_def defense_calc = p_total_str wp_stats
scoreboard players operation m_str_def defense_calc += m_total_defens defense_calc
scoreboard players operation p_dmg_dealt wp_stats /= m_str_def defense_calc

execute at @s store result score 1-100 wp_stats run loot spawn ~ ~ ~ loot ds:1-100

execute if score p_total_crit_chn wp_stats >= 1-100 wp_stats run scoreboard players operation p_dmg_dealt wp_stats *= p_total_crt_dmg wp_stats

scoreboard players add p_dmg_dealt wp_stats 1

scoreboard players operation @s health -= p_dmg_dealt wp_stats

# Tellraw test:
# execute unless score p_total_crit_chn wp_stats >= 1-100 wp_stats at @s run tellraw @p[tag=p_attacker] ["","Player damage dealt: ",{"score":{"name":"p_dmg_dealt","objective":"wp_stats"},"color":"dark_red"}]
# execute if score p_total_crit_chn wp_stats >= 1-100 wp_stats at @s run tellraw @p[tag=p_attacker] ["","(Crit!) Player damage dealt: ",{"score":{"name":"p_dmg_dealt","objective":"wp_stats"},"color":"dark_red"}]

execute at @s run function ds:damage_indicators/summon
execute at @s run function ds:display/update

scoreboard players set @p[tag=p_attacker] hp_regen_timer 0
scoreboard players reset 1-100 wp_stats