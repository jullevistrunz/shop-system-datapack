scoreboard players add @s credits 10

tellraw @s {"text": "You earned $10.", "color":"green"}

trigger seeCredits

scoreboard players set @s playerTick 0