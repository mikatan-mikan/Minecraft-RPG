clear @s carrot_on_a_stick{CustomModelData:79} 1
playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
particle glow ~ ~ ~ 0.25 0.5 0.25 2 500
tellraw @s [{"text": "[System] ","color": "yellow"},{"text": "golden eggが採掘できるようになった！\n確率->進捗参照","color": "green"}]
#進捗
advancement grant @s only mikatanserver:customcrafter/add_stone/egg
scoreboard players set @s GoldenEggFlag 1