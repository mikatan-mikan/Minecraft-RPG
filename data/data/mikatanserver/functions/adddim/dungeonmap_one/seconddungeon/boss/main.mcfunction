summon skeleton -120 72 190 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.armor",Base:10},{Name:"minecraft:generic.max_health",Base:400},{Name:"minecraft:generic.attack_damage",Base:40}],Health:400,Tags:["SecondDunBoss","SecDunMob","Dungeon_Boss"]}
bossbar add secondboss_bar "Satellite"
bossbar set minecraft:secondboss_bar players @a[tag=DungeonPlay_2]
bossbar set minecraft:secondboss_bar max 400
bossbar set minecraft:secondboss_bar color red

execute as @e[tag=SecondDunBoss] at @s as @p run tag @s add BossBattle2

execute store result bossbar minecraft:secondboss_bar value run data get entity @e[tag=SecondDunBoss,limit=1] Health