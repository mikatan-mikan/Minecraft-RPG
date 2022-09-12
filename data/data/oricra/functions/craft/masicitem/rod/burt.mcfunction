#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:39,display:{Name:'[{"text":"bata rod","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックすると自身の前方に氷の方角魔法を放つ"}]','[{"text":"mana cost:35"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/aqua



