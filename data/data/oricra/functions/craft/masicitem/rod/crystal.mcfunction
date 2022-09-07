#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:75,display:{Name:'[{"text":"crystal rod","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックすると8方向に圧縮弾を放つ"}]','[{"text":"mana cost:100"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/crystal


