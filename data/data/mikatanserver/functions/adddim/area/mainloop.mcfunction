##function mikatanserver:adddim/area/mainloop
##minecraftから呼び出し(tick.json)

##メインループ開始
execute if entity @a[tag=new_year2021P,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/newyear_2021/mainloop
execute if entity @a[tag=FieldEnder,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/ender/mainloop
execute if entity @a[tag=FieldNether,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/nether/mainloop
execute if entity @a[tag=FieldIsland,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/island/mainloop
execute if entity @a[tag=FieldHalloween,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/halloween/mainloop
execute if entity @a[tag=FieldRuins,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/ruins/mainloop