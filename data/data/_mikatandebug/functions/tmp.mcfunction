##人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_13]
scoreboard players operation player TMP *= $200 int
execute store result bossbar twelvethboss_bar max run scoreboard players get player TMP
execute store result bossbar twelvethboss_bar value run scoreboard players get player TMP
execute store result entity @e[tag=ThirteenDunBoss,limit=1] Health int 1 run scoreboard players get player TMP
data merge storage mikatanserver:13_boss_hpmax {Name:"minecraft:generic.max_health",Base:1024}
execute store result storage mikatanserver:13_boss_hpmax Base int 1 run scoreboard players get player TMP
data modify entity @e[tag=ThirteenDunBoss,limit=1] Attributes merge from storage mikatanserver:13_boss_hpmax