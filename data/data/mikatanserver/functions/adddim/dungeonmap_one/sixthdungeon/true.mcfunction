bossbar remove minecraft:sixthboss_bar
execute as @a[tag=DungeonPlay_6] run playsound entity.player.levelup master @s ~ ~ ~ 1 1
tellraw @a[tag=DungeonPlay_6] [{"text":"Lava Cube を討伐した!!\n","color": "red"}]
bossbar remove minecraft:sixthboss_bar
execute in mikatanserver:dungeon run kill @e[type=item,predicate=mikatanserver:dungeonmapdim]
scoreboard players set @a PheseManeger_6 1

playsound block.portal.trigger master @s ~ ~ ~ 2 2 1

title @a[tag=DungeonPlay_6] title [{"text": "Phese 2","color": "red"}]

advancement grant @a[tag=DungeonPlay_6] only mikatanserver:tp/dungeon_clear/sixthmid

schedule function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/boss/phese_2 100t