#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:126,display:{Name:'[{"text":"saxophone","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックすると数秒後にその周囲にバフを与える"}]','[{"text":"mana cost:50"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/music/saxophone



