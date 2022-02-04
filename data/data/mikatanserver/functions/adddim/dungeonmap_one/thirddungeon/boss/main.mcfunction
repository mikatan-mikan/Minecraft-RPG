summon skeleton -294 244 402 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.armor",Base:6},{Name:"minecraft:generic.max_health",Base:300},{Name:"minecraft:generic.attack_damage",Base:15}],Health:300,Tags:["ThirdDunBoss","ThiDunMob"],ArmorItems:[{},{},{},{id:"minecraft:oak_leaves",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:2s}]}}]}
bossbar add thirdboss_bar "Lou"
bossbar set minecraft:thirdboss_bar players @a[tag=DungeonPlay_3]
bossbar set minecraft:thirdboss_bar max 300
bossbar set minecraft:thirdboss_bar color red

execute as @e[tag=ThirdDunBoss] at @s as @p run tag @s add BossBattle3

execute store result bossbar minecraft:thirdboss_bar value run data get entity @e[tag=ThirdDunBoss,limit=1] Health