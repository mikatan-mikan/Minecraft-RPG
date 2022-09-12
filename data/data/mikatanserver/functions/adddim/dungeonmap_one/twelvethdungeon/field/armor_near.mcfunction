##自身がmobを出すアマスタでかつ範囲内にプレイヤーがいたなら
execute if entity @s[tag = 12thDunMobSpAr] if entity @a[distance = ..8] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/field/armor/spawn_mob

##自身が鍵アマスタで範囲内にプレイヤーがいたなら
execute if entity @s[tag = 12thDunKey] if entity @a[distance = ..10] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/field/armor/give_key

##自身がTPアマスタで範囲内にプレイヤーがいたなら
execute if entity @s[tag = 12thBossTPAr] if entity @a[distance = ..15] run function mikatanserver:adddim/dungeonmap_one/twelvethdungeon/field/armor/boss_tp