scoreboard players remove @s tradecount 1

scoreboard players add @s hpxp 1

execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:7}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:8}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s hpxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:9}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s hpxp 1

##

##取引したときレア泥
execute as @s[predicate=mikatanserver:chance/0.001] run function mikatanserver:main/lvup/raredrop/health

##アーティファクト
scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 1
scoreboard players operation @s TMP = @s ART.hp
scoreboard players operation @s TMP /= $100 int
scoreboard players operation @s hpxp += @s TMP
scoreboard players operation @s TMP = @s ART.hp
scoreboard players operation @s TMP %= $100 int
execute if score @s MK.r.RandValue <= @s TMP run scoreboard players add @s hpxp 1

##actionbar
function mikatanserver:main/lvup/_view/hp

execute as @s[scores={hp-Lv=..299}] run execute if score @s hpxp >= @s needhpxp run function mikatanserver:main/lvup/xpcount/healthlvup