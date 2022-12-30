#/tellraw @s [{"nbt":"Name","storage":"tmp","interpret":true},{"translate":"%s","with": [{"storage":"tmp","nbt":"Name","interpret":true}]}]
##付与などを始める前に既についているLoreを削除するためにカウントを受け取る
    execute store result score $delete_line TMP run data get block ~ ~ ~ Items[{Slot:4b}].tag.Delete_Lore_Num

##回数分後ろから文字列削除
execute if score $delete_line TMP matches 1.. run function mikatanserver:main/lore/re_del_lore

##enhancer 又は 強化用テーブルの額縁から呼び出し
##文字列のセット
data modify storage mikatanserver:weapon_lore Attribute_Lore set from block ~ ~ ~ Items[{Slot:4b}].tag.Enhance_Str
data modify storage mikatanserver:weapon_lore Damage_Lore set from block ~ ~ ~ Items[{Slot:4b}].tag.Add_Damage_Str
##文字列のセット、武器への効果付与
    #1行目
    execute if data storage mikatanserver:weapon_lore Attribute_Lore unless data storage mikatanserver:weapon_lore Damage_Lore run function mikatanserver:main/lore/attribute_damage/attribute
    execute unless data storage mikatanserver:weapon_lore Attribute_Lore if data storage mikatanserver:weapon_lore Damage_Lore run function mikatanserver:main/lore/attribute_damage/damage
    execute if data storage mikatanserver:weapon_lore Attribute_Lore if data storage mikatanserver:weapon_lore Damage_Lore run function mikatanserver:main/lore/attribute_damage/attribute_damage

##武器自体に次回削除する行数を記憶させる
execute store result block ~ ~ ~ Items[{Slot:4b}].tag.Delete_Lore_Num int 1 run scoreboard players get $delete_line TMP
scoreboard players reset $delete_line TMP
##データ削除
data remove storage mikatanserver:weapon_lore Attribute_Lore
data remove storage mikatanserver:weapon_lore Damage_Lore