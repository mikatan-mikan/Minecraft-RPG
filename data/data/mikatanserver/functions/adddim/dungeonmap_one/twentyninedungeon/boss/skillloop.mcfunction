## as at spider

tag @a[distance=..15] add BossBattle27

scoreboard players add @s TwentynineDSkillTimer1 1
execute if entity @s[scores={TwentynineDSkillTimer1=40}] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/teleport/main


execute if entity @s[scores={TwentynineDSkillTimer1=70}] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/web/bef
execute if entity @s[scores={TwentynineDSkillTimer1=90}] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/web/put_web
execute if entity @s[scores={TwentynineDSkillTimer1=140}] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/web/delete_web


execute if entity @s[scores={TwentynineDSkillTimer1=150}] run tellraw @a[tag=DungeonPlay_27] [{"text":"✧satellite>>","color": "green"},{"text": "windmasic!","color": "aqua"}]
execute if entity @s[scores={TwentynineDSkillTimer1=150}] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillfile/main

execute if entity @s[scores={TwentynineDSkillTimer1=170}] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/web/bef
execute if entity @s[scores={TwentynineDSkillTimer1=190}] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/web/put_web
execute if entity @s[scores={TwentynineDSkillTimer1=240}] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/web/delete_web

execute if entity @s[scores={TwentynineDSkillTimer1=270}] run function mikatanserver:adddim/dungeonmap_one/twentyninedungeon/boss/healing/main

execute if entity @s[scores={TwentynineDSkillTimer1=350}] run scoreboard players set @s TwentynineDSkillTimer1 0