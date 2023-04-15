execute if entity @s[advancements={ds:on_hurt={target=true}}] run function ds:damage_system/find_entity1
advancement revoke @s only ds:on_hurt

# Entity attacks player!
# @s is player!
# Formula: (((Strength * Strength) / (Strength + Defense)) * Crit_dmg) + 1 (Crit_dmg is only applied when a crit attack is done)
execute unless entity @s[advancements={ds:m_is_arrow=true}] at @s as @e[tag=m_attacker,sort=nearest,limit=1] run function ds:damage_system/m_wp_stats
execute if entity @s[advancements={ds:m_is_arrow=true}] at @s as @e[type=arrow,tag=old,sort=nearest,limit=1] run function ds:damage_system/am_wp_stats

execute store result score p_defens defense_calc run data get entity @s SelectedItem.tag.defens
scoreboard players operation p_total_defens defense_calc = @s defens
scoreboard players operation p_total_defens defense_calc += p_defens defense_calc

scoreboard players operation m_dmg_dealt wp_stats = m_total_str wp_stats
scoreboard players operation m_dmg_dealt wp_stats *= m_total_str wp_stats
scoreboard players operation p_str_def defense_calc = m_total_str wp_stats
scoreboard players operation p_str_def defense_calc += p_total_defens defense_calc
scoreboard players operation m_dmg_dealt wp_stats /= p_str_def defense_calc

execute at @s if score m_total_crit_chn wp_stats >= 1-100 wp_stats run scoreboard players operation m_dmg_dealt wp_stats *= m_total_crt_dmg wp_stats

scoreboard players add m_dmg_dealt wp_stats 1

scoreboard players operation @s health -= m_dmg_dealt wp_stats

# Tellraw test:
# execute at @s unless score m_total_crit_chn wp_stats >= 1-100 wp_stats run tellraw @s ["","Mob damage dealt: ",{"score":{"name":"m_dmg_dealt","objective":"wp_stats"},"color":"dark_red"}]
# execute at @s if score m_total_crit_chn wp_stats >= 1-100 wp_stats run tellraw @s ["","(Crit!) Mob damage dealt: ",{"score":{"name":"m_dmg_dealt","objective":"wp_stats"},"color":"dark_red"}]

scoreboard players set @s hp_regen_timer 0
scoreboard players reset 1-100 wp_stats
execute at @s run tag @e[tag=m_attacker,sort=nearest,limit=1] remove m_attacker