summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,HandItems:[{Count:1b,id:"minecraft:iron_sword",tag:{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}]}}],DisabledSlots:4144959,Tags:["SixteenDunSwAr","SixteenDunMob","SixteenDunSwArIron"]}
#右と左の移動が1/3で変化する(Threeをtmpとして使う)
execute store result score $tmp THREE run scoreboard players get @s MK.r.RandValue
#1/4
scoreboard players set @s MK.r.RandValue 3
function mikatanlib:rand/rand_exe
#tellraw @a [{"score":{"name":"@s","objective":"MK.r.RandValue"},"color":"light_purple"}]
#右or左(2の時にのみ方向変化の可能性があり、ついでに次の乱数生成にも利用する)
execute unless score @s MK.r.RandValue matches 2 store result score @s MK.r.RandValue run scoreboard players get $tmp THREE
execute if score @s MK.r.RandValue matches 2 run function mikatanlib:rand/rand_exe


execute if score @s MK.r.RandValue matches 0 run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/move/right/main
execute if score @s MK.r.RandValue matches 1 run function mikatanserver:adddim/dungeonmap_one/sixteendungeon/boss/skill/move/left/main