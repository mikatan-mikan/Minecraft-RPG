clear @s carrot_on_a_stick{CustomModelData:167} 1
playsound block.beacon.activate master @s ~ ~ ~ 1 1 1
particle glow ~ ~ ~ 0.25 0.5 0.25 2 500
tellraw @s [{"text": "[System] ","color": "yellow"},{"text": "soul crystalが採掘できるようになった！\n確率->進捗参照","color": "green"}]
#進捗
advancement grant @s only mikatanserver:customcrafter/add_stone/soul
scoreboard players set @s SoulCrystalFlag 1