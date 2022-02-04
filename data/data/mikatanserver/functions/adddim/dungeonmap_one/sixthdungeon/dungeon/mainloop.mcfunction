
execute store result bossbar minecraft:sixthboss_bar value run data get entity @e[tag=SixthDunBoss,limit=1] Health

##skill healing
execute if entity @a[scores={SixBossSkill1=70},tag=DungeonPlay_6] as @e[tag=SixthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/boss/skill/healing/main

##skill summon Allies
execute if entity @a[scores={SixBossSkill1=263},tag=DungeonPlay_6] as @e[tag=SixthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/boss/skill/summon/main

##skill 1line mainloop
execute if entity @a[scores={SixBossSkill1=297..},tag=DungeonPlay_6] as @a run scoreboard players set @a SixBossSkill1 0

##comet 
execute if entity @a[scores={SixBossSkill2=194},tag=DungeonPlay_6] as @e[tag=SixthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/boss/skill/comet/main
execute if entity @a[scores={SixBossSkill2=..264}] as @e[tag=CometWMob6] at @s run particle explosion ~ ~ ~ 0.5 0.5 0.5 2 10
execute as @a[scores={SixBossSkill2=244}] at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 2 0
execute as @a[scores={SixBossSkill2=264}] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 2 0
execute if entity @a[scores={SixBossSkill2=264}] as @e[tag=CometWMob6] at @s run effect give @e[distance=..5] instant_damage 1 1 false
execute as @a[scores={SixBossSkill2=264}] run kill @e[tag=CometWMob6]

##Jamping Blast
execute if entity @a[scores={SixBossSkill2=359},tag=DungeonPlay_6] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/boss/skill/jampingblast/main
execute if entity @a[scores={SixBossSkill2=359..440},tag=DungeonPlay_6] at @e[tag=SixthDunBoss] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/boss/skill/jampingblast/particle 
execute if entity @a[scores={SixBossSkill2=440},tag=DungeonPlay_6] at @e[tag=SixthDunBoss] run function mikatanserver:adddim/dungeonmap_one/sixthdungeon/dungeon/boss/skill/jampingblast/damage

##skill 2line mainloop
execute if entity @a[scores={SixBossSkill2=517..},tag=DungeonPlay_6] as @a run scoreboard players set @a SixBossSkill2 0