execute as @s in mikatanserver:dungeon run tp @s -403.5 115 -164.5 90 0
title @s subtitle [{"text": "必要Lv 90以上"}]
title @s title [{"text": "記憶の奥底に・・・","color": "red"}]

gamerule keepInventory true

playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
function mikatanserver:adddim/dungeonmap_one/fifthdungeon/init
tag @a remove SixthDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_6
gamemode adventure @a[tag=DungeonPlay_6]



## summon minecraft:armor_stand ~ ~ ~ {Tags:["fillcheckerAr6"],Invisible:1b,Invulnerable:1b,Small:1b}
execute as @e[tag=fillcheckerAr6] at @s run fill ~ ~ ~ ~60 ~3 ~60 air replace oak_leaves
execute as @e[tag=fillcheckerAr6] at @s run fill ~ ~3 ~ ~60 ~6 ~60 air replace oak_leaves
execute as @e[tag=fillcheckerAr6] at @s run fill ~ ~6 ~ ~60 ~9 ~60 air replace oak_leaves
execute as @e[tag=fillcheckerAr6] at @s run fill ~ ~9 ~ ~60 ~12 ~60 air replace oak_leaves
execute as @e[tag=fillcheckerAr6] at @s run fill ~ ~12 ~ ~60 ~15 ~60 air replace oak_leaves
execute as @e[tag=fillcheckerAr6] at @s run fill ~ ~15 ~ ~60 ~18 ~60 air replace oak_leaves
execute as @e[tag=fillcheckerAr6] at @s run fill ~ ~18 ~ ~60 ~21 ~60 air replace oak_leaves
execute as @e[tag=fillcheckerAr6] at @s run fill ~ ~21 ~ ~60 ~24 ~60 air replace oak_leaves
execute as @e[tag=fillcheckerAr6] at @s run fill ~ ~24 ~ ~60 ~27 ~60 air replace oak_leaves
execute as @e[tag=fillcheckerAr6] at @s run fill ~ ~27 ~ ~60 ~30 ~60 air replace oak_leaves

##Troll Skill Score
scoreboard objectives add TrollSixDunSkill dummy
scoreboard objectives add TrollArmorCT dummy

##バックステップ
scoreboard objectives add FifDunBackS dummy

##ストーリー進行・・・
effect give @a[tag=DungeonPlay_6] blindness 20 0
schedule function mikatanserver:adddim/dungeonmap_one/sixthdungeon/story/story_1 10t