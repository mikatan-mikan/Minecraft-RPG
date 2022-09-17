execute as @s in mikatanserver:dungeon run tp @s 190 25 222 -65 0
title @s title [{"text": "とてもとても長い道","color": "green"}]
playsound entity.ender_pearl.throw master @s ~ ~ ~ 2
scoreboard objectives remove DungeonStartCnt12
function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/init
tag @s remove DungeonStart12
tag @a remove TwelvethDLeader
tag @s add DungeonPlay
tag @s add DungeonPlay_12
scoreboard players set $12 dungeon_play_now 1
gamemode adventure @a[tag=DungeonPlay_12]
gamerule keepInventory true

kill @e[type=item,predicate=mikatanserver:dungeonmapdim,distance=..100]

advancement grant @s only mikatanserver:tp/dungeon/twelveth

##今回はボスはフィールド踏破後呼び出しなので必要なのはアマスタ設置
scoreboard objectives add ArmorSpawnTimer12 minecraft.custom:minecraft.play_time
