
scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 1
scoreboard players operation @s TMP = @s ART.mana
scoreboard players operation @s TMP /= $100 int
scoreboard players operation @s manaxp += @s TMP
scoreboard players operation @s TMP = @s ART.mana
scoreboard players operation @s TMP %= $100 int
execute if score @s MK.r.RandValue <= @s TMP run scoreboard players add @s manaxp 1