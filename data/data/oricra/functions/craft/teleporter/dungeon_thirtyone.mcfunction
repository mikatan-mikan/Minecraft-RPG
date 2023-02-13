#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:169,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "","color": "red"},{"text":"マグマキューブ大量発生！！","color":"red"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv40以上,volcanoエリアに移動済みである"}]']},teleporter:1b,Season:3} 1

#進捗
advancement grant @p only mikatanserver:tp/dungeon/thirtyone