#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:29,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "","color": "red"},{"text":"未来の先に見据えるものは・・・","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv120以上"}]']}} 1

#進捗
advancement grant @p only mikatanserver:tp/dungeon/sevth