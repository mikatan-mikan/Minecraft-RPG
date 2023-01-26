#

#AEC(乱数)を召喚
summon area_effect_cloud ~ ~ ~ {Tags:["MK.r.rand"]}

#uuidを取得
execute store result score @s MK.r.UUID_0 run data get entity @e[distance=..0.01,tag=MK.r.rand,limit=1] UUID[0]

kill @e[tag=MK.r.rand,limit=1]

scoreboard players operation @s MK.r.UUID_0 %= @s MK.r.RandValue

scoreboard players operation @s MK.r.RandValue = @s MK.r.UUID_0