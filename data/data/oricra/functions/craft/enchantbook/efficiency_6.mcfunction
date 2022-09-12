#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:efficiency",lvl:6s}]} 1

##ラック参照に置き換える
scoreboard players set @p farming_judge_bool 0
execute as @p run function mikatanserver:main/lvup/luck/farming/
##んで1が返ってきたらヨシ！ってことで1つレベルをあげよう()
execute if score @p farming_judge_bool matches 1 run function oricra:craft/enchantbook/farming/efficiency_6
execute if score @p farming_judge_bool matches 1 run tellraw @p [{"text": "[system]","color": "yellow"},{"text": "幸運の風が吹いている・・・","color": "green"}]
# execute if entity @p[scores={FarmingLuckPT=1},predicate=mikatanserver:chance/0.10] run function oricra:craft/enchantbook/farming/efficiency_5
# execute if entity @p[scores={FarmingLuckPT=2},predicate=mikatanserver:chance/0.20] run function oricra:craft/enchantbook/farming/efficiency_5
# execute if entity @p[scores={FarmingLuckPT=3},predicate=mikatanserver:chance/0.30] run function oricra:craft/enchantbook/farming/efficiency_5
# execute if entity @p[scores={FarmingLuckPT=4},predicate=mikatanserver:chance/0.40] run function oricra:craft/enchantbook/farming/efficiency_5
# execute if entity @p[scores={FarmingLuckPT=5},predicate=mikatanserver:chance/0.50] run function oricra:craft/enchantbook/farming/efficiency_5
# execute if entity @p[scores={FarmingLuckPT=6},predicate=mikatanserver:chance/0.60] run function oricra:craft/enchantbook/farming/efficiency_5
# execute if entity @p[scores={FarmingLuckPT=7},predicate=mikatanserver:chance/0.70] run function oricra:craft/enchantbook/farming/efficiency_5
# execute if entity @p[scores={FarmingLuckPT=8},predicate=mikatanserver:chance/0.80] run function oricra:craft/enchantbook/farming/efficiency_5
# execute if entity @p[scores={FarmingLuckPT=9},predicate=mikatanserver:chance/0.90] run function oricra:craft/enchantbook/farming/efficiency_5
# execute if entity @p[scores={FarmingLuckPT=10},predicate=mikatanserver:chance/1] run function oricra:craft/enchantbook/farming/efficiency_5

scoreboard players set @p FarmingLuckPT 0