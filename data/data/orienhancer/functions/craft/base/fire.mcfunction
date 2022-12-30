#テンプレート


##属性の付与
execute store result block ~ ~ ~ Items[4].tag.Enhance_Num int 1 run scoreboard players get $1 int
data modify block ~ ~ ~ Items[{Slot:4b}].tag.Enhance_Str set value '[{"text":"火属性","color":"red"}]'

##データ削除&アイテム減算&効果音
function orienhancer:craft/_exec_enhance

##loreの更新
function mikatanserver:main/lore/set_attribute_damage


advancement grant @p only mikatanserver:customenhancer/base/fire