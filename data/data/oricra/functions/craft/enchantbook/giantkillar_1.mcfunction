#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "gold"}]',Lore:['{"text":"ジャイアントキラーⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 最大hpが自身より多い敵に対してダメージが1上昇する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-716421548,2131969772,-1327206943,1165692828],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBkODQxNGNmY2JiZGZkYjM4M2E4YjNmMzFkMjg5MTQ2ZjM4NjcyZDU3NGUxNTQyOTZlMTEwYWFkOWUxMTQyOCJ9fX0="}]}},giantkillar:1} 1

##ラック参照に置き換える
scoreboard players set @p farming_judge_bool 0
execute as @p run function mikatanserver:main/lvup/luck/farming/
##んで1が返ってきたらヨシ！ってことで1つレベルをあげよう()
execute if score @p farming_judge_bool matches 1 run function oricra:craft/enchantbook/farming/box/giantkillar_2
execute if score @p farming_judge_bool matches 1 run tellraw @p [{"text": "[system]","color": "yellow"},{"text": "幸運の風が吹いている・・・","color": "green"}]

# execute if entity @p[scores={FarmingLuckPT=1},predicate=mikatanserver:chance/0.01] run function oricra:craft/enchantbook/farming/box/giantkillar_2
# execute if entity @p[scores={FarmingLuckPT=2},predicate=mikatanserver:chance/0.02] run function oricra:craft/enchantbook/farming/box/giantkillar_2
# execute if entity @p[scores={FarmingLuckPT=3},predicate=mikatanserver:chance/0.03] run function oricra:craft/enchantbook/farming/box/giantkillar_2
# execute if entity @p[scores={FarmingLuckPT=4},predicate=mikatanserver:chance/0.04] run function oricra:craft/enchantbook/farming/box/giantkillar_2
# execute if entity @p[scores={FarmingLuckPT=5},predicate=mikatanserver:chance/0.05] run function oricra:craft/enchantbook/farming/box/giantkillar_2
# execute if entity @p[scores={FarmingLuckPT=6},predicate=mikatanserver:chance/0.06] run function oricra:craft/enchantbook/farming/box/giantkillar_2
# execute if entity @p[scores={FarmingLuckPT=7},predicate=mikatanserver:chance/0.07] run function oricra:craft/enchantbook/farming/box/giantkillar_2
# execute if entity @p[scores={FarmingLuckPT=8},predicate=mikatanserver:chance/0.08] run function oricra:craft/enchantbook/farming/box/giantkillar_2
# execute if entity @p[scores={FarmingLuckPT=9},predicate=mikatanserver:chance/0.09] run function oricra:craft/enchantbook/farming/box/giantkillar_2
# execute if entity @p[scores={FarmingLuckPT=10},predicate=mikatanserver:chance/0.10] run function oricra:craft/enchantbook/farming/box/giantkillar_2

scoreboard players set @p FarmingLuckPT 0

scoreboard players add @p giantkillarcount 1

#実績
advancement grant @p only mikatanserver:customcrafter/ench/giantkillar