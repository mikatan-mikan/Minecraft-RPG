#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:redstone{display:{Name:'[{"text":"enchanted redstone"}]'},HideFlags:1,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}]} 1