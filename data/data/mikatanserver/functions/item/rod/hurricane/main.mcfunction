scoreboard players set $mana TMP 30
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

tag @s add ExecHurricane

playsound entity.player.attack.sweep master @a ~ ~ ~ 2 0

function mikatanserver:item/rod/hurricane/loop