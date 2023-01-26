

##ビームを放つ
    #プレイヤーの100マス上に召喚する
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["TwentyeightDunMob","ArrowAr"],NoGravity:1b}
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["TwentyeightDunMob","ArrowAr"],NoGravity:1b}
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["TwentyeightDunMob","ArrowAr"],NoGravity:1b}
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["TwentyeightDunMob","ArrowAr"],NoGravity:1b}
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["TwentyeightDunMob","ArrowAr"],NoGravity:1b}
    summon armor_stand ~ ~100 ~ {Small:1b,Invisible:1b,Invulnerable:1b,Tags:["TwentyeightDunMob","ArrowAr"],NoGravity:1b}
execute as @e[tag=TwentyeightDunMob,tag=ArrowAr] at @s run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/arrow/skill/arrowloop

kill @e[tag=TwentyeightDunMob,tag=ArrowAr]

function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/arrow/particle_1
execute positioned ~ ~10 ~ run function mikatanserver:adddim/dungeonmap_one/twentyeightdungeon/boss/skill/arrow/particle_1