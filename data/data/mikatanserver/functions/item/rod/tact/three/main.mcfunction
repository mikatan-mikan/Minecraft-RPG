scoreboard players set $mana TMP 45
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP


scoreboard players set @s MK.r.RandValue 2
function mikatanlib:rand/rand_exe
execute if score @s MK.r.RandValue matches 0 run summon zombie ~ ~2 ~ {Tags:["RuinsTactMobs","RuinsZomAllies"],DeathLootTable:"mikatanserver:null",Health:25,Attributes:[{Name:"minecraft:generic.max_health",Base:25},{Name:"minecraft:generic.follow_range",Base:20},{Name:"minecraft:generic.attack_damage",Base:4},{Name:"minecraft:generic.movement_speed",Base:0.4}],CustomName:'[{"text": "ruins guardian"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:elytra",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;726094632,439701372,-1274694969,1472342088],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzFlODJlMzA3ODdjYWRlMWVhNzg2OTg4NjA0NDRkNjVkZjcwNjhjYzJhZjJiODY3MDc5MzIwY2FlN2RlY2Y1NSJ9fX0="}]}}}}],Silent:true}
execute if score @s MK.r.RandValue matches 1 run summon zombie ~ ~2 ~ {Tags:["RuinsTactMobs","RuinsZomAllies"],DeathLootTable:"mikatanserver:null",Health:25,Attributes:[{Name:"minecraft:generic.max_health",Base:25},{Name:"minecraft:generic.follow_range",Base:12},{Name:"minecraft:generic.attack_damage",Base:4},{Name:"minecraft:generic.movement_speed",Base:0.4}],CustomName:'[{"text": "ruins hardend zombie"}]',ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:diamond_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}},{id:"minecraft:diamond_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}},{id:"minecraft:diamond_block",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s}]}}]}
execute as @e[tag=RuinsTactMobs] at @s run summon snowball ~ ~3 ~ {Tags:["Summon_Tact","RuinsTactMobs","RuinsZomAllies"],Owner:[],Motion:[0.0,-4.0,0.0]}
execute as @e[tag=RuinsZomAllies] at @s run tag @e[tag=!RuinsZomAllies,type=#mikatanserver:mobs,limit=1,sort=nearest,distance=..10] add EnemyMobChecker
data modify entity @e[type=minecraft:snowball,tag=Summon_Tact,limit=1,sort=nearest] Owner set from entity @e[tag=!RuinsZomAllies,type=#mikatanserver:mobs,limit=1,sort=nearest,distance=..10] UUID
execute as @e[tag=RuinsTactMobs] run tag @s remove RuinsTactMobs

schedule function mikatanserver:item/rod/tact/three/kill_s 1t