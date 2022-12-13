
#初回報酬
execute unless score @s VolcanoParkItems matches 0.. run give @s lapis_block 64
execute unless score @s VolcanoParkItems matches 0.. run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "ラピスラズリブロック","color": "blue"},{"text": "64x","color": "white"}]
execute unless score @s VolcanoParkItems matches 0.. run scoreboard players set @s VolcanoParkItems 0

execute if score @s TMP matches ..1400 if score @s VolcanoParkItems matches ..0 run give @s deepslate_diamond_ore 64
execute if score @s TMP matches ..1400 if score @s VolcanoParkItems matches ..0 run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "深層ダイヤモンドブロック","color": "aqua"},{"text": "64x","color": "white"}]
execute if score @s TMP matches ..1400 if score @s VolcanoParkItems matches ..0 run scoreboard players set @s VolcanoParkItems 1

execute if score @s TMP matches ..1200 if score @s VolcanoParkItems matches ..1 run give @s carrot_on_a_stick{CustomModelData:105,display:{Name:'[{"text":"テレポート->","color":"aqua"},{"text": "【絶高難易度】","color": "red"},{"text":"<<波動>>","color":"red"}]',Lore:['[{"text":"このアイテムを右クリックでディメンション移動を行います","color":"aqua"}]','[{"text":"移動先:ダンジョン","color":"red"}]','[{"text":"必要条件:AllLv170以上,実績ポイント5000以上"}]']}} 3
execute if score @s TMP matches ..1200 if score @s VolcanoParkItems matches ..1 run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "【絶高難易度】<<波動>>","color": "red"},{"text": "3x","color": "white"}]
execute if score @s TMP matches ..1200 if score @s VolcanoParkItems matches ..1 run scoreboard players set @s VolcanoParkItems 2

execute if score @s TMP matches ..1000 if score @s VolcanoParkItems matches ..2 run give @s netherite_boots{display:{Name:'[{"text":"devil boots","color": "dark_purple"}]',Lore:['[{"text": "足に装備したとき :","color":"white","italic": false}]','[{"text":" 防具 +4","color": "dark_green","italic": false}]','[{"text": " 防具強度 +3","color": "dark_green","italic": false}]']},HideFlags:2,AttributeModifiers:[{AttributeName:"generic.armor",Amount:4.0,Operation:0,Slot:"feet",UUID:[I;915581423,-105458275,-295946392,55618117]},{AttributeName:"generic.armor_toughness",Amount:3,Operation:0,Slot:"feet",UUID:[I;-212372333,307371239,101113870,96671228]}],Unbreakable:1b,devil_ar:1b} 1
execute if score @s TMP matches ..1000 if score @s VolcanoParkItems matches ..2 run tellraw @s [{"text": "[system]","color": "yellow"},{"text": "アイテムを入手しました：","color": "white"},{"text": "devil boots","color": "dark_purple"},{"text": "1x","color": "white"}]
execute if score @s TMP matches ..1000 if score @s VolcanoParkItems matches ..2 run scoreboard players set @s VolcanoParkItems 3