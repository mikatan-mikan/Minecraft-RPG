#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:book{Enchantments:[{id:"minecraft:aqua_affinity",lvl:100s}],HideFlags:1,display:{Name:'[{"text": "enhancer book","color": "gold"}]'}} 1
