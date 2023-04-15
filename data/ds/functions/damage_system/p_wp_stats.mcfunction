execute store result score p_strength wp_stats run data get entity @s SelectedItem.tag.strength
execute store result score p_crit_dmg wp_stats run data get entity @s SelectedItem.tag.crit_dmg
execute store result score p_crit_chn wp_stats run data get entity @s SelectedItem.tag.crit_chn

scoreboard players operation p_total_str wp_stats = @s strength
scoreboard players operation p_total_str wp_stats += p_strength wp_stats
scoreboard players operation p_total_crt_dmg wp_stats = @s crit_dmg
scoreboard players operation p_total_crt_dmg wp_stats += p_crit_dmg wp_stats
scoreboard players operation p_total_crit_chn wp_stats = @s crit_chn
scoreboard players operation p_total_crit_chn wp_stats += p_crit_chn wp_stats

execute at @s store result score 1-100 wp_stats run loot spawn ~ ~ ~ loot ds:1-100