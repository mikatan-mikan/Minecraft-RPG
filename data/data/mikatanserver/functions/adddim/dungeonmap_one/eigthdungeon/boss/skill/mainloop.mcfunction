
execute if entity @a[scores={EigBossSkill=100}] as @e[tag=EigthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/skill/healing/main

execute if entity @a[scores={EigBossSkill=175}] as @e[tag=EigthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/skill/summon/main

execute if entity @a[scores={EigBossSkill=225}] as @e[tag=EigthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/skill/healing/main

execute if entity @a[scores={EigBossSkill=300..}] run scoreboard players set @a EigBossSkill 0



##fountain
execute if entity @a[scores={EigBossSkill2=123}] as @e[tag=EigthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/skill/fountain/main
execute if entity @a[scores={EigBossSkill2=123..243}] as @e[tag=Dun8founAr] at @s run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/skill/fountain/effect

execute if entity @a[scores={EigBossSkill2=253}] as @e[type=elder_guardian,tag=EigthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/skill/dazzling/main

##fountain
execute if entity @a[scores={EigBossSkill2=323}] as @e[tag=EigthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/skill/fountain/main
execute if entity @a[scores={EigBossSkill2=323..443}] as @e[tag=Dun8founAr] at @s run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/skill/fountain/effect

execute if entity @a[scores={EigBossSkill2=453}] as @e[type=elder_guardian,tag=EigthDunBoss] at @s run function mikatanserver:adddim/dungeonmap_one/eigthdungeon/boss/skill/dazzling/main

execute if entity @a[scores={EigBossSkill2=578}] run tellraw @a[tag=DungeonPlay_8] [{"text": "Neptune Guardian>>","color": "aqua"},{"text": "lightning","color": "aqua"}]
execute if entity @a[scores={EigBossSkill2=578}] as @a[tag=DungeonPlay_8] at @s run summon lightning_bolt ~ ~ ~
execute if entity @a[scores={EigBossSkill2=579}] as @a[tag=DungeonPlay_8] at @s run summon lightning_bolt ~ ~ ~
execute if entity @a[scores={EigBossSkill2=580}] as @a[tag=DungeonPlay_8] at @s run summon lightning_bolt ~ ~ ~
execute if entity @a[scores={EigBossSkill2=581}] as @a[tag=DungeonPlay_8] at @s run summon lightning_bolt ~ ~ ~
execute if entity @a[scores={EigBossSkill2=582}] as @a[tag=DungeonPlay_8] at @s run summon lightning_bolt ~ ~ ~
execute if entity @a[scores={EigBossSkill2=583}] as @a[tag=DungeonPlay_8] at @s run summon lightning_bolt ~ ~ ~
execute if entity @a[scores={EigBossSkill2=584}] as @a[tag=DungeonPlay_8] at @s run summon lightning_bolt ~ ~ ~

execute if entity @a[scores={EigBossSkill2=600..}] run scoreboard players set @a EigBossSkill2 0