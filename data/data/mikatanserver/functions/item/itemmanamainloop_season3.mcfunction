execute store result score @s CustomModelData run data get entity @s SelectedItem.tag.CustomModelData

##masic items
#absorption rod:30
execute as @s[scores={mana=30..,CustomModelData=133}] at @s run function mikatanserver:item/rod/absorption/main

##masic and sword items
#sand sword:30
execute as @s[scores={mana=10..,CustomModelData=134}] at @s run function mikatanserver:item/rod/sand/main

##dungeon
#dungeon twentyfive
execute as @s[scores={AllLV=150..,CustomModelData=135}] at @s if predicate mikatanserver:overworld run function mikatanserver:item/teleporter/dungeon/twentyfive/init

##ores world
#masic_wind2
execute as @s[scores={CustomModelData=142}] run function mikatanserver:item/teleporter/masic_wind2

##追加アイテム等入手条件解放処理
execute as @s[scores={CustomModelData=140}] at @s run function mikatanserver:item/add_stone/sand/main