execute if score @s[predicate=mikatanserver:chance/0.03] acaciacount matches 1.. run give @s chest{BlockEntityTag:{LootTable:"mikatanserver:raredrop/christmas_wood"}}
##氷斧
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b,tag:{CustomModelData:9}}}] run effect give @s haste 2 0 true
##batch
execute if entity @s[nbt={Inventory:[{"Slot":11b,id:"minecraft:magma_cream",tag:{CustomModelData:42}}]}] run effect give @s haste 1 0 true

##100 / 1で100aktdドロップ
execute as @s[predicate = mikatanserver:chance/0.01] run scoreboard players add @s attackDxp 1

scoreboard players set @s oakcount 0
scoreboard players set @s acaciacount 0
scoreboard players set @s junglecount 0
scoreboard players set @s sprucecount 0
scoreboard players set @s birchcount 0
scoreboard players set @s darkoakcount 0
scoreboard players set @s cristoncount 0
scoreboard players set @s warpedcount 0
scoreboard players set @s DirtCount 0
scoreboard players set @s GrassCount 0

scoreboard players add @s attackDxp 2

scoreboard players add @s[scores={AtkBoost_1 = 1..}] attackDxp 1


execute as @s[scores={ForestStoneFlag=1},predicate = mikatanserver:chance/0.005] at @s run function mikatanserver:main/drap_stone/forest_stone
execute as @s[scores={EnderStoneFlag=1},predicate = mikatanserver:chance/0.002] at @s run function mikatanserver:main/drap_stone/ender_stone
execute as @s[scores={GravityStoneFlag=1},predicate = mikatanserver:chance/0.003] at @s run function mikatanserver:main/drap_stone/gravity_stone

execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:4}}]},predicate=mikatanserver:chance/0.05] run scoreboard players add @s attackDxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:5}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s attackDxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:6}}]},predicate=mikatanserver:chance/0.20] run scoreboard players add @s attackDxp 1
execute as @s[nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:25}}]},predicate=mikatanserver:chance/0.50] run scoreboard players add @s attackDxp 1
execute as @s[nbt={Inventory:[{"Slot":100b,tag:{cherry_ar:true}},{"Slot":101b,tag:{cherry_ar:true}},{"Slot":102b,tag:{cherry_ar:true}},{"Slot":103b,tag:{cherry_ar:true}}]},predicate=mikatanserver:chance/0.10] run scoreboard players add @s attackDxp 1
##

##木を掘ったときレア泥
execute as @s[predicate=mikatanserver:chance/0.00002] run function mikatanserver:main/lvup/raredrop/atkdamage

##アーティファクト
scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 1
scoreboard players operation @s TMP = @s ART.atkd
scoreboard players operation @s TMP /= $100 int
scoreboard players operation @s attackDxp += @s TMP
scoreboard players operation @s TMP = @s ART.atkd
scoreboard players operation @s TMP %= $100 int
execute if score @s MK.r.RandValue <= @s TMP run scoreboard players add @s attackDxp 1

##actionbar
function mikatanserver:main/lvup/_view/atkd

execute as @s[scores={attackD-Lv=..299}] run execute if score @s attackDxp >= @s needattackDxp run function mikatanserver:main/lvup/xpcount/atkdamagelvup