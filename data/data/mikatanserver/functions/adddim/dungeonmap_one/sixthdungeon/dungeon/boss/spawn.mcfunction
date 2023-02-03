execute in mikatanserver:dungeon run summon magma_cube -437.5 115 -166.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.armor",Base:15},{Name:"minecraft:generic.max_health",Base:500},{Name:"minecraft:generic.attack_damage",Base:40}],Health:700,Tags:["SixthDunBoss","SixDunMob","magma_6","Dungeon_Boss"],Size:5}

execute as @a[tag=DungeonPlay_6] at @s run playsound entity.wither.spawn master @a[tag=DungeonPlay_6] ~ ~ ~ 2 1

bossbar add sixthboss_bar "Lava Cube"
bossbar set minecraft:sixthboss_bar players @a[tag=DungeonPlay_6]
bossbar set minecraft:sixthboss_bar max 5000
bossbar set minecraft:sixthboss_bar color red

#Bossbattletag もバグる
execute as @e[tag=SixthDunBoss] at @s as @a[tag=DungeonPlay_6] run tag @s add BossBattle6

execute store result bossbar minecraft:sixthboss_bar value run data get entity @e[tag=SixthDunBoss,limit=1] Health

scoreboard objectives add SixBossSkill1 minecraft.custom:minecraft.play_time
scoreboard objectives add SixBossSkill2 minecraft.custom:minecraft.play_time