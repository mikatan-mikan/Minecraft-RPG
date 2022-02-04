clear @s small_amethyst_bud{CustomModelData:2} 1
execute as @s[predicate=mikatanserver:chance/0.001,scores={FarmingLuckPT=..9}] run function mikatanserver:main/farming/ptup
execute as @s[predicate=mikatanserver:chance/0.001,scores={FarmingLuckPT=..9},nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:20}}]}] run function mikatanserver:main/farming/ptup
execute as @s[predicate=mikatanserver:chance/0.0015,scores={FarmingLuckPT=..9},nbt={Inventory:[{"Slot":9b,id:"minecraft:magma_cream",tag:{CustomModelData:21}}]}] run function mikatanserver:main/farming/ptup
#scoreboard players add @s FarmingLuckPT 1
scoreboard players remove @s SmallAmethyst 1