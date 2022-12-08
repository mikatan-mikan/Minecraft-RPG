scoreboard players set $mana TMP 27
function mikatanserver:main/mana/remove
scoreboard players reset $mana TMP

##fireball本体の召喚
execute unless entity @s[nbt={SelectedItem:{tag:{fireball:2s}}}] run summon armor_stand ~ ~ ~ {Tags:["FireBallArmor","beforeRot"],Invisible:1b,Invulnerable:1b,Small:1b}
execute if entity @s[nbt={SelectedItem:{tag:{fireball:2s}}}] run summon armor_stand ~ ~ ~ {Tags:["FireBallArmor2","beforeRot"],Invisible:1b,Invulnerable:1b,Small:1b}

##rotation
execute store result entity @e[tag=beforeRot,sort=nearest,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result entity @e[tag=beforeRot,sort=nearest,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
scoreboard players set @e[tag=beforeRot] MK.v.VecValue 3
execute as @e[tag=beforeRot] run function mikatanlib:vector/vectorexe
tag @e[tag=beforeRot] remove beforeRot

execute unless entity @s[nbt={SelectedItem:{tag:{fireball:2s}}}] run schedule function mikatanserver:item/rod/fireball/damage 1t
execute if entity @s[nbt={SelectedItem:{tag:{fireball:2s}}}] run schedule function mikatanserver:item/rod/fireball/damage_2 1t