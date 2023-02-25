effect give @a[tag=BossBattle34] hunger 1 2
effect give @a[tag=BossBattle34] weakness 3 0
summon vex ~ ~ ~ {Tags:["ThirtyfourDunMob","ThirtyfourDunVex"],Attributes:[{Name:"minecraft:generic.max_health",Base:50},{Name:"minecraft:generic.attack_damage",Base:25}],Health:50}
execute as @a[tag=BossBattle34] at @s run playsound block.bamboo.break master @s ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_34] [{"text": "大精霊 ウィンディーネ>>","color": "aqua"},{"text": "集水","color": "#a9ceec"}]
