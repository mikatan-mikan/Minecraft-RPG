#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:170,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【高難易度】","color": "red"},{"text":"反逆の新緑","color":"red"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv60以上"}]']},teleporter:1b,Season:3,diff:1} 1

#進捗
advancement grant @p only mikatanserver:tp/dungeon/thirtytwo_diff1