#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:carrot_on_a_stick{CustomModelData:123,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "","color": "red"},{"text":"その存在は未知なる旋律を奏でて","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv20以上"}]']},diff:0,teleporter:1b} 1

#進捗
advancement grant @p only mikatanserver:tp/dungeon/twentyfour_diff0