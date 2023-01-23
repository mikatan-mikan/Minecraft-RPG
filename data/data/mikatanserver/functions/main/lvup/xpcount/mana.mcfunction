scoreboard players set @s enchantcount 0

scoreboard players add @s manaxp 1
execute if score @s mana-Lv < $EasyLv AllLV run scoreboard players add @s manaxp 4


function mikatanserver:main/lvup/_accessory/mana

##

##エンチャントしたときレア泥
execute as @s[predicate=mikatanserver:chance/0.002] run function mikatanserver:main/lvup/raredrop/mana

##アーティファクト
function mikatanserver:main/lvup/_artifact/mana

##actionbar
function mikatanserver:main/lvup/_view/mana


execute as @s[scores={mana-Lv=..299}] run execute if score @s manaxp >= @s needmanaxp run function mikatanserver:main/lvup/xpcount/manalvup