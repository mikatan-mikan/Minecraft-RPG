## as at spider

tag @a[distance=..15] add BossBattle27

scoreboard players add @s ThirtyoneDSkillTimer1 1
execute if entity @s[scores={ThirtyoneDSkillTimer1=40}] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/teleport/main


execute if entity @s[scores={ThirtyoneDSkillTimer1=70}] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/web/bef
execute if entity @s[scores={ThirtyoneDSkillTimer1=90}] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/web/put_web
execute if entity @s[scores={ThirtyoneDSkillTimer1=140}] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/web/delete_web


execute if entity @s[scores={ThirtyoneDSkillTimer1=150}] run tellraw @a[tag=DungeonPlay_27] [{"text":"✧satellite>>","color": "green"},{"text": "windmasic!","color": "aqua"}]
execute if entity @s[scores={ThirtyoneDSkillTimer1=150}] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillfile/main

execute if entity @s[scores={ThirtyoneDSkillTimer1=170}] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/web/bef
execute if entity @s[scores={ThirtyoneDSkillTimer1=190}] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/web/put_web
execute if entity @s[scores={ThirtyoneDSkillTimer1=240}] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/web/delete_web

execute if entity @s[scores={ThirtyoneDSkillTimer1=270}] run function mikatanserver:adddim/dungeonmap_one/thirtyonedungeon/boss/healing/main

execute if entity @s[scores={ThirtyoneDSkillTimer1=350}] run scoreboard players set @s ThirtyoneDSkillTimer1 0