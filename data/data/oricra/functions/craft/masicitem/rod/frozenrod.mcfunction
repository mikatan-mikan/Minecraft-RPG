#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:17,display:{Name:'[{"text":"frozen rod","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックすると2秒間の間10m以内の目線の先のモブを凍結状態にし、"}]','[{"text":"さらにそのモブから半径5mの敵に対して鈍足を付与する"}]','[{"text":"mana cost:60"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/frozenrod



