
#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "yellow"}]',Lore:['{"text":"純真の思いⅠ","color": "gray","bold": false,"italic": false}','[{"text":" manaを70消費し、範囲10mの味方に純真の加護を与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1331336341,1100038867,-1743693146,-275107896],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGY1ZjA4OGFiYmVmYzI0NGUzNTkyNGM4MDAyM2MyNTA1NWFmMTAyNTc2NTZiYWM0ZTg0ZTc0ODU1ZWMxMmYyYiJ9fX0="}]}},inocent:1} 1


#farming lack
execute if entity @p[scores={FarmingLuckPT=1},predicate=mikatanserver:chance/0.10] run function oricra:craft/enchantbook/farming/box/inocent_2
execute if entity @p[scores={FarmingLuckPT=2},predicate=mikatanserver:chance/0.20] run function oricra:craft/enchantbook/farming/box/inocent_2
execute if entity @p[scores={FarmingLuckPT=3},predicate=mikatanserver:chance/0.30] run function oricra:craft/enchantbook/farming/box/inocent_2
execute if entity @p[scores={FarmingLuckPT=4},predicate=mikatanserver:chance/0.40] run function oricra:craft/enchantbook/farming/box/inocent_2
execute if entity @p[scores={FarmingLuckPT=5},predicate=mikatanserver:chance/0.50] run function oricra:craft/enchantbook/farming/box/inocent_2
execute if entity @p[scores={FarmingLuckPT=6},predicate=mikatanserver:chance/0.60] run function oricra:craft/enchantbook/farming/box/inocent_2
execute if entity @p[scores={FarmingLuckPT=7},predicate=mikatanserver:chance/0.70] run function oricra:craft/enchantbook/farming/box/inocent_2
execute if entity @p[scores={FarmingLuckPT=8},predicate=mikatanserver:chance/0.80] run function oricra:craft/enchantbook/farming/box/inocent_2
execute if entity @p[scores={FarmingLuckPT=9},predicate=mikatanserver:chance/0.90] run function oricra:craft/enchantbook/farming/box/inocent_2
execute if entity @p[scores={FarmingLuckPT=10},predicate=mikatanserver:chance/1] run function oricra:craft/enchantbook/farming/box/inocent_2

scoreboard players set @p FarmingLuckPT 0

advancement grant @p only mikatanserver:customcrafter/inocent