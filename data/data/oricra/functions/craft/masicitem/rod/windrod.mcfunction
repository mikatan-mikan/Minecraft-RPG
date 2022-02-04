#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:12,display:{Name:'[{"text":"wind rod","color":"green"}]',Lore:['[{"text":"このアイテムを右クリックすると視線の方向に風を起こす"}]','[{"text":"mana cost:35"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/windrod



