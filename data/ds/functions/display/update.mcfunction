summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["display_hp"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{display:{Name:'{"text":"test","italic":false}'}}}]}

data modify entity @e[type=armor_stand,tag=display_hp,limit=1,sort=nearest] CustomName set from entity @s ArmorItems[3].tag.display.Name
item modify entity @e[type=armor_stand,tag=display_hp,limit=1,sort=nearest] armor.head ds:display/name
data modify entity @s CustomName set from entity @e[type=armor_stand,limit=1,tag=display_hp,sort=nearest] ArmorItems[3].tag.display.Name

data merge entity @s {CustomNameVisible:1b}

kill @e[type=armor_stand,tag=display_hp]
