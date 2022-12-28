#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:148,display:{Name:'[{"text":"forest rod","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックするとランダムに風を発生させる"}]','[{"text":"mana cost:40"}]']},Season:3} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/forest


