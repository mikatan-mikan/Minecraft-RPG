#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:40,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text":"new year 2021 area","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:エリア","color":"red"}]']},teleporter:1b} 1

#進捗
advancement grant @p only mikatanserver:event/newyear/tp