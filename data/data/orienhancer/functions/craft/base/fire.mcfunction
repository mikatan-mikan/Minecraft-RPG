#テンプレート


##素材が0個になるとややこしいので最初に消して付与する
execute store result score $att_num Enhancer.Attribute run data get block ~ ~ ~ Items[4].tag.Enhance_Num
##既に属性があった場合は現在の属性を削除
execute if score $att_num Enhancer.Attribute matches 1.. run data remove block ~ ~ ~ Items[4].tag.display.Lore[-1]
##文字列の結合
data merge storage enhancer:lore {Attribute:'[{"text":"火属性","color":"red"}]'}
data modify storage enhancer:lore Lore set from block ~ ~ ~ Items[4].tag.display.Lore
data modify storage enhancer:lore Lore insert -1 from storage enhancer:lore Attribute
data modify block ~ ~ ~ Items[4].tag.display.Lore set from storage enhancer:lore Lore
##属性の付与
execute store result block ~ ~ ~ Items[4].tag.Enhance_Num int 1 run scoreboard players get $1 int
##データの削除
scoreboard players reset $att_num Enhancer.Attribute
data remove storage enhancer:lore Attribute
data remove storage enhancer:lore Lore

execute store result score @s EnchanterItemCount8 run data get block ~ ~ ~ Items[8].Count
scoreboard players remove @s EnchanterItemCount8 1
execute store result block ~ ~ ~ Items[8].Count short 1 run scoreboard players get @s EnchanterItemCount8
execute if score @s EnchanterItemCount8 matches 0 run item replace block ~ ~ ~ container.8 with minecraft:air

execute store result score @s EnchanterItemCount7 run data get block ~ ~ ~ Items[7].Count
scoreboard players remove @s EnchanterItemCount7 1
execute store result block ~ ~ ~ Items[7].Count short 1 run scoreboard players get @s EnchanterItemCount7
execute if score @s EnchanterItemCount7 matches 0 run item replace block ~ ~ ~ container.7 with minecraft:air

execute store result score @s EnchanterItemCount6 run data get block ~ ~ ~ Items[6].Count
scoreboard players remove @s EnchanterItemCount6 1
execute store result block ~ ~ ~ Items[6].Count short 1 run scoreboard players get @s EnchanterItemCount6
execute if score @s EnchanterItemCount6 matches 0 run item replace block ~ ~ ~ container.6 with minecraft:air

execute store result score @s EnchanterItemCount5 run data get block ~ ~ ~ Items[5].Count
scoreboard players remove @s EnchanterItemCount5 1
execute store result block ~ ~ ~ Items[5].Count short 1 run scoreboard players get @s EnchanterItemCount5
execute if score @s EnchanterItemCount5 matches 0 run item replace block ~ ~ ~ container.5 with minecraft:air

execute store result score @s EnchanterItemCount4 run data get block ~ ~ ~ Items[3].Count
scoreboard players remove @s EnchanterItemCount4 1
execute store result block ~ ~ ~ Items[3].Count short 1 run scoreboard players get @s EnchanterItemCount4
execute if score @s EnchanterItemCount4 matches 0 run item replace block ~ ~ ~ container.3 with minecraft:air

execute store result score @s EnchanterItemCount3 run data get block ~ ~ ~ Items[2].Count
scoreboard players remove @s EnchanterItemCount3 1
execute store result block ~ ~ ~ Items[2].Count short 1 run scoreboard players get @s EnchanterItemCount3
execute if score @s EnchanterItemCount3 matches 0 run item replace block ~ ~ ~ container.2 with minecraft:air

execute store result score @s EnchanterItemCount2 run data get block ~ ~ ~ Items[1].Count
scoreboard players remove @s EnchanterItemCount2 1
execute store result block ~ ~ ~ Items[1].Count short 1 run scoreboard players get @s EnchanterItemCount2
execute if score @s EnchanterItemCount2 matches 0 run item replace block ~ ~ ~ container.1 with minecraft:air

execute store result score @s EnchanterItemCount run data get block ~ ~ ~ Items[0].Count
scoreboard players remove @s EnchanterItemCount 1
execute store result block ~ ~ ~ Items[0].Count short 1 run scoreboard players get @s EnchanterItemCount
execute if score @s EnchanterItemCount matches 0 run item replace block ~ ~ ~ container.0 with minecraft:air


playsound minecraft:block.smithing_table.use master @p

advancement grant @p only mikatanserver:customenhancer/base/fire