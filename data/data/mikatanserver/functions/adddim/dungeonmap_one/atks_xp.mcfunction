

scoreboard players add @s attackSxp 100
execute if predicate mikatanserver:chance/0.3 run scoreboard players add @s attackSxp 100
execute if predicate mikatanserver:chance/0.3 run scoreboard players add @s attackSxp 100
execute if predicate mikatanserver:chance/0.3 run scoreboard players add @s attackSxp 100

function mikatanserver:main/lvup/_view/atks

execute as @s[scores={attackS-Lv=..299}] run execute if score @s attackSxp >= @s needattackSxp run function mikatanserver:main/lvup/xpcount/atkspeedup