#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:11,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【高難易度】","color":"red"},{"text":"その先にあるものは・・・","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv35以上"}]']}} 1

#進捗
advancement grant @p only mikatanserver:tp/dungeon/second