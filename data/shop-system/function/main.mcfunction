execute as @a[scores={seeCredits=1..}] run function shop-system:see_credits

execute at @a[scores={shopSign=1..}] run execute as @a[scores={shopSign=1..}] run function shop-system:shop_sign_with_value

execute as @a[scores={shopChest=1..}] run function shop-system:locked_shop_chest

execute as @a[scores={shopChestKey=1..}] run function shop-system:shop_chest_key

execute as @a[scores={shopStackSize=65..}] run scoreboard players set @s shopStackSize 64

scoreboard players enable @a shopStackSize

kill @e[nbt={Item:{components:{"minecraft:custom_name":{"italic":false,"text":"Shop Chest"}}}}]

scoreboard players add @a playerTick 1

execute as @a[scores={playerTick=72000..}] run function shop-system:earn_hourly_credits

