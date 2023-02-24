scoreboard players set $mana TMP 45
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

tag @s add ScytheBef

summon marker ^3.80423 ^ ^1.23607 {Tags:["PlayerMasic","BlessMarker","Bef"]}
summon marker ^3.23607 ^ ^2.35114 {Tags:["PlayerMasic","BlessMarker","Bef"]}
summon marker ^2.35114 ^ ^3.23607 {Tags:["PlayerMasic","BlessMarker","Bef"]}
summon marker ^1.23607 ^ ^3.80423 {Tags:["PlayerMasic","BlessMarker","Bef"]}
summon marker ^0 ^ ^4 {Tags:["PlayerMasic","BlessMarker","Bef"]}
summon marker ^-1.23607 ^ ^3.80423 {Tags:["PlayerMasic","BlessMarker","Bef"]}
summon marker ^-2.35114 ^ ^3.23607 {Tags:["PlayerMasic","BlessMarker","Bef"]}
summon marker ^-3.23607 ^ ^2.35114 {Tags:["PlayerMasic","BlessMarker","Bef"]}

execute as @e[tag=BlessMarker,tag=PlayerMasic,tag=Bef] store result entity @s Rotation[0] float 0.1 run data get entity @a[limit=1,tag=ScytheBef] Rotation[0] 10

tag @e[tag=BlessMarker,tag=PlayerMasic,tag=Bef] remove Bef
tag @s remove ScytheBef

function mikatanserver:item/rod/undine_scythe/loop