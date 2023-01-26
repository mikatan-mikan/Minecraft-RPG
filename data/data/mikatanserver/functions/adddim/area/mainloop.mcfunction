##function mikatanserver:adddim/area/mainloop
##minecraftから呼び出し(tick.json)

##メインループ開始
execute if entity @a[tag=new_year2021P,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/newyear_2021/mainloop
execute if entity @a[tag=FieldEnder,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/ender/mainloop
execute if entity @a[tag=FieldNether,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/nether/mainloop
execute if entity @a[tag=FieldIsland,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/island/mainloop
execute if entity @a[tag=FieldHalloween,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/halloween/mainloop
execute if entity @a[tag=FieldRuins,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/ruins/mainloop
execute if entity @a[tag=FieldFarm,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/farm/mainloop
execute if entity @a[tag=FieldNewyear_2023,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/newyear_2023/mainloop
execute if entity @a[tag=FieldJungle,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/jungle/mainloop
execute if entity @a[tag=FieldCherryblossom,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/cherryblossom/mainloop
execute if entity @a[tag=FieldCave,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/cave/mainloop
execute if entity @a[tag=FieldNether_2,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/nether_tier2/mainloop
execute if entity @a[tag=FieldEnder_2,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/ender_tier2/mainloop
execute if entity @a[tag=FieldVolcano,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/volcano/mainloop
execute if entity @a[tag=FieldDesert,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/desert/mainloop
execute if entity @a[tag=FieldSilf,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/silf/mainloop
execute if entity @a[tag=FieldUniverse,scores={LogCheck_Timer=600..},predicate=mikatanserver:dungeonmapdim] run function mikatanserver:adddim/area/universe/mainloop