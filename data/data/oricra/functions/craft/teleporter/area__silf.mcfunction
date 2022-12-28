#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:147,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text":"mystery forest area","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:エリア","color":"red"}]','[{"text":"必要条件:砂漠での話を聞く,sand symbolの使用"}]']},teleporter:1b,Season:3} 1

#進捗
advancement grant @p only mikatanserver:event/silf/tp