##乱数を生成し座標を生成
tag @s add Now
    #x座標
    scoreboard players set @s MK.r.RandValue 80
    function mikatanlib:rand/rand_exe
    scoreboard players remove @s MK.r.RandValue 40
    execute store result score @s NowPlaceX run data get entity @s Pos[0] 10
    scoreboard players operation @s NowPlaceX += @s MK.r.RandValue
    #z座標
    scoreboard players set @s MK.r.RandValue 80
    function mikatanlib:rand/rand_exe
    scoreboard players remove @s MK.r.RandValue 40
    execute store result score @s NowPlaceY run data get entity @s Pos[2] 10
    scoreboard players operation @s NowPlaceY += @s MK.r.RandValue
    #y座標
    execute store result score $y NowPlaceY run data get entity @s Pos[1] 1
    scoreboard players remove $y NowPlaceY 90
##座標の調整と召喚
summon arrow ~ ~ ~ {Tags:["Bef","TwentyeightDunMob","PinkAr"]}
execute as @e[type=arrow,tag=Bef,tag=TwentyeightDunMob,tag=PinkAr] run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/arrow/skill/store_pos
execute as @e[type=arrow,tag=TwentyeightDunMob,tag=PinkAr,nbt={inGround:1b}] run kill @s 
tag @s remove Now