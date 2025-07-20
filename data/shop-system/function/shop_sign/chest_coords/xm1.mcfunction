execute store result score #shopSystem shopSystem_tempChestItemCount run data get block ~-1 ~ ~ Items[0].count

$execute unless score #shopSystem shopSystem_tempChestItemCount matches $(stackSize) run return run tellraw @s {"text": "The items in the chest have an invalid stack size.", "color":"red"}

function shop-system:shop_sign/give with block ~-1 ~ ~ Items[0]

data remove block ~-1 ~ ~ Items[0]

scoreboard players set #shopSystem shopSystem_tempChestItemCount 0

scoreboard players set #shopSystem shopSystem_tempChestRemoveItemSuccess 1