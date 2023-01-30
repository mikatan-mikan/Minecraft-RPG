execute in mikatanserver:dungeon run summon vindicator -450.5 230 88.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.armor",Base:12},{Name:"minecraft:generic.max_health",Base:600},{Name:"minecraft:generic.attack_damage",Base:38}],Health:600,Tags:["FourthDunBoss","FouDunMob","Dungeon_Boss"],Motion:[1.0,5.0,1.0]}
scoreboard objectives remove BossSpawnTimer4
bossbar add fourthboss_bar "Comet"
bossbar set minecraft:fourthboss_bar players @a[tag=DungeonPlay_4]
bossbar set minecraft:fourthboss_bar max 6000
bossbar set minecraft:fourthboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=FourthDunBoss] at @s as @p run tag @s add BossBattle4

execute store result bossbar minecraft:fourthboss_bar value run data get entity @e[tag=FourthDunBoss,limit=1] Health

scoreboard objectives add CometTimer minecraft.custom:minecraft.play_time
scoreboard objectives add FourBossSkill minecraft.custom:minecraft.play_time