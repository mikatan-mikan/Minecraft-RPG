
data modify block ~ ~ ~ Items[{Slot:4b}].tag.Add_Damage_Checker set value 2
data modify block ~ ~ ~ Items[{Slot:4b}].tag.Add_Damage_Str set value '[{"text":"0.2","color":"yellow","italic":false}]'
data modify storage mikatanserver:weapon_lore Damage_Num set value 0.2

function orireinforcer:craft/_damage_set
##データ削除&アイテム減算&効果音
function orireinforcer:craft/_del_item

##loreの更新
function mikatanserver:main/lore/set_attribute_damage

advancement grant @p only mikatanserver:customreinforcer/2