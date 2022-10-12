effect give @s resistance 1 0
scoreboard players add @s mana 10
execute as @e[distance=..10,type=#mikatanserver:mobs,limit=1] run effect give @s slowness 4 1
playsound block.anvil.place master @s ~ ~ ~ 0.3 0.5