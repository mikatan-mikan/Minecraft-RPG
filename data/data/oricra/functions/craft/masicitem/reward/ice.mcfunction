#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:41,display:{Name:'[{"text":"effort symbol[ice]","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックすると自身のネームカラーを変更し、称号:[氷結の展開者]を得る"}]','[{"text":"mana cost:20"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/reward/ice



