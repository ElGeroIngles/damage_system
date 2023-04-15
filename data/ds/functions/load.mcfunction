tellraw @a {"text":"Reloading...","color":"yellow"}

# Cloud wolf damage detection:
scoreboard objectives add entityid dummy
scoreboard objectives add entityid.0 dummy
scoreboard objectives add entityid.1 dummy
scoreboard objectives add entityid.2 dummy
scoreboard objectives add entityid.3 dummy
scoreboard objectives add entityid.4 dummy
scoreboard objectives add entityid.5 dummy
scoreboard objectives add entityid.6 dummy
scoreboard objectives add entityid.7 dummy
scoreboard objectives add entityid.8 dummy
scoreboard objectives add entityid.9 dummy
scoreboard objectives add entityid.10 dummy
scoreboard objectives add entityid.11 dummy
scoreboard objectives add entityid.12 dummy
scoreboard objectives add entityid.13 dummy
scoreboard objectives add entityid.14 dummy
scoreboard objectives add entityid.15 dummy
scoreboard objectives add entityid.16 dummy
scoreboard objectives add entityid.17 dummy
scoreboard objectives add entityid.18 dummy
scoreboard objectives add entityid.19 dummy
scoreboard objectives add entityid.20 dummy
scoreboard objectives add entityid.21 dummy
scoreboard objectives add entityid.22 dummy
scoreboard objectives add entityid.23 dummy
scoreboard objectives add entityid.24 dummy
scoreboard objectives add entityid.25 dummy
scoreboard objectives add entityid.26 dummy
scoreboard objectives add entityid.27 dummy
scoreboard objectives add entityid.28 dummy
scoreboard objectives add entityid.29 dummy
scoreboard objectives add entityid.30 dummy
scoreboard objectives add entityid.31 dummy
scoreboard players set #loaded entityid 1
scoreboard objectives add const dummy
scoreboard players set 2 const 2
scoreboard players set -1 const -1
scoreboard players set 100 const 100
scoreboard players set 10 const 10
scoreboard players set 5 const 5

# Scoreboards:
scoreboard objectives add health dummy
scoreboard objectives add defens dummy
scoreboard objectives add strength dummy
scoreboard players set @a strength 10
scoreboard objectives add crit_dmg dummy
scoreboard players set @a crit_dmg 10
scoreboard objectives add crit_chn dummy
scoreboard players set @a crit_chn 5
scoreboard objectives add hold_wp dummy
scoreboard objectives add wp_stats dummy
scoreboard objectives add defense_calc dummy
scoreboard objectives add dmg_ind dummy
scoreboard objectives add max_health dummy
scoreboard players set @a max_health 1000
scoreboard objectives add uuid dummy
scoreboard objectives add a_strength dummy
scoreboard objectives add a_crit_dmg dummy
scoreboard objectives add a_crit_chn dummy
scoreboard objectives add t_strength dummy
scoreboard objectives add t_crit_dmg dummy
scoreboard objectives add t_crit_chn dummy
scoreboard objectives add hp_regen dummy
scoreboard objectives add hp_regen_timer dummy

tellraw @a {"text":"Datapack reloaded succesfully!","color":"green"}
tellraw @a ["",{"text":"Damage system - ","color":"gold"},{"text":"By ElGeroIngles","color":"blue"}]
execute as @a at @s run playsound minecraft:entity.player.levelup ambient @s