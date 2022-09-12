#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p


#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:8,display:{Name:'[{"text":"minus teleporter","color":"aqua"}]',Lore:['[{"text":"移動先にブロックがない場合3ブロック下降する"}]','[{"text":"mana cost:5"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/plusminustp