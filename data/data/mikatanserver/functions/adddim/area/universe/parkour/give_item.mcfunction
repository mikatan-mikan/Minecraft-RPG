
#初回報酬
execute unless score @s UniverseParkItems matches 0.. run give @s lapis_block 64
execute unless score @s UniverseParkItems matches 0.. run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "ラピスラズリブロック","color": "blue"},{"text": "64x","color": "white"}]
execute unless score @s UniverseParkItems matches 0.. run scoreboard players set @s UniverseParkItems 0

execute if score @s TMP matches ..3200 if score @s UniverseParkItems matches ..0 run give @s deepslate_diamond_ore 64
execute if score @s TMP matches ..3200 if score @s UniverseParkItems matches ..0 run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "深層ダイヤモンドブロック","color": "aqua"},{"text": "64x","color": "white"}]
execute if score @s TMP matches ..3200 if score @s UniverseParkItems matches ..0 run scoreboard players set @s UniverseParkItems 1

execute if score @s TMP matches ..2800 if score @s UniverseParkItems matches ..1 run give @s carrot_on_a_stick{CustomModelData:102,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【絶高難易度】","color": "red"},{"text":"<<巫は夕霧を従えて>>","color":"red"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv150以上,実績ポイント3500以上"}]']},teleporter:1b} 1
execute if score @s TMP matches ..2800 if score @s UniverseParkItems matches ..1 run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "【絶高難易度】<<巫は夕霧を従えて>>","color": "red"},{"text": "1x","color": "white"}]
execute if score @s TMP matches ..2800 if score @s UniverseParkItems matches ..1 run scoreboard players set @s UniverseParkItems 2

execute if score @s TMP matches ..2400 if score @s UniverseParkItems matches ..2 run give @s carrot_on_a_stick{CustomModelData:136,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【絶高難易度】","color": "red"},{"text":"風の精霊と緑の大地","color":"green"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv200以上"}]']},teleporter:1b,Season:3} 1
execute if score @s TMP matches ..2400 if score @s UniverseParkItems matches ..2 run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "【絶高難易度】<風の精霊と緑の大地>","color": "dark_purple"},{"text": "1x","color": "white"}]
execute if score @s TMP matches ..2400 if score @s UniverseParkItems matches ..2 run scoreboard players set @s UniverseParkItems 3