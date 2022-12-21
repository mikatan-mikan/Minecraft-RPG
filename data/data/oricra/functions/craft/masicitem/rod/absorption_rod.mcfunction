#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:133,display:{Name:'[{"text":"absorption rod","color":"yellow"}]',Lore:['[{"text":"このアイテムを右クリックすると衝撃吸収1を付与する"}]','[{"text":"mana cost:30"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/absorptionrod



