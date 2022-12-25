## as at spider

tag @a[distance=..15] add BossBattle27

scoreboard players add @s TwentysevenDSkillTimer1 1
execute if entity @s[scores={TwentysevenDSkillTimer1=40}] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/teleport/main


execute if entity @s[scores={TwentysevenDSkillTimer1=70}] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/web/bef
execute if entity @s[scores={TwentysevenDSkillTimer1=90}] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/web/put_web
execute if entity @s[scores={TwentysevenDSkillTimer1=140}] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/web/delete_web


execute if entity @s[scores={TwentysevenDSkillTimer1=150}] run tellraw @a[tag=DungeonPlay_27] [{"text":"✧satellite>>","color": "green"},{"text": "windmasic!","color": "aqua"}]
execute if entity @s[scores={TwentysevenDSkillTimer1=150}] run function mikatanserver:adddim/dungeonmap_one/seconddungeon/boss/skillfile/main

execute if entity @s[scores={TwentysevenDSkillTimer1=170}] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/web/bef
execute if entity @s[scores={TwentysevenDSkillTimer1=190}] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/web/put_web
execute if entity @s[scores={TwentysevenDSkillTimer1=240}] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/web/delete_web

execute if entity @s[scores={TwentysevenDSkillTimer1=270}] run function mikatanserver:adddim/dungeonmap_one/twentysevendungeon/boss/healing/main

execute if entity @s[scores={TwentysevenDSkillTimer1=350}] run scoreboard players set @s TwentysevenDSkillTimer1 0