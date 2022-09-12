#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:77,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【超高難易度】","color": "red"},{"text":"<<その先に出した答え>>","color":"green"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv100以上"}]']}} 1

#進捗
advancement grant @p only mikatanserver:tp/dungeon/sixteen