# @s is the arrow!
# @p[advancements={ds:m_is_arrow=true}] is the player!
# @e[tag=m_attacker,sort=nearest,limit=1] is the entity!
execute store result score m_strength wp_stats run data get entity @e[tag=m_attacker,sort=nearest,limit=1] HandItems[0].tag.strength
execute store result score m_crit_dmg wp_stats run data get entity @e[tag=m_attacker,sort=nearest,limit=1] HandItems[0].tag.crit_dmg
execute store result score m_crit_chn wp_stats run data get entity @e[tag=m_attacker,sort=nearest,limit=1] HandItems[0].tag.crit_chn

scoreboard players operation m_total_str wp_stats = @s a_strength
scoreboard players operation m_total_str wp_stats += m_strength wp_stats
scoreboard players operation m_total_crt_dmg wp_stats = @s a_crit_dmg
scoreboard players operation m_total_crt_dmg wp_stats += m_crit_dmg wp_stats
scoreboard players operation m_total_crit_chn wp_stats = @s a_crit_chn
scoreboard players operation m_total_crit_chn wp_stats += m_crit_chn wp_stats

advancement revoke @p[advancements={ds:m_is_arrow=true},tag=p_attacker] only ds:m_is_arrow