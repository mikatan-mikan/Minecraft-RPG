tp -1279.5 0.0 1020.5
data merge entity @s {NoAI:true}

playsound entity.enderman.teleport master @a ~ ~ ~ 0.8 1.4

tellraw @a[tag=DungeonPlay_season2] [{"text": "Music of Finale>>","color": "red"},{"text": "フェルマータ","color": "#2200FF"}]