# @s is entity!
execute store result score m_strength wp_stats run data get entity @s HandItems[0].tag.strength
execute store result score m_crit_dmg wp_stats run data get entity @s HandItems[0].tag.crit_dmg
execute store result score m_crit_chn wp_stats run data get entity @s HandItems[0].tag.crit_chn

scoreboard players operation m_total_str wp_stats = @s strength
scoreboard players operation m_total_str wp_stats += m_strength wp_stats
scoreboard players operation m_total_crt_dmg wp_stats = @s crit_dmg
scoreboard players operation m_total_crt_dmg wp_stats += m_crit_dmg wp_stats
scoreboard players operation m_total_crit_chn wp_stats = @s crit_chn
scoreboard players operation m_total_crit_chn wp_stats += m_crit_chn wp_stats

execute store result score 1-100 wp_stats run loot spawn ~ ~ ~ loot ds:1-100