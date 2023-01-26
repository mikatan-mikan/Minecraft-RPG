#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:157,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text":"universe area","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:エリア","color":"red"}]','[{"text":"必要条件:mystery forestでの話を聞く,黄創杖の作成"}]']},teleporter:1b,Season:3} 1

#進捗
advancement grant @p only mikatanserver:event/universe/tp