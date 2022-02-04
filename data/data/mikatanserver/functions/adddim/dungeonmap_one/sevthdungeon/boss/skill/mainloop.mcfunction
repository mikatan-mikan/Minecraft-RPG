##メインループ関数 (ここでタイムを満たしているかをチェックする)

execute if entity @a[scores={SevBossSkill=1}] as @e[tag=SevthDunBoss] run effect give @s glowing 40 1
##goblin and skelton summon
execute if entity @a[scores={SevBossSkill=100}] as @e[tag=SevthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/sevthdungeon/spawn/mob
execute if entity @a[scores={SevBossSkill=100}] as @e[tag=SevthDunBoss] run tellraw @a[tag=DungeonPlay_7] [{"text": "future of anything>>","color": "yellow"},{"text": "Summon Allies","color": "red"}]

execute if entity @a[scores={SevBossSkill=375}] as @e[tag=SevthDunBoss] run tp @s @a[tag=DungeonPlay_7,tag=BossBattle7,sort=random,limit=1]
execute if entity @a[scores={SevBossSkill=375}] as @e[tag=SevthDunBoss] run tellraw @a[tag=DungeonPlay_7] [{"text": "future of anything>>","color": "yellow"},{"text": "teleport","color": "green"}]

execute if entity @a[scores={SevBossSkill=526}] as @e[tag=SevthDunBoss] run tp @s @a[tag=DungeonPlay_7,tag=BossBattle7,sort=random,limit=1]
execute if entity @a[scores={SevBossSkill=526}] as @e[tag=SevthDunBoss] run tellraw @a[tag=DungeonPlay_7] [{"text": "future of anything>>","color": "yellow"},{"text": "teleport","color": "green"}]

execute if entity @a[scores={SevBossSkill=600}] as @e[tag=SevthDunBoss] at @s run particle heart ~ ~ ~ 0.2 0.4 0.2 1 20
execute if entity @a[scores={SevBossSkill=600}] as @e[tag=SevthDunBoss] run effect give @s instant_health 1 2
execute if entity @a[scores={SevBossSkill=600}] as @e[tag=SevthDunBoss] run tellraw @a[tag=DungeonPlay_7] [{"text": "future of anything>>","color": "yellow"},{"text": "healing","color": "green"}]


##loop reset
execute if entity @a[scores={SevBossSkill=625..}] run scoreboard players set @a SevBossSkill 0