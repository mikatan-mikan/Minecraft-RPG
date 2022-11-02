##初期呼び出し
execute in mikatanserver:dungeon run summon zombie -303.5 135 3.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:1.0},{Name:"minecraft:generic.max_health",Base:1000},{Name:"minecraft:generic.attack_damage",Base:25},{Name:"minecraft:generic.movement_speed",Base:0.4}],Health:1000,Tags:["NinethDunBoss","NineDunMob","Dungeon_Boss"],Silent:1b,Pos:[90.0d,0.0d],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16724530},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16724530},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1769437612,-825733463,-2093504318,468327739],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDI1NTU3YmQ1YTgyYjBjMjEwNDVlMzIyMGMzMzgwYWM5ZTBlZDQ2ZGM4M2I1ZjAwYTlkZjJlM2QzZTUwNDVhMiJ9fX0="}]}}}}],CustomName:'[{"text": "Michelle","color": "gold"}]'}


execute as @e[tag=NinethDunBoss] store result score @s MobNowHP run data get entity @s Health
scoreboard objectives remove BossSpawnTimer9
bossbar add ninethboss_bar "剣聖：Michelle"
bossbar set minecraft:ninethboss_bar players @a[tag=DungeonPlay_9]
bossbar set minecraft:ninethboss_bar max 1000
bossbar set minecraft:ninethboss_bar color blue

#Bossbattletag もバグる
execute as @e[tag=NinethDunBoss] at @s as @a[tag=DungeonPlay_9] run tag @s add BossBattle9

execute as @a[tag=BossBattle9] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

execute store result bossbar minecraft:ninethboss_bar value run data get entity @e[tag=NinethDunBoss,limit=1] Health


scoreboard objectives add NineBossSkill minecraft.custom:minecraft.play_time

scoreboard objectives add NineBossSkill2 minecraft.custom:minecraft.play_time

scoreboard objectives add Wind_Count dummy

scoreboard objectives add Wind_Rot_Count dummy