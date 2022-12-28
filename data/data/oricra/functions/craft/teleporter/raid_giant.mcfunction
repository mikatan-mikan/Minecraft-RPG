#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:144,display:{Name:'[{"text":"テレポート->","color": "aqua"},{"text":"レイド：オートマトナー","color":"green"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:レイド","color":"red"}]','[{"text":"必要条件:無し"}]']},teleporter:1b,Season:3} 1

#進捗
advancement grant @p only mikatanserver:tp/raid/giant/part