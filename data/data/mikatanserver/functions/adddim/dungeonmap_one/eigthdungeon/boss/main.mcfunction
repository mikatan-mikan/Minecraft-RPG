execute in mikatanserver:dungeon run summon elder_guardian -93 142 512 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.armor",Base:12},{Name:"minecraft:generic.max_health",Base:600},{Name:"minecraft:generic.attack_damage",Base:25}],Health:600,Tags:["EigthDunBoss","EigDunMob"]}
scoreboard objectives remove BossSpawnTimer8
bossbar add eigthboss_bar "Comet"
bossbar set minecraft:eigthboss_bar players @a[tag=DungeonPlay_8]
bossbar set minecraft:eigthboss_bar max 600
bossbar set minecraft:eigthboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=EigthDunBoss] at @s as @p run tag @s add BossBattle8

execute store result bossbar minecraft:eigthboss_bar value run data get entity @e[tag=EigthDunBoss,limit=1] Health


scoreboard objectives add EigBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add EigBossSkill2 minecraft.custom:minecraft.play_time