
##new year event 2021
    ##わき制限  new_year2021P tagを持っているプレイヤーがいるなら
    execute if entity @a[tag=new_year2021P] run function mikatanserver:adddim/area/newyear_2021/mob/ice_guardian/spawn




##ループリセット
execute if score count field_loop matches 600.. run scoreboard players set count field_loop 0

##わきループ
scoreboard players add count field_loop 1