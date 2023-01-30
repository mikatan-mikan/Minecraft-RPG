summon zombie 69 74 -23 {Attributes:[{Name:"minecraft:generic.max_health",Base:400},{Name:"minecraft:generic.attack_damage",Base:10}],Health:400,Tags:["FirstDunBoss","FirDunMob","Dungeon_Boss"]}
bossbar add firstboss_bar "Atrus"
bossbar set minecraft:firstboss_bar players @a[tag=DungeonPlay_1]
bossbar set minecraft:firstboss_bar max 4000
bossbar set minecraft:firstboss_bar color red

execute as @e[tag=FirstDunBoss] at @s as @p run tag @s add BossBattle1

execute store result bossbar minecraft:firstboss_bar value run data get entity @e[tag=FirstDunBoss,limit=1] Health