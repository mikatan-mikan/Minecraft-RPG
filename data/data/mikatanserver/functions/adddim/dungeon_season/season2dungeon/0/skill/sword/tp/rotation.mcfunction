# scoreboard players set @s RotChangeFlag 0
# execute store result score @s ResultRot_0 run data get entity @p Rotation[0]
# scoreboard players remove @s ResultRot_0 180
# execute if score @s ResultRot_0 matches ..-180 run scoreboard players set @s RotChangeFlag 1
# execute if score @s RotChangeFlag matches 1 run scoreboard players add @s ResultRot_0 360
# # execute if score @s RotChangeFlag matches 1 run scoreboard players operation @s RotCalc = @s ResultRot_0
# # execute if score @s RotChangeFlag matches 1 run scoreboard players set @s ResultRot_0 0
# # execute if score @s RotChangeFlag matches 1 run scoreboard players operation @s ResultRot_0 -= @s RotCalc

# execute store result entity @s Rotation[0] float 1 run scoreboard players get @s ResultRot_0

