
execute store result score @s ItemKillTimer run data get entity @s Age
execute if score @s ItemKillTimer matches ..100 run tag @s add KillItemBefore30s
execute if score @s ItemKillTimer matches ..100 run data merge entity @s {Age:5400}
scoreboard players reset @s ItemKillTimer