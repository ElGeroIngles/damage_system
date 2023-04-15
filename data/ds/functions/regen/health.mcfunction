scoreboard players operation @s hp_regen = @s max_health
scoreboard players operation @s hp_regen /= 100 const
scoreboard players add @s hp_regen 1
scoreboard players operation @s health += @s hp_regen