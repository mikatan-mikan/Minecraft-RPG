execute as @a[tag=BoostTimeS] at @s run tp @s @e[tag=BoostAr,sort=nearest,limit=1]

execute if entity @a[tag=BoostTimeS,scores={BoostTimer=..200}] run schedule function mikatanserver:item/rod/flying_sword/teleport 1t
execute if entity @a[tag=BoostTimeS] unless entity @a[scores={BoostTimer=..200}] as @a[tag=BoostTimeS] run function mikatanserver:item/rod/flying_sword/return
execute as @a at @s as @e[tag=BoostAr,nbt={OnGround:true},distance=..2] run scoreboard objectives remove BoostTimer
execute as @a at @s if entity @e[tag=BoostAr,nbt={OnGround:true},distance=..2] run tag @s remove BoostTimeS
execute as @a at @s as @e[tag=BoostAr,nbt={OnGround:true},distance=..2] run kill @s