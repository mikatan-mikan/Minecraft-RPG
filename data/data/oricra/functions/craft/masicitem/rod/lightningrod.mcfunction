#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:9,display:{Name:'[{"text":"lightning rod","color":"yellow"}]',Lore:['[{"text":"このアイテムを右クリックすると10m以内の目線の先のモブに雷を落とす"}]','[{"text":"mana cost:25"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/lightningrod



