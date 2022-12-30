scoreboard players set @s MK.r.RandValue 9
function mikatanlib:rand/rand_exe
##地形を白紙に戻す
fill 3033 30 2033 3063 60 2063 air
##乱数に応じて地形を変更
execute if score @s MK.r.RandValue matches 0 run clone 3099 30 2066 3129 60 2096 3033 30 2033
execute if score @s MK.r.RandValue matches 1 run clone 3033 30 2066 3063 60 2096 3033 30 2033
execute if score @s MK.r.RandValue matches 2 run clone 3000 30 2066 3030 60 2096 3033 30 2033
execute if score @s MK.r.RandValue matches 3 run clone 3066 30 2066 3096 60 2096 3033 30 2033
execute if score @s MK.r.RandValue matches 4 run clone 3000 30 2033 3030 60 2063 3033 30 2033
execute if score @s MK.r.RandValue matches 5 run clone 3066 30 2033 3096 60 2063 3033 30 2033
execute if score @s MK.r.RandValue matches 6 run clone 3000 30 2000 3030 60 2030 3033 30 2033
execute if score @s MK.r.RandValue matches 7 run clone 3033 30 2000 3063 60 2030 3033 30 2033
execute if score @s MK.r.RandValue matches 8 run clone 3066 30 2000 3096 60 2030 3033 30 2033

execute as @a[tag=BossBattle26] at @s run playsound item.totem.use master @s ~ ~ ~ 0.6 1.9


tellraw @a[tag=DungeonPlay_26] [{"text": "大精霊 シルフ>>","color": "#abdbb3"},{"text": "暴風","color": "#5aad6e"}]