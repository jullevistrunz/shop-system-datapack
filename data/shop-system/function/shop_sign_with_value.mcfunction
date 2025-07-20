execute store result storage shop_system:signs temp.signValue int 1 run scoreboard players get @s shopSign

execute store result storage shop_system:signs temp.stackSize int 1 run scoreboard players get @s shopStackSize

execute store result storage shop_system:signs temp.playerUUID0 int 1 run data get entity @s UUID[0] 1
execute store result storage shop_system:signs temp.playerUUID1 int 1 run data get entity @s UUID[1] 1
execute store result storage shop_system:signs temp.playerUUID2 int 1 run data get entity @s UUID[2] 1
execute store result storage shop_system:signs temp.playerUUID3 int 1 run data get entity @s UUID[3] 1

function shop-system:shop_sign/modify_sign with storage shop_system:signs temp

data modify storage shop_system:signs temp.signValue set value 0
data modify storage shop_system:signs temp.stackSize set value 0
data modify storage shop_system:signs temp.playerUUID0 set value 0
data modify storage shop_system:signs temp.playerUUID1 set value 0
data modify storage shop_system:signs temp.playerUUID2 set value 0
data modify storage shop_system:signs temp.playerUUID3 set value 0

scoreboard players reset @s shopSign
scoreboard players enable @s shopSign