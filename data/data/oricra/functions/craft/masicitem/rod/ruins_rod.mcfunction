#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:85,display:{Name:'[{"text":"ruins rod","color":"green"}]',Lore:['[{"text":"このアイテムを右クリックすると前方に魔法を放つ"}]','[{"text":"mana cost:40"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/ruins_rod



