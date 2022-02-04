
execute store result bossbar minecraft:sixthboss_bar value run data get entity @e[tag=SixthDunBoss,limit=1] Health
execute in mikatanserver:dungeon positioned -425.5 115 -161 run kill @e[type=magma_cube,distance=..100]

##skill healing
execute if entity @a[scores={SixBossSkill1=70},tag=DungeonPlay_6] as @e[tag=SixthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/phese_2/boss/skill/healing/main

##skill summon Allies
execute if entity @a[scores={SixBossSkill1=263},tag=DungeonPlay_6] as @e[tag=SixthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/phese_2/boss/skill/summon/main

##skill 1line mainloop
execute if entity @a[scores={SixBossSkill1=297..},tag=DungeonPlay_6] as @a run scoreboard players set @a SixBossSkill1 0

##blow away
execute if entity @a[scores={SixBossSkill2=194},tag=DungeonPlay_6] as @e[tag=SixthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/phese_2/boss/skill/blowaway/main

##flost field
execute if entity @a[scores={SixBossSkill2=359},tag=DungeonPlay_6] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/phese_2/boss/skill/flostfield/main

##leave rain
execute if entity @a[scores={SixBossSkill2=428},tag=DungeonPlay_6] as @e[tag=SixthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/phese_2/boss/skill/leaverain/main
execute if entity @a[scores={SixBossSkill2=428..500},tag=DungeonPlay_6] as @e[tag=SixDunFB] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/phese_2/boss/skill/leaverain/damage

##skill 2line mainloop
execute if entity @a[scores={SixBossSkill2=501..},tag=DungeonPlay_6] as @a run scoreboard players set @a SixBossSkill2 150


