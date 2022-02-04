#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:34,display:{Name:'[{"text":"healing rod","color":"red"}]',Lore:['[{"text":"このアイテムを右クリックすると自身のhpを4回復する"}]','[{"text":"mana cost:30"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/healingrod



