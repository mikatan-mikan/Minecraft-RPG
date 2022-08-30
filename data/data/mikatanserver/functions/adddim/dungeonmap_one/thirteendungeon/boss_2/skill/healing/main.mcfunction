## 人数を取得 & 値の決定
execute store result score player TMP if entity @a[tag = DungeonPlay_13]
scoreboard players operation player TMP *= $16 int
execute store result score @s MobNowHP run data get entity @s Health
scoreboard players operation @s MobNowHP += player TMP
execute store result entity @s Health int 1 run scoreboard players get @s MobNowHP
## ボート等の削除
execute if score @s MobNowHP matches ..600 run kill @e[distance=..50,type=boat]
execute if score @s MobNowHP matches ..200 run effect give @a[tag=BossBattle13] instant_health 1 2
## 固定処理
particle heart ~ ~ ~ 1 1 1 1 100
playsound entity.experience_orb.pickup master @a[tag=DungeonPlay_13,distance=..30] ~ ~ ~ 2 1
tellraw @a[tag=DungeonPlay_13] [{"text": "神子>>","color": "white"},{"text": "ヒーリング！！","color": "green"}]


## 数ティック遅延のため
scoreboard players set $floor 13_TowerFloor 11