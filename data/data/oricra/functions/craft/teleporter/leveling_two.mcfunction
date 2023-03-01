#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:180,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "","color": "red"},{"text":"<<金色の従者と鎌>>","color":"red"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン(レベリング)","color":"red"}]','[{"text":"必要条件:AllLv80以上,翠創杖を作成済み"}]','[{"text":"レベリング有効レベル:Lv110以下"}]']},teleporter:1b} 1

#進捗
advancement grant @p only mikatanserver:tp/dungeon/thirtyfive