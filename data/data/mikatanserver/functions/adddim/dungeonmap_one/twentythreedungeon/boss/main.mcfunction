execute in mikatanserver:dungeon run summon vindicator -446.5 230 202.5 {Attributes:[{Name:"minecraft:generic.knockback_resistance",Base:0.5},{Name:"minecraft:generic.armor",Base:12},{Name:"minecraft:generic.max_health",Base:1024},{Name:"minecraft:generic.attack_damage",Base:38},{Name:"minecraft:generic.follow_range",Base:10}],Health:1024,Tags:["TwentythreeDunBoss","TwentythreeDunMob","Non_HPBar","Dungeon_Boss"],Motion:[1.0,5.0,1.0]}
scoreboard objectives remove BossSpawnTimer23
bossbar add twentythreeboss_bar "Comet"
bossbar set minecraft:twentythreeboss_bar players @a[tag=DungeonPlay_23]
bossbar set minecraft:twentythreeboss_bar color blue
## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_23]
scoreboard players operation player TMP *= $512 int
execute store result bossbar twentythreeboss_bar max run scoreboard players get player TMP
execute store result bossbar twentythreeboss_bar value run scoreboard players get player TMP
#execute store result entity @e[tag=FourteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
## スコアでHPを管理する(ダメージを受けたらmaxhp-nowhpをスコアから減算してnowhpをmaxhpにする)
execute store result score $23 BossHP run scoreboard players get player TMP
execute store result score $23_max BossHP run scoreboard players get player TMP

#Bossbattletag もバグる
execute as @e[tag=TwentythreeDunBoss] at @s as @p run tag @s add BossBattle23

scoreboard objectives add TwentythreeCometTimer minecraft.custom:minecraft.play_time
scoreboard objectives add TwentythreeBossSkill minecraft.custom:minecraft.play_time