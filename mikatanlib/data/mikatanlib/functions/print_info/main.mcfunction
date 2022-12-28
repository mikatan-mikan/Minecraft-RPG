##最寄りのエンティティと同じタグを持つエンティティを再度出現させることができるsummon命令を出力する
##function mikatanlib:print_info/main

##エンティティの限界範囲が決まっていなければ100にする
execute unless score $size MK.pi.predicate matches 0..512 run scoreboard players set $size MK.pi.predicate 100
data modify storage mikatanlib:printinfo Tags set from entity @e[sort=nearest,limit=1] Tags

execute store result score $now_x MK.pi.predicate run data get entity @s Pos[0]
execute store result score $now_y MK.pi.predicate run data get entity @s Pos[2]
execute as @e[type=armor_stand,tag=SilfField_Ar] run function mikatanlib:print_info/check_pos


schedule function mikatanlib:print_info/print 1t
