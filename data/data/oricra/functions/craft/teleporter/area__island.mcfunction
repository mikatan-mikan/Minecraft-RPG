#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:80,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text":"island area","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:エリア","color":"red"}]','[{"text":"必要条件:実績Pt2300以上"}]']}} 1

#進捗
advancement grant @p only mikatanserver:event/island/tp