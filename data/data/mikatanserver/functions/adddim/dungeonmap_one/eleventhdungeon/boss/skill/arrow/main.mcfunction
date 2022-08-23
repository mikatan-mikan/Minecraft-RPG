execute if entity @a[scores={ElevenBossSkill2=100},tag=BossBattle11] run tellraw @a[tag=DungeonPlay_11] [{"text": "master satellite>>","color": "green"},{"text": "暴風矢！！","color": "aqua"}]
##1
execute if entity @a[scores={ElevenBossSkill2=102},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s facing entity @p eyes run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/through/main
execute if entity @a[scores={ElevenBossSkill2=104},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/through/main
execute if entity @a[scores={ElevenBossSkill2=106},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/through/main
execute if entity @a[scores={ElevenBossSkill2=108},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/through/main
execute if entity @a[scores={ElevenBossSkill2=110},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/through/main
execute if entity @a[scores={ElevenBossSkill2=112},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/through/main
execute if entity @a[scores={ElevenBossSkill2=114},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/through/main
execute if entity @a[scores={ElevenBossSkill2=118},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/through/main
execute if entity @a[scores={ElevenBossSkill2=120},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/through/main

##bomb
    #set
    execute if entity @a[scores={ElevenBossSkill2=160},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/bomb/main_1
    execute if entity @a[scores={ElevenBossSkill2=180},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/bomb/main_2
    execute if entity @a[scores={ElevenBossSkill2=600},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/bomb/main_3
    #explode
    execute if entity @a[scores={ElevenBossSkill2=600},tag=BossBattle11] as @e[tag=EleventhDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eleventhdungeon/boss/skill/arrow/bomb/explode