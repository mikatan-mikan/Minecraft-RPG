##初期呼び出し
execute in mikatanserver:dungeon run summon armor_stand -772.5 159 -357.5 {Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["NineteenDunBoss","NineteenDunMob"],DisabledSlots:4144959,Pose:{LeftArm:[305f,0f,318f],RightArm:[305f,0f,42f]},ArmorItems:[{Count:1b,id:"minecraft:leather_boots",tag:{display:{color:12458239},Enchantments:[{id:"minecraft:protection",lvl:4}],Unbreakable:1b}},{Count:1b,id:"minecraft:leather_leggings",tag:{display:{color:12458239},Enchantments:[{id:"minecraft:protection",lvl:4}],Unbreakable:1b}},{Count:1b,id:"minecraft:leather_chestplate",tag:{display:{color:12458239},Enchantments:[{id:"minecraft:protection",lvl:4}],Unbreakable:1b}},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1741307386,-304331284,-1350857045,789912679],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWYxZmRlYjE0YThiN2E5NWU2MWYwODBhYWY5MWQyZDYyMWI2MjFjM2JlMzhlMjJlZWEwZjY4ZWQ4ZjJiMTMxMiJ9fX0="}]}}}}],HandItems:[{},{Count:1b,id:"minecraft:iron_sword"}],Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024}]}

give @a[tag = DungeonPlay_19] carrot_on_a_stick{CustomModelData:54,display:{Name:'[{"text": "真・投剣","color": "dark_purple"}]',Lore:['[{"text": "投剣が強化されたもの"}]','[{"text": "\\"あるもの\\"に触れられるようになったが、\\"あるもの\\"の近くでしか役割を果たさず、その他に対しての性能を失った","italic": false}]']}}

bossbar add nineteenboss_bar "紫煙の貌"
bossbar set minecraft:nineteenboss_bar players @a[tag=DungeonPlay_19]
bossbar set minecraft:nineteenboss_bar color purple

##人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_19]
scoreboard players operation player TMP *= $400 int
execute store result bossbar nineteenboss_bar max run scoreboard players get player TMP
execute store result bossbar nineteenboss_bar value run scoreboard players get player TMP
scoreboard players reset player TMP

scoreboard players reset @a Dun_ROD

#Bossbattletag もバグる
execute as @e[tag=NineteenDunBoss] at @s as @a[tag=DungeonPlay_19] run tag @s add BossBattle19

execute as @a[tag=BossBattle19] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

scoreboard objectives remove BossSpawnTimer19

scoreboard objectives add NineteenBossSkill minecraft.custom:minecraft.play_time
scoreboard objectives add NineteenBossSkill2 minecraft.custom:minecraft.play_time
scoreboard objectives add NineteenBossSkill3 minecraft.custom:minecraft.play_time
scoreboard objectives add NineteenBossSkill4 minecraft.custom:minecraft.play_time