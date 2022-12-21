scoreboard players add @s deathafter 1
function mikatanserver:main/lvup/_lvset
execute if score @s deathafter matches 0..60 run scoreboard players operation @s mana = @s manamax
execute if score @s deathafter matches 0..60 run effect give @s instant_health 1 100 true
execute if score @s deathafter matches 0..20 run function mikatanserver:item/teleporter/tag/remove
execute if score @s deathafter matches 60.. run scoreboard players set @s deathflag 0
execute if score @s deathafter matches 60.. run scoreboard players set @s deathafter 0