#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:sharpness",lvl:7s}]} 1

##ラック参照に置き換える
scoreboard players set @p farming_judge_bool 0
execute as @p run function mikatanserver:main/lvup/luck/farming/
##んで1が返ってきたらヨシ！ってことで1つレベルをあげよう()
execute if score @p farming_judge_bool matches 1 run function oricra:craft/enchantbook/farming/sharpness_7
execute if score @p farming_judge_bool matches 1 run tellraw @p [{"text": "[system]","color": "yellow"},{"text": "幸運の風が吹いている・・・","color": "green"}]

scoreboard players set @p FarmingLuckPT 0