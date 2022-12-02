##既にコーダが実行されているならフラグを立てる
execute if score $coda TwentyfourBossSkill matches 0..2000 run scoreboard players set $coda_flag TwentyfourBossSkill 1
##swapするので時間を操作する先を保存しておく
scoreboard players operation $move_time TwentyfourBossSkill = $coda TwentyfourBossSkill
##次回のコーダ時に飛ばすタイミングを入れておく
scoreboard players operation $coda TwentyfourBossSkill = @p[tag=DungeonPlay_24] TwentyfourBossSkill
##既にコーダによって時間が保管されているならその時点に戻す
execute if score $coda_flag TwentyBossSkill matches 1 run scoreboard players operation @a[tag=DungeonPlay_24] TwentyfourBossSkill = $move_time TwentyfourBossSkill

tellraw @a[tag=DungeonPlay_24] [{"text": "Music of Finale>>","color": "red"},{"text": "コーダ","color": "gold"}]