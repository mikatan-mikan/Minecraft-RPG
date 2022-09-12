
tellraw @a[tag=DungeonPlay_15] [{"text": "溶岩塊>>","color": "red"},{"text": "召喚：ピッグマン！！","color": "aqua"}]
execute as @a[tag=DungeonPlay_15] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 0.2 1.6
summon zombified_piglin ~ ~ ~ {Tags:["FifteenDunMob"],Attributes:[{Name:"minecraft:generic.max_health",Base:30},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.movement_speed",Base:0.25}]}
summon zombified_piglin ~ ~ ~ {Tags:["FifteenDunMob"],Attributes:[{Name:"minecraft:generic.max_health",Base:30},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.movement_speed",Base:0.25}]}