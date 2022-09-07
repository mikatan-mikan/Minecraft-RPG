##function mikatanserver:adddim/area/mainloop

##メインループ開始
execute if entity @a[tag=new_year2021P,scores={LogCheck_Timer=600..}] run function mikatanserver:adddim/area/newyear_2021/mainloop
execute if entity @a[tag=FieldEnder,scores={LogCheck_Timer=600..}] run function mikatanserver:adddim/area/ender/mainloop
execute if entity @a[tag=FieldNether,scores={LogCheck_Timer=600..}] run function mikatanserver:adddim/area/nether/mainloop