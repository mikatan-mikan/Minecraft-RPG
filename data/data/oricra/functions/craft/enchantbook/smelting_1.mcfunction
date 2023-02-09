#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"スメルティングⅠ","color": "gray","bold": false,"italic": false}','[{"text":" SpdXp対象ブロック採掘時に20%でブロックを焼いた状態で排出する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1387993770,402933672,-1114672654,1138218237],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhZTZmZTE4ZjI3YmJiM2I2MmEwM2U3YzBkYTJhM2Q4OGQzMGI2NTUwOThmZWIzNzdhMzJmNjcyZTMzYjdmNCJ9fX0="}]}},SmeltingLv:1} 1

##ラック参照に置き換える
scoreboard players set @p farming_judge_bool 0
execute as @p run function mikatanserver:main/lvup/luck/farming/
##んで1が返ってきたらヨシ！ってことで1つレベルをあげよう()
execute if score @p farming_judge_bool matches 1 run function oricra:craft/enchantbook/farming/box/smelting_2
execute if score @p farming_judge_bool matches 1 run tellraw @p [{"text": "[system]","color": "yellow"},{"text": "幸運の風が吹いている・・・","color": "green"}]

scoreboard players set @p FarmingLuckPT 0

scoreboard players add @p ench_smeltingcraft 1

#実績
advancement grant @p only mikatanserver:customcrafter/ench/smelting