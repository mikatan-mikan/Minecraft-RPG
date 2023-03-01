## as at spider

tag @a[distance=..15] add BossBattle27

scoreboard players add @s ThirtyfiveDSkillTimer1 1
execute if entity @s[scores={ThirtyfiveDSkillTimer1=40}] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/teleport/main


execute if entity @s[scores={ThirtyfiveDSkillTimer1=70}] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/web/bef
execute if entity @s[scores={ThirtyfiveDSkillTimer1=90}] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/web/put_web
execute if entity @s[scores={ThirtyfiveDSkillTimer1=140}] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/web/delete_web


execute if entity @s[scores={ThirtyfiveDSkillTimer1=150}] run tellraw @a[tag=DungeonPlay_27] [{"text":"✧satellite>>","color": "green"},{"text": "windmasic!","color": "aqua"}]
execute if entity @s[scores={ThirtyfiveDSkillTimer1=150}] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillfile/main

execute if entity @s[scores={ThirtyfiveDSkillTimer1=170}] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/web/bef
execute if entity @s[scores={ThirtyfiveDSkillTimer1=190}] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/web/put_web
execute if entity @s[scores={ThirtyfiveDSkillTimer1=240}] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/web/delete_web

execute if entity @s[scores={ThirtyfiveDSkillTimer1=270}] run function mikatanserver:adddim/dungeonmap_one/thirtyfivedungeon/boss/healing/main

execute if entity @s[scores={ThirtyfiveDSkillTimer1=350}] run scoreboard players set @s ThirtyfiveDSkillTimer1 0