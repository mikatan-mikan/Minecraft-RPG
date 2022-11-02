execute in mikatanserver:dungeon run summon vindicator -353.0 64 34.0 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.armor",Base:6},{Name:"minecraft:generic.max_health",Base:350},{Name:"minecraft:generic.attack_damage",Base:25}],Health:350,Tags:["SevthDunBoss","SevDunMob","Dungeon_Boss"]}

bossbar add sevthboss_bar "future of anything"
bossbar set minecraft:sevthboss_bar players @a[tag=DungeonPlay_7]
bossbar set minecraft:sevthboss_bar max 350
bossbar set minecraft:sevthboss_bar color blue

kill @e[type=armor_stand,tag=SevDunBossArmor]

#Bossbattletag もバグる
execute as @e[tag=SevthDunBoss] at @s as @p run tag @s add BossBattle7

execute store result bossbar minecraft:sevthboss_bar value run data get entity @e[tag=SevthDunBoss,limit=1] Health

scoreboard objectives add SevBossSkill minecraft.custom:minecraft.play_time