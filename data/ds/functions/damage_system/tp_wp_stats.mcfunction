# @s is the trient!
# @p[advancements={ds:is_trident=true},tag=p_attacker] is the player!
execute store result score p_strength wp_stats run scoreboard players get @s t_strength
execute store result score p_crit_dmg wp_stats run scoreboard players get @s t_crit_dmg
execute store result score p_crit_chn wp_stats run scoreboard players get @s t_crit_chn

scoreboard players operation p_total_str wp_stats = @p[tag=p_attacker] strength
scoreboard players operation p_total_str wp_stats += p_strength wp_stats
scoreboard players operation p_total_crt_dmg wp_stats = @p[tag=p_attacker] crit_dmg
scoreboard players operation p_total_crt_dmg wp_stats += p_crit_dmg wp_stats
scoreboard players operation p_total_crit_chn wp_stats = @p[tag=p_attacker] crit_chn
scoreboard players operation p_total_crit_chn wp_stats += p_crit_chn wp_stats

execute if score p_total_crit_chn wp_stats matches 101.. run scoreboard players set p_total_crit_chn wp_stats 100

advancement revoke @p[advancements={ds:is_trident=true},tag=p_attacker] only ds:is_trident