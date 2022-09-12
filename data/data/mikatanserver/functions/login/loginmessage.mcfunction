scoreboard players set @s LogCheck_Logger 0
scoreboard players set @s LogCheck_Timer 0
execute if score @s attackD-Lv matches ..100 run function mikatanserver:main/lvup/atkdamage/lv100_lv0/func
execute if score @s attackS-Lv matches ..100 run function mikatanserver:main/lvup/atkspeed/lv100_lv0/func
execute if score @s luck-Lv matches ..100 run function mikatanserver:main/lvup/luck/lv100_lv0/func
execute if score @s hp-Lv matches ..100 run function mikatanserver:main/lvup/hp/lv100_lv0/func
execute if score @s speed-Lv matches ..100 run function mikatanserver:main/lvup/speed/lv100_lv0/func
execute if score @s attackD-Lv matches 100..200 run function mikatanserver:main/lvup/atkdamage/lv200_lv101/func
execute if score @s attackS-Lv matches 100..200 run function mikatanserver:main/lvup/atkspeed/lv200_lv101/func
execute if score @s luck-Lv matches 100..200 run function mikatanserver:main/lvup/luck/lv200_lv101/func
execute if score @s hp-Lv matches 100..200 run function mikatanserver:main/lvup/hp/lv200_lv101/func
execute if score @s speed-Lv matches 100..200 run function mikatanserver:main/lvup/speed/lv200_lv101/func
playsound entity.player.levelup master @s ~ ~ ~ 2 1
tellraw @s [{"text": "welcome to "},{"text": "mikatan server","color": "gold"}]
tellraw @s [{"text": ">>","color": "aqua"},{"text": "レベルについて","color": "green","hoverEvent": {"action": "show_text","contents": [{"text": "Hp Xp","color": "light_purple"},{"text": ":村人との交易で得ることができ、25Lvあたり1上昇します\n","color": "white"},{"text": "AtkD Xp","color": "red"},{"text": "木こりによってXpを上昇させることができ、1Lvあたり2%上昇します\n","color": "white"},{"text": "AtkS Xp","color": "gold"},{"text": ":敵との戦闘によりXpを得られ、1Lvあたり0.1%上昇します\n","color": "white"},{"text": "Luck Xp","color": "green"},{"text": ":釣りと作物の回収によりXpが得られ、1Lvあたりluckが0.3%上昇、farmingluckが0.1%ずつ上昇\n","color": "white"},{"text": "Speed Xp","color": "aqua"},{"text": ":基本的な石の採掘によってXpを得ることができ、1Lvあたり0.3%上昇します\n","color": "white"},{"text": "Mana Xp","color": "blue"},{"text": ":エンチャントにより上昇し1Lvあたり1上昇します","color": "white"}]}},{"text": "<<","color": "aqua"}]
tellraw @s [{"text": ">>","color": "aqua"},{"text": "クレジット","color": "red","hoverEvent": {"action": "show_text","contents": [{"text": "================================================================================\n\n","color": "yellow"},{"text": "制作班：\n","color": "white"},{"text": "--mitsuki group\n"},{"text": "    mikatan\n          [bot L 全般]\n","color": "gold"},{"text": "    来夢\n          [all L テクスチャ]\n","color": "green"},{"text": "    茶髪の人。\n          [event m ダンジョン進行]\n","color": "yellow"},{"text": "    tyatyatyo\n          [bot m 物理関連アルゴリズム]\n","color": "gold"},{"text": "    粋寧\n          [sys L コマンド]\n","color": "red"},{"text": "    (\"^^\")\n          [game m ネーミング・バランス]\n\n","color": "blue"},{"text": "--外部から\n"},{"text": "    睡眠欲\n          [進捗案・ネーミング]\n","color": "aqua"},{"text": "    jたん\n          [コマンド再現・素材提供]\n","color": "aqua"},{"text": "    姫になりたかった人\n          [ダンジョン進行・素材提供]\n\n","color": "aqua"},{"text": "    以上敬称略\n\n\n","color": "white"},{"text": "権利表記：\n","color": "white"},{"text": "    Copyright © mitsukiGroup 2021-2022\n    This software is released the MIT License\n\n"},{"text":"    その先に浮かぶ未来を @mitsuki(leader:lime)\n\n","color": "green","bold": false},{"text": "================================================================================\n\n","color": "yellow"},{"text": "クレジットへの自身の名の追記等は制作班のdmで受け付けます"}]}},{"text": "<<","color": "aqua"}]



#tellraw @a  [{"text": "================================================================================\n\n","color": "yellow"},{"text": "制作班：\n","color": "white"},{"text": "--mitsuki group\n"},{"text": "    mikatan\n          [bot L 全般]\n","color": "gold"},{"text": "    来夢\n          [all L テクスチャ]\n","color": "green"},{"text": "    茶髪の人。\n          [event L ダンジョン進行]\n","color": "yellow"},{"text": "    tyatyatyo\n          [bot m 物理関連アルゴリズム]\n","color": "gold"},{"text": "    粋寧\n          [sys L コマンド]\n","color": "red"},{"text": "    (\"^^\")\n          [game m ネーミング・バランス]\n\n","color": "blue"},{"text": "--外部から\n"},{"text": "    睡眠欲\n          [進捗案・ネーミング]\n\n","color": "aqua"},{"text": "    jたん\n          [コマンド再現・素材提供]\n\n","color": "aqua"},{"text": "    姫になりたかった人\n          [ダンジョン進行・素材提供]\n\n","color": "aqua"},{"text": "    以上敬称略\n\n\n","color": "white"},{"text": "権利表記\n","color": "white"},{"text": "    Copyright mitsukiGroup 2021\n    This software is released the MIT License\n\n"},{"text": "================================================================================\n\n","color": "yellow"},{"text": "クレジットへの自身の名の追記等はdmで受け付けます"}]

#tellraw @s [{"text": "welcome to"},{"text": "mikatan server\n","color": "gold"},{"text": ">>","color": "aqua"},{"text": "レベルについての説明","color": "green","hoverEvent": {"action": "show_text","contents": [{"text": "a"}]}},{"text": "<<","color": "aqua"}]