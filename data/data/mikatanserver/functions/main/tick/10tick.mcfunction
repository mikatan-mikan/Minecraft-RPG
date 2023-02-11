##mana上昇
execute as @a if score @s manamax > @s mana run function mikatanserver:main/mana/main
execute as @a run function mikatanserver:main/kill_entity/afk/compare_pos

    ##人数検知
    scoreboard players reset $Player TMP
    execute as @a run scoreboard players add $Player TMP 1

scoreboard players reset $20tick ticktimer