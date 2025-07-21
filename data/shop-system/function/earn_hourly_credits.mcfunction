scoreboard players add @s credits 20

tellraw @s {"text": "You earned $20.", "color":"green"}

trigger seeCredits

scoreboard players set @s playerTick 0