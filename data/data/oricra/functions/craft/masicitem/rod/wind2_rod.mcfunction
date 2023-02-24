#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:177,display:{Name:'[{"text":"hurricane rod","color":"green"}]',Lore:['[{"text":"このアイテムを右クリックすると風を発生させ風の加護を得る"}]','[{"text":"mana cost:25"}]']}} 1

#進捗
advancement grant @p only mikatanserver:event/jungle/windrod2



