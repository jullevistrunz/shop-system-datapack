$execute unless score @s credits matches $(value).. run return run tellraw @s {"text": "You don't have enough credits.", "color":"red"}

execute if block ~1 ~ ~ chest{CustomName:{italic:0b,text:"Shop Chest"}} run function shop-system:shop_sign/chest_coords/xp1 with block ~ ~ ~ components.minecraft:custom_data

execute if block ~-1 ~ ~ chest{CustomName:{italic:0b,text:"Shop Chest"}} run function shop-system:shop_sign/chest_coords/xm1 with block ~ ~ ~ components.minecraft:custom_data

execute if block ~ ~ ~1 chest{CustomName:{italic:0b,text:"Shop Chest"}} run function shop-system:shop_sign/chest_coords/zp1 with block ~ ~ ~ components.minecraft:custom_data

execute if block ~ ~ ~-1 chest{CustomName:{italic:0b,text:"Shop Chest"}} run function shop-system:shop_sign/chest_coords/zm1 with block ~ ~ ~ components.minecraft:custom_data

$execute if score #shopSystem shopSystem_tempChestRemoveItemSuccess matches 1 run scoreboard players remove @s credits $(value)

$execute if score #shopSystem shopSystem_tempChestRemoveItemSuccess matches 1 run tellraw @s {"text": "Successfully spent $$(value).", "color":"green"}

$execute if score #shopSystem shopSystem_tempChestRemoveItemSuccess matches 1 run execute as @a[nbt={UUID:[I; $(playerUUID0), $(playerUUID1), $(playerUUID2), $(playerUUID3)]}] run scoreboard players add @s credits $(value)

$execute if score #shopSystem shopSystem_tempChestRemoveItemSuccess matches 1 run tellraw @a[nbt={UUID:[I; $(playerUUID0), $(playerUUID1), $(playerUUID2), $(playerUUID3)]}] {"text": "You earned $$(value).", "color":"green"}

execute if score #shopSystem shopSystem_tempChestRemoveItemSuccess matches 0 run tellraw @s {"text": "Failed to interact with shop.", "color":"red"}

scoreboard players set #shopSystem shopSystem_tempChestRemoveItemSuccess 0