
#初回報酬
execute unless score @s DesertParkItems matches 0.. run give @s lapis_block 64
execute unless score @s DesertParkItems matches 0.. run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "ラピスラズリブロック","color": "blue"},{"text": "64x","color": "white"}]
execute unless score @s DesertParkItems matches 0.. run scoreboard players set @s DesertParkItems 0

execute if score @s TMP matches ..1200 if score @s DesertParkItems matches ..0 run give @s deepslate_diamond_ore 64
execute if score @s TMP matches ..1200 if score @s DesertParkItems matches ..0 run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "深層ダイアモンドブロック","color": "aqua"},{"text": "64x","color": "white"}]
execute if score @s TMP matches ..1200 if score @s DesertParkItems matches ..0 run scoreboard players set @s DesertParkItems 1

execute if score @s TMP matches ..800 if score @s DesertParkItems matches ..1 run give @s carrot_on_a_stick{CustomModelData:123,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【絶高難易度】","color": "red"},{"text":"その存在は未知なる旋律を奏でて","color":"aqua"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv180以上,実績Pt6000以上"}]']},diff:3} 1
execute if score @s TMP matches ..800 if score @s DesertParkItems matches ..1 run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "【絶高難易度】その存在は未知なる旋律を奏でて","color": "red"},{"text": "1x","color": "white"}]
execute if score @s TMP matches ..800 if score @s DesertParkItems matches ..1 run scoreboard players set @s DesertParkItems 2

execute if score @s TMP matches ..600 if score @s DesertParkItems matches ..2 run give @s golden_pickaxe{display:{Name:'[{"text":"sand pickaxe","color": "yellow"}]'},Unbreakable:1b,sand_pickaxe:1b} 1
execute if score @s TMP matches ..600 if score @s DesertParkItems matches ..2 run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "sand pickaxe","color": "yellow"},{"text": "1x","color": "white"}]
execute if score @s TMP matches ..600 if score @s DesertParkItems matches ..2 run scoreboard players set @s DesertParkItems 3
execute if score @s TMP matches ..600 run advancement grant @s only mikatanserver:event/desert/parkour