#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:130,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text":"desert area","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:エリア","color":"red"}]','[{"text":"必要条件:翠創杖,榴創杖の作成"}]']},Season:3,teleporter:1b} 1

#進捗
advancement grant @p only mikatanserver:event/desert/tp