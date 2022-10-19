scoreboard players set @s MK.r.RandValue 400
function mikatanlib:rand/rand_exe
scoreboard players add @s MK.r.RandValue 100
scoreboard players operation @s attackSxp += @s MK.r.RandValue

# scoreboard players add @s attackSxp 100
# execute if predicate mikatanserver:chance/0.3 run scoreboard players add @s attackSxp 100
# execute if predicate mikatanserver:chance/0.3 run scoreboard players add @s attackSxp 100
# execute if predicate mikatanserver:chance/0.3 run scoreboard players add @s attackSxp 100

function mikatanserver:main/lvup/_view/atks

execute as @s[scores={attackS-Lv=..299}] run execute if score @s attackSxp >= @s needattackSxp run function mikatanserver:main/lvup/xpcount/atkspeedup