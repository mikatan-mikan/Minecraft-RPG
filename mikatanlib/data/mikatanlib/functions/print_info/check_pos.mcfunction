execute store result score $pos_x MK.pi.predicate run data get entity @s Pos[0]
execute store result score $pos_y MK.pi.predicate run data get entity @s Pos[2]

scoreboard players operation $pos_x MK.pi.predicate -= $now_x MK.pi.predicate
scoreboard players operation $pos_y MK.pi.predicate -= $now_y MK.pi.predicate

scoreboard players operation $pos_x MK.pi.predicate *= $pos_x MK.pi.predicate
scoreboard players operation $pos_y MK.pi.predicate *= $pos_y MK.pi.predicate

scoreboard players operation $pos_x MK.pi.predicate += $pos_y MK.pi.predicate

execute store result storage math: in double 1 run scoreboard players get $pos_x MK.pi.predicate
#tellraw @a [{"nbt":"in","storage": "math:"}]
function #math:sqrt

execute store result score $check MK.pi.predicate run data get storage math: out

execute if score $check MK.pi.predicate < $size MK.pi.predicate run tag @s add MK.pi.Print

scoreboard players reset $pos_x MK.pi.predicate
scoreboard players reset $pos_y MK.pi.predicate