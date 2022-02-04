#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:44,display:{Name:'[{"text":"megiddo rod","color":"dark_purple"}]',Lore:['[{"text":"このアイテムを右クリックすると追尾する闇属性の魔法を放つ"}]','[{"text":"mana cost:45"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/speedbuffer



