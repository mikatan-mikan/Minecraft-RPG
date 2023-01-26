## as at spider

tag @a[distance=..15] add BossBattle27

scoreboard players add @s TwentyeightDSkillTimer1 1
execute if entity @s[scores={TwentyeightDSkillTimer1=40}] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/teleport/main


execute if entity @s[scores={TwentyeightDSkillTimer1=70}] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/web/bef
execute if entity @s[scores={TwentyeightDSkillTimer1=90}] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/web/put_web
execute if entity @s[scores={TwentyeightDSkillTimer1=140}] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/web/delete_web


execute if entity @s[scores={TwentyeightDSkillTimer1=150}] run tellraw @a[tag=DungeonPlay_27] [{"text":"✧satellite>>","color": "green"},{"text": "windmasic!","color": "aqua"}]
execute if entity @s[scores={TwentyeightDSkillTimer1=150}] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillfile/main

execute if entity @s[scores={TwentyeightDSkillTimer1=170}] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/web/bef
execute if entity @s[scores={TwentyeightDSkillTimer1=190}] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/web/put_web
execute if entity @s[scores={TwentyeightDSkillTimer1=240}] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/web/delete_web

execute if entity @s[scores={TwentyeightDSkillTimer1=270}] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/healing/main

execute if entity @s[scores={TwentyeightDSkillTimer1=350}] run scoreboard players set @s TwentyeightDSkillTimer1 0