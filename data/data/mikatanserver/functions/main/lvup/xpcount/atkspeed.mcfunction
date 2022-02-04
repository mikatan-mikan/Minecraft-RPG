scoreboard players set @s mobcount 0
##レア泥カウント判定＆リセ
#zombie
execute as @s[predicate=mikatanserver:chance/0.00001,scores={zombiecount=1..}] run function mikatanserver:main/lvup/raredrop/mob/zombie
scoreboard players set @s zombiecount 0
execute as @s[predicate=mikatanserver:chance/0.00001,scores={creepercount=1..}] run function mikatanserver:main/lvup/raredrop/mob/creeper
scoreboard players set @s creepercount 0

scoreboard players add @s attackSxp 1


execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:16}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s attackSxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:17}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s attackSxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:18}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s attackSxp 1

##

##敵を倒したときレア泥
execute as @s[predicate=mikatanserver:chance/0.001] run function mikatanserver:main/lvup/raredrop/atkspeed

execute as @s[scores={attackS-Lv=..199}] run execute if score @s attackSxp >= @s needattackSxp run function mikatanserver:main/lvup/xpcount/atkspeedup