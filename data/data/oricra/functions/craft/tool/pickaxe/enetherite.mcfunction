#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:netherite_pickaxe{Enchantments:[{id:"unbreaking",lvl:4}]} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/enetherite