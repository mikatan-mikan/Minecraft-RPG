#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:2,display:{Name:'[{"text":"speed buffer","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックすると13sの間スピード1を付与する"}]','[{"text":"mana cost:10"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/speedbuffer



