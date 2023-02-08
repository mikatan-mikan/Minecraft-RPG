effect give @a[tag=BossBattle30] hunger 255 2
effect give @a[tag=BossBattle30] weakness 3 0
summon vex ~ ~ ~ {Tags:["ThirtyDunMob","ThirtyDunVex"],Attributes:[{Name:"minecraft:generic.max_health",Base:50},{Name:"minecraft:generic.attack_damage",Base:25}],Health:50}
execute as @a[tag=BossBattle30] at @s run playsound block.bamboo.break master @s ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_30] [{"text": "大精霊 サラマンダー>>","color": "#cc0000"},{"text": "炎の加護","color": "#af2e3f"}]
