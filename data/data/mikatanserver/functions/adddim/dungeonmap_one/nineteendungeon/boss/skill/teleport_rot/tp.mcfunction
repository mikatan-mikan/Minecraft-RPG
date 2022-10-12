##x座標 -792 <-> -752
scoreboard players set @s MK.r.RandValue 38
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 792
execute store result entity @s Pos[0] double 1 run scoreboard players get @s MK.r.RandValue
# tellraw @a [{"text":"x:"},{"score":{"name":"@s","objective":"MK.r.RandValue"}}]
##y座標 159
scoreboard players set @s MK.r.RandValue 159
execute store result entity @s Pos[1] double 1 run scoreboard players get @s MK.r.RandValue
# tellraw @a [{"text":"y:"},{"score":{"name":"@s","objective":"MK.r.RandValue"}}]
##z座標 -337 <-> -377
scoreboard players set @s MK.r.RandValue 38
function mikatanlib:rand/rand_exe
scoreboard players remove @s MK.r.RandValue 377
execute store result entity @s Pos[2] double 1 run scoreboard players get @s MK.r.RandValue
# tellraw @a [{"text":"z:"},{"score":{"name":"@s","objective":"MK.r.RandValue"}}]


scoreboard players set @s MK.r.RandValue 360
function mikatanlib:rand/rand_exe
scoreboard players operation @s ResultRot_0 = @s MK.r.RandValue


execute as @a[tag=DungeonPlay_19] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1