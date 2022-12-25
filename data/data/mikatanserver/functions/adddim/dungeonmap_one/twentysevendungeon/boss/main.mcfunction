summon spider -121 72 376 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.armor",Base:10},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:20}],Health:1024,Tags:["TwentysevenDunBoss","TwentysevenDunMob","Dungeon_Boss"],CustomName:'[{"text": "Spider Satellite","color": "red"}]'}
bossbar add twentysevenboss_bar "Spider Satellite"
bossbar set minecraft:twentysevenboss_bar players @a[tag=DungeonPlay_27]
bossbar set minecraft:twentysevenboss_bar max 1024
bossbar set minecraft:twentysevenboss_bar color red

execute as @e[tag=TwentysevenondDunBoss] at @s as @p run tag @s add BossBattle27

execute store result bossbar minecraft:twentysevenboss_bar value run data get entity @e[tag=TwentysevenondDunBoss,limit=1] Health