scoreboard players add @s deathafter 1
function mikatanserver:main/lvup/atkdamage/lv100_lv0/func
function mikatanserver:main/lvup/atkspeed/lv100_lv0/func
function mikatanserver:main/lvup/luck/lv100_lv0/func
function mikatanserver:main/lvup/hp/lv100_lv0/func
function mikatanserver:main/lvup/speed/lv100_lv0/func
function mikatanserver:main/lvup/atkdamage/lv200_lv101/func
function mikatanserver:main/lvup/atkspeed/lv200_lv101/func
function mikatanserver:main/lvup/luck/lv200_lv101/func
function mikatanserver:main/lvup/hp/lv200_lv101/func
function mikatanserver:main/lvup/speed/lv200_lv101/func
execute if score @s deathafter matches 60.. run scoreboard players set @s deathflag 0
execute if score @s deathafter matches 60.. run scoreboard players set @s deathafter 0