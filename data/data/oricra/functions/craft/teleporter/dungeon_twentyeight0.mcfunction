#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:138,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "","color": "red"},{"text":"夢の精と新たなお告げ","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv40以上"}]']},diff:0,teleporter:1b,Season:3} 1

#進捗
advancement grant @p only mikatanserver:tp/dungeon/twentyeight_diff0