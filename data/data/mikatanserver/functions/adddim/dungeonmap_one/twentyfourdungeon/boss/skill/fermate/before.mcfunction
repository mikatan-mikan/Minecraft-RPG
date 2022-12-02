tp -166.5 85 1195.5
data merge entity @s {NoAI:true}

playsound entity.enderman.teleport master @a ~ ~ ~ 0.8 1.4

tellraw @a[tag=DungeonPlay_24] [{"text": "Music of Finale>>","color": "red"},{"text": "フェルマータ","color": "#2200FF"}]