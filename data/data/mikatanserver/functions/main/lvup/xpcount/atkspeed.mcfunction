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
execute as @s[nbt={Inventory:[{"Slot":10b,id:"minecraft:magma_cream",tag:{CustomModelData:38}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s attackSxp 1
execute as @s[nbt={Inventory:[{"Slot":103b,id:"minecraft:player_head",tag:{Ender_helmet:1b}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s attackSxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:player_head",tag:{candy_talisman:true}}]},predicate=mikatanserver:chance/0.05] run give @s player_head{display:{Name:'[{"text":"green candy","color": "green"}]'},SkullOwner:{Id:[I;-1730419398,-1775679819,-1928173840,-407426768],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzY3MDk5NTQ1MGJkYjcxMDlmYTViZmU2ZDEzZmVlZGUzMjRmNDM5NWZjOTAwOTAwMGM4MGVlNTU0ZmFmYTYzNyJ9fX0="}]}}}

##

##Goddess Stone
execute as @s[scores={GoddessStoneFlag=1},predicate = mikatanserver:chance/0.01,predicate=mikatanserver:dungeonmapdim] at @s run function mikatanserver:main/drap_stone/goddess_stone

##敵を倒したときレア泥
execute as @s[predicate=mikatanserver:chance/0.001] run function mikatanserver:main/lvup/raredrop/atkspeed

##アーティファクト
scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 1
scoreboard players operation @s TMP = @s ART.atks
scoreboard players operation @s TMP /= $100 int
scoreboard players operation @s attackSxp += @s TMP
scoreboard players operation @s TMP = @s ART.atks
scoreboard players operation @s TMP %= $100 int
execute if score @s MK.r.RandValue <= @s TMP run scoreboard players add @s attackSxp 1

execute as @s[scores={attackS-Lv=..199}] run execute if score @s attackSxp >= @s needattackSxp run function mikatanserver:main/lvup/xpcount/atkspeedup