scoreboard players set $mana TMP 5
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:1,ReapplicationDelay:50,Radius:1f,Duration:6,Effects:[{Id:11,Amplifier:4,Duration:5}]}
playsound minecraft:block.anvil.place master @s ~ ~ ~ 2 0