#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:159,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "","color": "red"},{"text":"<<白銀の従者と刃>>","color":"red"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン(レベリング)","color":"red"}]','[{"text":"必要条件:AllLv5以上"}]','[{"text":"レベリング有効レベル:Lv80以下"}]']},teleporter:1b} 1

#進捗
advancement grant @p only mikatanserver:tp/dungeon/twentynine