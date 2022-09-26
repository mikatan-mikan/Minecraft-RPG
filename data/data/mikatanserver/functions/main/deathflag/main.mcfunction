scoreboard players add @s deathafter 1
function mikatanserver:main/lvup/_lvset
execute if score @s deathafter matches 60.. run scoreboard players set @s deathflag 0
execute if score @s deathafter matches 60.. run scoreboard players set @s deathafter 0