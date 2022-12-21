#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:102,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【絶高難易度】","color": "red"},{"text":"<<巫は夕霧を従えて>>","color":"red"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv150以上,実績ポイント3500以上"}]']},teleporter:1b} 1

#進捗
advancement grant @p only mikatanserver:tp/dungeon/twenty