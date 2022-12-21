##初期呼び出し
execute in mikatanserver:dungeon run summon armor_stand 125.5 61 1100.5 {Invulnerable:1b,NoBasePlate:1b,ShowArms:1b,Tags:["SixteenDunBoss","SixteenDunMob","Non_HPBar","Dungeon_Boss"],DisabledSlots:4144959,Pose:{LeftArm:[305f,0f,318f],RightArm:[305f,0f,42f]},ArmorItems:[{Count:1b,id:"minecraft:leather_boots",tag:{display:{color:15000804},Enchantments:[{id:"minecraft:protection",lvl:4}],Unbreakable:1b}},{Count:1b,id:"minecraft:leather_leggings",tag:{display:{color:15000804},Enchantments:[{id:"minecraft:protection",lvl:4}],Unbreakable:1b}},{Count:1b,id:"minecraft:leather_chestplate",tag:{display:{color:15000804},Enchantments:[{id:"minecraft:protection",lvl:4}],Unbreakable:1b}},{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;880142347,936595364,-1437289694,1597892970],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTRiNTlkMTExZGUwMGJkMTA0OGUzYmQ2ZjhhYmVlNmRmYzZkOWQ2NDg4MmU5ZmY3MzQ5NDZkNmJkMDQ3ZTMwZiJ9fX0="}]}}}}],HandItems:[{},{Count:1b,id:"minecraft:diamond_sword"}],Health:1024,Attributes:[{Name:"minecraft:generic.max_health",Base:1024}]}

# /give @p minecraft:player_head{display:{Name:"{\"text\":\"Demon\"}"},SkullOwner:{Id:[I;880142347,936595364,-1437289694,1597892970],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTRiNTlkMTExZGUwMGJkMTA0OGUzYmQ2ZjhhYmVlNmRmYzZkOWQ2NDg4MmU5ZmY3MzQ5NDZkNmJkMDQ3ZTMwZiJ9fX0="}]}}} 1

give @a[tag = DungeonPlay_16] carrot_on_a_stick{CustomModelData:54,display:{Name:'[{"text": "真・投剣","color": "dark_purple"}]',Lore:['[{"text": "投剣が強化されたもの"}]','[{"text": "\\"あるもの\\"に触れられるようになったが、\\"あるもの\\"の近くでしか役割を果たさず、その他に対しての性能を失った","italic": false}]']}}

bossbar add sixteenboss_bar "希鬼"
bossbar set minecraft:sixteenboss_bar players @a[tag=DungeonPlay_16]
bossbar set minecraft:sixteenboss_bar color purple

##人数を取得 & 値の決定
execute store result score player 16DunPlayers if entity @a[tag = DungeonPlay_16]
scoreboard players operation player 16DunPlayers *= $1100 int
execute store result bossbar sixteenboss_bar max run scoreboard players get player 16DunPlayers
execute store result bossbar sixteenboss_bar value run scoreboard players get player 16DunPlayers

#Bossbattletag もバグる

execute as @a[tag=DungeonPlay_16] run clear @s #boats

tag @a[tag=DungeonPlay_16] add BossBattle16

execute as @a[tag=BossBattle16] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 1 1

scoreboard objectives remove BossSpawnTimer16

scoreboard objectives add SixteenBossSkill minecraft.custom:minecraft.play_time
scoreboard objectives add SixteenBossSkill2 minecraft.custom:minecraft.play_time
scoreboard objectives add SixteenBossSkill3 minecraft.custom:minecraft.play_time
scoreboard objectives add SixteenBossSkill4 minecraft.custom:minecraft.play_time
scoreboard objectives add SixteenBossSkill5 minecraft.custom:minecraft.play_time