#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:74,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text":"nether area","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:エリア","color":"red"}]']}} 1

#進捗
advancement grant @p only mikatanserver:event/nether/tp