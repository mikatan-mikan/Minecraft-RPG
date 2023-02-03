#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:161,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text":"red native place area","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:エリア","color":"red"}]','[{"text":"必要条件:universeでの話を聞く,Reinforcerを使用し、鍛錬Lv4までの実績を解除する"}]']},teleporter:1b,Season:3} 1

#進捗
advancement grant @p only mikatanserver:event/salamander/tp