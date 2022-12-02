#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:125,display:{Name:'[{"text":"violin","color":"red"}]',Lore:['[{"text":"このアイテムを右クリックすると自身にバフを付与する"}]','[{"text":"mana cost:65"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/music/violin



