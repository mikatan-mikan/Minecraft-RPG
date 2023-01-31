execute at @a[tag=BossBattleseason2] run playsound entity.wither.spawn master @s ~ ~ ~ 1 2 1
summon enderman ~ ~ ~ {Tags:["season2DunMob","season2DunMob"],Attributes:[{Name:"minecraft:generic.attack_damage",Base:20}]}
tellraw @a[tag=DungeonPlay_season2] [{"text": "略奪者>>","color": "dark_purple"},{"text": "召喚：エンダーマン！！","color": "black"}]