scoreboard players set $mana TMP 30
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

summon zombie ~ ~2 ~ {Silent:1b,Tags:["TactMobs","ZomAllies"],DeathLootTable:"",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0.4}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'[{"text":"Inner Beacon"}]'},SkullOwner:{Id:[I;728597099,-399816307,-1643120094,1494021384],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmRjZWE3MTliZTE2YWY4Zjk2ODNmNjg5MjM0NTkwOTVlZjQ0ZjE2ZTI0ZDZmZmRjMzAxMWExNzVmYTU0YzgxZCJ9fX0="}]}}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}
execute as @e[tag=TactMobs] at @s run summon snowball ~ ~3 ~ {Tags:["Summon_Tact","TactMobs","ZomAllies"],Owner:[],Motion:[0.0,-4.0,0.0]}
execute as @e[tag=ZomAllies] at @s run tag @e[tag=!ZomAllies,type=#mikatanserver:mobs,limit=1,sort=nearest,distance=..10] add EnemyMobChecker
data modify entity @e[type=minecraft:snowball,tag=Summon_Tact,limit=1,sort=nearest] Owner set from entity @e[tag=!ZomAllies,type=#mikatanserver:mobs,limit=1,sort=nearest,distance=..10] UUID
execute as @e[tag=TactMobs] run tag @s remove TactMobs

schedule function mikatanserver:item/rod/tact/one/kill_s 1t