##初期呼び出し
execute in mikatanserver:dungeon run summon armor_stand 213.5 64 89.0 {Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["TwelvethDunBoss","TwelveDunMob"],DisabledSlots:4144959,Pose:{LeftArm:[305f,0f,318f],RightArm:[305f,0f,42f]},ArmorItems:[{Count:1b,id:"minecraft:leather_boots",tag:{display:{color:12458239},Enchantments:[{id:"minecraft:protection",lvl:4}],Unbreakable:1b}},{Count:1b,id:"minecraft:leather_leggings",tag:{display:{color:12458239},Enchantments:[{id:"minecraft:protection",lvl:4}],Unbreakable:1b}},{Count:1b,id:"minecraft:leather_chestplate",tag:{display:{color:12458239},Enchantments:[{id:"minecraft:protection",lvl:4}],Unbreakable:1b}},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;1741307386,-304331284,-1350857045,789912679],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWYxZmRlYjE0YThiN2E5NWU2MWYwODBhYWY5MWQyZDYyMWI2MjFjM2JlMzhlMjJlZWEwZjY4ZWQ4ZjJiMTMxMiJ9fX0="}]}}}}],HandItems:[{},{Count:1b,id:"minecraft:iron_sword"}],Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024}]}

execute as @e[tag=TwelvethDunBoss] at @s run tp @s ~ ~ ~ 90 0

give @a[tag = DungeonPlay_12] carrot_on_a_stick{CustomModelData:54,display:{Name:'[{"text": "真・投剣","color": "dark_purple"}]',Lore:['[{"text": "投剣が強化されたもの"}]','[{"text": "\\"あるもの\\"に触れられるようになったが、\\"あるもの\\"の近くでしか役割を果たさず、その他に対しての性能を失った","italic": false}]']}}

# execute as @e[type=armor_stand,tag=TwelvethDunBoss] at @s run summon panda ~ ~ ~ {Tags:["TwelveDunMob","TwelveDunBossHit1"],Silent:1b,NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14,ShowParticles:0b,Duration:1000000000}]}
# execute as @e[type=armor_stand,tag=TwelvethDunBoss] at @s run summon panda ~ ~0.8 ~ {Tags:["TwelveDunMob","TwelveDunBossHit2"],Silent:1b,NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14,ShowParticles:0b,Duration:1000000000}]}

bossbar add twelvethboss_bar "紫煙の貌"
bossbar set minecraft:twelvethboss_bar players @a[tag=DungeonPlay_12]
bossbar set minecraft:twelvethboss_bar color purple

##人数を取得 & 値の決定
execute store result score player 12DunPlayers if entity @a[tag = DungeonPlay_12]
scoreboard players operation player 12DunPlayers *= $200 12DunPlayers
execute store result bossbar twelvethboss_bar max run scoreboard players get player 12DunPlayers
execute store result bossbar twelvethboss_bar value run scoreboard players get player 12DunPlayers

#Bossbattletag もバグる
execute as @e[tag=TwelvethDunBoss] at @s as @a[tag=DungeonPlay_12] run tag @s add BossBattle12

execute as @a[tag=DungeonPlay_12] run clear @s #boats

execute as @a[tag=BossBattle12] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1


scoreboard objectives add TwelveBossSkill minecraft.custom:minecraft.play_time
scoreboard objectives add TwelveBossSkill2 minecraft.custom:minecraft.play_time
scoreboard objectives add TwelveBossSkill3 minecraft.custom:minecraft.play_time

