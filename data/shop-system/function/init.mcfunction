scoreboard objectives add credits dummy ["",{"text":"$","color":"#3dbaff"},{"text":" Credits "},{"text":"$","color":"#3dbaff"}]

scoreboard objectives add seeCredits trigger

scoreboard objectives add shopStackSize trigger
scoreboard objectives add shopSign trigger

data modify storage shop_system:signs temp.signValue set value 0
data modify storage shop_system:signs temp.stackSize set value 0
data modify storage shop_system:signs temp.playerUUID0 set value 0
data modify storage shop_system:signs temp.playerUUID1 set value 0
data modify storage shop_system:signs temp.playerUUID2 set value 0
data modify storage shop_system:signs temp.playerUUID3 set value 0

scoreboard objectives add shopSystem_tempChestItemCount dummy
scoreboard players set #shopSystem shopSystem_tempChestItemCount 0

scoreboard objectives add shopSystem_tempChestRemoveItemSuccess dummy
scoreboard players set #shopSystem shopSystem_tempChestRemoveItemSuccess 0

scoreboard objectives add shopChest trigger

data modify storage shop_system:chests temp.playerUUID0 set value 0
data modify storage shop_system:chests temp.playerUUID1 set value 0
data modify storage shop_system:chests temp.playerUUID2 set value 0
data modify storage shop_system:chests temp.playerUUID3 set value 0

scoreboard objectives add shopChestKey trigger
