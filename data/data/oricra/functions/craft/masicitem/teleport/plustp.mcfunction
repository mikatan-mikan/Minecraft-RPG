#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:7,display:{Name:'[{"text":"plus teleporter","color":"yellow"}]',Lore:['[{"text":"移動先にブロックがない場合3ブロック上昇する"}]','[{"text":"mana cost:5"}]']}} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/plusminustp