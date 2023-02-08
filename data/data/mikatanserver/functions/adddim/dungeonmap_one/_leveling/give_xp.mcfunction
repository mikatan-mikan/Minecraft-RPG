scoreboard players set $xp TMP 30
scoreboard players operation $xp TMP *= $leveling_xp TMP
execute if score $leveling_lv TMP > @s mana-Lv run scoreboard players operation @s manaxp += $xp TMP
execute if score $NowMax AllLV > @s mana-Lv if score @s manaxp >= @s needmanaxp run function mikatanserver:main/lvup/xpcount/manalvup

scoreboard players set $xp TMP 40
scoreboard players operation $xp TMP *= $leveling_xp TMP
execute if score $leveling_lv TMP > @s hp-Lv run scoreboard players operation @s hpxp += $xp TMP
execute if score $NowMax AllLV > @s hp-Lv if score @s hpxp >= @s needhpxp run function mikatanserver:main/lvup/xpcount/healthlvup

scoreboard players set $xp TMP 400
scoreboard players operation $xp TMP *= $leveling_xp TMP
execute if score $leveling_lv TMP > @s attackD-Lv run scoreboard players operation @s attackDxp += $xp TMP
execute if score $NowMax AllLV > @s attackD-Lv if score @s attackDxp >= @s needattackDxp run function mikatanserver:main/lvup/xpcount/atkdamagelvup

scoreboard players set $xp TMP 100
scoreboard players operation $xp TMP *= $leveling_xp TMP
execute if score $leveling_lv TMP > @s attackS-Lv run scoreboard players operation @s attackSxp += $xp TMP
execute if score $NowMax AllLV > @s attackS-Lv if score @s attackSxp >= @s needattackSxp run function mikatanserver:main/lvup/xpcount/atkspeedup

scoreboard players set $xp TMP 50
scoreboard players operation $xp TMP *= $leveling_xp TMP
execute if score $leveling_lv TMP > @s luck-Lv run scoreboard players operation @s luckxp += $xp TMP
execute if score $NowMax AllLV > @s luck-Lv if score @s luckxp >= @s needluckxp run function mikatanserver:main/lvup/xpcount/lucklvup

scoreboard players set $xp TMP 1000
scoreboard players operation $xp TMP *= $leveling_xp TMP
execute if score $leveling_lv TMP > @s speed-Lv run scoreboard players operation @s speedxp += $xp TMP
execute if score $NowMax AllLV > @s speed-Lv if score @s speedxp >= @s needspeedxp run function mikatanserver:main/lvup/xpcount/speedlvup