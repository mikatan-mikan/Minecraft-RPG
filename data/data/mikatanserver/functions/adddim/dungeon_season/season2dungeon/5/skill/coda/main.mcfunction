##既にコーダが実行されているならフラグを立てる
execute if score $coda season2BossSkill matches 0..2000 run scoreboard players set $coda_flag season2BossSkill 1
##swapするので時間を操作する先を保存しておく
scoreboard players operation $move_time season2BossSkill = $coda season2BossSkill
##次回のコーダ時に飛ばすタイミングを入れておく
scoreboard players operation $coda season2BossSkill = @p[tag=DungeonPlay_season2] season2BossSkill
##既にコーダによって時間が保管されているならその時点に戻す
execute if score $coda_flag TwentyBossSkill matches 1 run scoreboard players operation @a[tag=DungeonPlay_season2] season2BossSkill = $move_time season2BossSkill

tellraw @a[tag=DungeonPlay_season2] [{"text": "Music of Finale>>","color": "red"},{"text": "コーダ","color": "gold"}]