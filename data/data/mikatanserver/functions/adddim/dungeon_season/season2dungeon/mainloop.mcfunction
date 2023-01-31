execute if score $season2 dungeon_play_now matches 0 run function mikatanserver:adddim/dungeon_season/death_after_player/season2

##次のボスを召喚
execute unless entity @e[tag=season2DunBoss] if entity @a[tag=BossBattleseason2] if score $season2_boss dungeon_play_now matches ..4 if score $season2_next_time dungeon_play_now matches 20.. as @a[tag=DungeonPlay_season2] at @s run function mikatanserver:adddim/dungeon_season/season2dungeon/_next

execute unless entity @e[tag=season2DunBoss] if entity @a[tag=BossBattleseason2] if score $season2_boss dungeon_play_now matches ..4 if score $season2_next_time dungeon_play_now matches ..20 run scoreboard players add $season2_next_time dungeon_play_now 1

##ボスループ
    ##どのボスかの変数
    #0 : 剣舞
    #1 : 波動
    #2 : 溶岩流
    #3 : 略奪者
    #4 : 重力者
    #5 : 旋律
    #6 : 巫
    #7 : 女神
execute if entity @e[tag=season2DunBoss] if score $season2_what_boss dungeon_play_now matches 0 run function mikatanserver:adddim/dungeon_season/season2dungeon/0/mainloop
execute if entity @e[tag=season2DunBoss] if score $season2_what_boss dungeon_play_now matches 1 run function mikatanserver:adddim/dungeon_season/season2dungeon/1/mainloop
execute if entity @e[tag=season2DunBoss] if score $season2_what_boss dungeon_play_now matches 2 run function mikatanserver:adddim/dungeon_season/season2dungeon/2/mainloop
execute if entity @e[tag=season2DunBoss] if score $season2_what_boss dungeon_play_now matches 3 run function mikatanserver:adddim/dungeon_season/season2dungeon/3/mainloop
execute if entity @e[tag=season2DunBoss] if score $season2_what_boss dungeon_play_now matches 4 run function mikatanserver:adddim/dungeon_season/season2dungeon/4/mainloop
execute if entity @e[tag=season2DunBoss] if score $season2_what_boss dungeon_play_now matches 5 run function mikatanserver:adddim/dungeon_season/season2dungeon/5/mainloop
execute if entity @e[tag=season2DunBoss] if score $season2_what_boss dungeon_play_now matches 6 run function mikatanserver:adddim/dungeon_season/season2dungeon/6/mainloop
execute if entity @e[tag=season2DunBoss] if score $season2_what_boss dungeon_play_now matches 7 run function mikatanserver:adddim/dungeon_season/season2dungeon/7/mainloop

##ダンジョン死亡検知
execute if entity @a[scores={season2DunDeath=1..},tag=DungeonPlay_season2] run function mikatanserver:adddim/dungeon_season/season2dungeon/false
##ダンジョンクリア検知
execute unless entity @e[tag=season2DunBoss] if entity @a[tag=BossBattleseason2] if score $season2_boss dungeon_play_now matches 5 run function mikatanserver:adddim/dungeon_season/season2dungeon/true