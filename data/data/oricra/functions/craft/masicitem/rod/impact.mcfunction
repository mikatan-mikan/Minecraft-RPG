#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:47,display:{Name:'[{"text":"impact rod","color":"gray"}]',Lore:['[{"text":"このアイテムを右クリックすると衝撃波を発生させる(最大2hit)"}]','[{"text":"mana cost:50"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/justguard
