##文字列の結合
data modify block ~ ~ ~ Items[{Slot:4b}].tag.Enhance_Str set value '[{"text":"嵐属性","color":"green"}]'
execute store result block ~ ~ ~ Items[4].tag.Enhance_Num int 1 run scoreboard players get $102 int

##データ削除&アイテム減算&効果音
function orienhancer:craft/_exec_enhance

##loreの更新
function mikatanserver:main/lore/set_attribute_damage

advancement grant @p only mikatanserver:customenhancer/tier2/wind