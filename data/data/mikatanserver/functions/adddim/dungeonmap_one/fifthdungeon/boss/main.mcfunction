execute in mikatanserver:dungeon run summon zombie -169.5 235 -67.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.armor",Base:6},{Name:"minecraft:generic.max_health",Base:350},{Name:"minecraft:generic.attack_damage",Base:30}],Health:350,Tags:["FifthDunBoss","FifDunMob","Dungeon_Boss"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'[{"text":"Goblin"}]'},SkullOwner:{Id:[I;1642851210,-643216546,-1405170743,-286360250],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTcyODUwOTA2YjdmMGQ5NTJjMGU1MDgwNzNjYzQzOWZkMzM3NGNjZjViODg5YzA2ZjdlOGQ5MGNjMGNjMjU1YyJ9fX0="}]}}}}]}

bossbar add fifthboss_bar "Goblin king"
bossbar set minecraft:fifthboss_bar players @a[tag=DungeonPlay_5]
bossbar set minecraft:fifthboss_bar max 350
bossbar set minecraft:fifthboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=FifthDunBoss] at @s as @p run tag @s add BossBattle5

execute store result bossbar minecraft:fifthboss_bar value run data get entity @e[tag=FifthDunBoss,limit=1] Health

scoreboard objectives add FifBossSkill minecraft.custom:minecraft.play_time