scoreboard players set $mana TMP 30
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

effect give @s regeneration 4 0


execute if entity @s[nbt={Inventory:[{"Slot":100b,tag:{masic_armor:true}},{"Slot":101b,tag:{masic_armor:true}},{"Slot":102b,tag:{masic_armor:true}},{"Slot":103b,tag:{masic_armor:true}}]}] run function mikatanserver:item/rod/pumpkin/masic/main

playsound entity.splash_potion.throw master @s ~ ~ ~ 1 1