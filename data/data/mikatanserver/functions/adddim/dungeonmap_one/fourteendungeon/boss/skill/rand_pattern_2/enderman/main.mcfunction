execute at @a[tag=BossBattle14] run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
summon enderman ~ ~ ~ {Tags:["FourteenDunMob","FourteenDunMob"],Attributes:[{Name:"minecraft:generic.attack_damage",Base:20}]}
tellraw @a[tag=DungeonPlay_14] [{"text": "略奪者>>","color": "dark_purple"},{"text": "召喚：エンダーマン！！","color": "black"}]