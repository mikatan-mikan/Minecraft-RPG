#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:90,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text":"farm area","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:エリア","color":"red"}]','[{"text":"必要条件:実績Pt4000以上"}]']},teleporter:1b} 1

#進捗
advancement grant @p only mikatanserver:event/farm/tp