
data modify block ~ ~ ~ Items[{Slot:4b}].tag.Add_Damage_Checker set value 1
data modify block ~ ~ ~ Items[{Slot:4b}].tag.Add_Damage_Str set value '[{"text":"0.1","color":"yellow","italic":false}]'
data modify storage mikatanserver:weapon_lore Damage_Num set value 0.1

function orireinforcer:craft/_damage_set
##データ削除&アイテム減算&効果音
function orireinforcer:craft/_del_item

##loreの更新
function mikatanserver:main/lore/set_lore_main

advancement grant @p only mikatanserver:customreinforcer/1