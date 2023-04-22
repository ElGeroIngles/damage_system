execute unless score @s hp_regen_timer matches 100.. run scoreboard players add @s hp_regen_timer 1
execute if score @s hp_regen_timer matches 100.. run function ds:regen/health
execute if score @s hp_regen_timer matches 100.. if score @s health > @s max_health run scoreboard players operation @s health = @s max_health
execute if score @s hp_regen_timer matches 100.. run scoreboard players set @s hp_regen_timer 0