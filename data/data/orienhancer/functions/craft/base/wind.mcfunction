##素材が0個になるとややこしいので最初に消して付与する
execute store result score $att_num Enhancer.Attribute run data get block ~ ~ ~ Items[4].tag.Enhance_Num
##既に属性があった場合は現在の属性を削除
execute if score $att_num Enhancer.Attribute matches 1.. run data remove block ~ ~ ~ Items[4].tag.display.Lore[-1]
##文字列の結合
data merge storage enhancer:lore {Attribute:'[{"text":"風属性","color":"green"}]'}
##結合関数
function orienhancer:craft/_bind_lore
##属性の付与
execute store result block ~ ~ ~ Items[4].tag.Enhance_Num int 1 run scoreboard players get $2 int

##データ削除&アイテム減算&効果音
function orienhancer:craft/_exec_enhance


advancement grant @p only mikatanserver:customenhancer/base/wind