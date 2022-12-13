
execute store result score $rank1 TMP run data get storage mikatanserver:parkour Volcano[0]
execute store result score $rank2 TMP run data get storage mikatanserver:parkour Volcano[1]
execute store result score $rank3 TMP run data get storage mikatanserver:parkour Volcano[2]

##3位
scoreboard players operation $m TMP = $rank3 TMP
scoreboard players operation $m TMP /= $20 int
scoreboard players operation $m TMP /= $60 int
scoreboard players operation $s TMP = $rank3 TMP
scoreboard players operation $s TMP /= $20 int
scoreboard players operation $s TMP %= $60 int
scoreboard players operation $t TMP = $rank3 TMP
scoreboard players operation $t TMP %= $20 int
scoreboard players operation $t TMP *= $5 int
execute in mikatanserver:dungeon if score $s TMP matches 10.. if score $t TMP matches 10.. run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank__
execute in mikatanserver:dungeon if score $s TMP matches 10.. if score $t TMP matches ..9 run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank_0
execute in mikatanserver:dungeon if score $s TMP matches ..9 if score $t TMP matches 10.. run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank0_
execute in mikatanserver:dungeon if score $s TMP matches ..9 if score $t TMP matches ..9 run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank00
data modify entity @e[type=armor_stand,tag=VolcanoField_Ar,tag=Rank3,limit = 1] CustomName set from entity @e[nbt={Item:{tag:{Tags:["RankStore"]}}},limit=1] Item.tag.display.Name
kill @e[nbt={Item:{tag:{Tags:["RankStore"]}}}]

##2位
scoreboard players operation $m TMP = $rank2 TMP
scoreboard players operation $m TMP /= $20 int
scoreboard players operation $m TMP /= $60 int
scoreboard players operation $s TMP = $rank2 TMP
scoreboard players operation $s TMP /= $20 int
scoreboard players operation $s TMP %= $60 int
scoreboard players operation $t TMP = $rank2 TMP
scoreboard players operation $t TMP %= $20 int
scoreboard players operation $t TMP *= $5 int
execute in mikatanserver:dungeon if score $s TMP matches 10.. if score $t TMP matches 10.. run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank__
execute in mikatanserver:dungeon if score $s TMP matches 10.. if score $t TMP matches ..9 run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank_0
execute in mikatanserver:dungeon if score $s TMP matches ..9 if score $t TMP matches 10.. run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank0_
execute in mikatanserver:dungeon if score $s TMP matches ..9 if score $t TMP matches ..9 run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank00
data modify entity @e[type=armor_stand,tag=VolcanoField_Ar,tag=Rank2,limit = 1] CustomName set from entity @e[nbt={Item:{tag:{Tags:["RankStore"]}}},limit=1] Item.tag.display.Name
kill @e[nbt={Item:{tag:{Tags:["RankStore"]}}}]

##1位
scoreboard players operation $m TMP = $rank1 TMP
scoreboard players operation $m TMP /= $20 int
scoreboard players operation $m TMP /= $60 int
scoreboard players operation $s TMP = $rank1 TMP
scoreboard players operation $s TMP /= $20 int
scoreboard players operation $s TMP %= $60 int
scoreboard players operation $t TMP = $rank1 TMP
scoreboard players operation $t TMP %= $20 int
scoreboard players operation $t TMP *= $5 int
execute in mikatanserver:dungeon if score $s TMP matches 10.. if score $t TMP matches 10.. run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank__
execute in mikatanserver:dungeon if score $s TMP matches 10.. if score $t TMP matches ..9 run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank_0
execute in mikatanserver:dungeon if score $s TMP matches ..9 if score $t TMP matches 10.. run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank0_
execute in mikatanserver:dungeon if score $s TMP matches ..9 if score $t TMP matches ..9 run loot spawn 2063.5 111 3042.5 loot mikatanserver:_system/parkour/rank00
data modify entity @e[type=armor_stand,tag=VolcanoField_Ar,tag=Rank1,limit = 1] CustomName set from entity @e[nbt={Item:{tag:{Tags:["RankStore"]}}},limit=1] Item.tag.display.Name
kill @e[nbt={Item:{tag:{Tags:["RankStore"]}}}]

scoreboard players reset $m TMP
scoreboard players reset $s TMP
scoreboard players reset $t TMP
scoreboard players reset $rank1 TMP
scoreboard players reset $rank2 TMP
scoreboard players reset $rank3 TMP