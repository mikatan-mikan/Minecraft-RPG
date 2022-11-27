#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "blue"}]',Lore:['{"text":"エクスペリエンスⅠ","color": "gray","bold": false,"italic": false}','[{"text":" オーバーワールド以外でモブをキルしたときXpPointが3上昇する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1360164473,-1559215876,-1510111850,1395907571],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE4YWYxNGNiNDA0NmMzMjY3OGU5YTk3YmQ3ODQ2MWI5NzUyNGI0MTAyMjMzNWExMmJiYzQ1YmM2OTg1YTViNCJ9fX0="}]}},en_experience:1} 1

##ラック参照に置き換える
scoreboard players set @p farming_judge_bool 0
execute as @p run function mikatanserver:main/lvup/luck/farming/
##んで1が返ってきたらヨシ！ってことで1つレベルをあげよう()
execute if score @p farming_judge_bool matches 1 run function oricra:craft/enchantbook/farming/box/experience_2
execute if score @p farming_judge_bool matches 1 run tellraw @p [{"text": "[system]","color": "yellow"},{"text": "幸運の風が吹いている・・・","color": "green"}]

scoreboard players set @p FarmingLuckPT 0

scoreboard players add @p ench_experiencecraft 1

#実績
advancement grant @p only mikatanserver:customcrafter/ench/experience