execute store result storage shop_system:chests temp.playerUUID0 int 1 run data get entity @s UUID[0] 1
execute store result storage shop_system:chests temp.playerUUID1 int 1 run data get entity @s UUID[1] 1
execute store result storage shop_system:chests temp.playerUUID2 int 1 run data get entity @s UUID[2] 1
execute store result storage shop_system:chests temp.playerUUID3 int 1 run data get entity @s UUID[3] 1

function shop-system:shop_chest/give_key with storage shop_system:chests temp

data modify storage shop_system:chests temp.playerUUID0 set value 0
data modify storage shop_system:chests temp.playerUUID1 set value 0
data modify storage shop_system:chests temp.playerUUID2 set value 0
data modify storage shop_system:chests temp.playerUUID3 set value 0

scoreboard players reset @s shopChestKey
scoreboard players enable @s shopChestKey