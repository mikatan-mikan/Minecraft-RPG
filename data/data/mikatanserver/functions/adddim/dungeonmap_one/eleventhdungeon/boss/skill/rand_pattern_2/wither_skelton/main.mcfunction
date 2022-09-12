execute at @a[tag=BossBattle11] run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
summon wither_skeleton ~ ~ ~ {Tags:["ElevenDunMob","ElevenDunMob","ModeCSkeEleDun"],Attributes:[{Name:"minecraft:generic.attack_damage",Base:20}]}
tellraw @a[tag=DungeonPlay_11] [{"text": "master sattelite>>","color": "green"},{"text": "召喚：ウィザースケルトン！！","color": "black"}]