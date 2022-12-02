#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:127,display:{Name:'[{"text":"flute","color":"yellow"}]',Lore:['[{"text":"このアイテムを右クリックすると周囲のプレイヤーのHPを回復する"}]','[{"text":"mana cost:50"}]']}} 1


#進捗
advancement grant @p only mikatanserver:customcrafter/music/flute



