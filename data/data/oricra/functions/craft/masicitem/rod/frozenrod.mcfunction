#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:17,display:{Name:'[{"text":"frozen rod","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックすると6秒間の間10m以内の目線の先のモブを凍結状態にし、"}]','[{"text":"さらにそのモブから半径10mの敵に対して行動不可を付与する"}]','[{"text":"mana cost:40"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/frozenrod



