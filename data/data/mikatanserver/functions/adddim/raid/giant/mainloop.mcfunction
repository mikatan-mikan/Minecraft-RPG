##残り時間の計算
scoreboard players operation $20t RAID_Giant_Skill = $cnt RAID_Giant_Skill 
scoreboard players operation $20t RAID_Giant_Skill %= $20 int
execute if score $20t RAID_Giant_Skill matches 1 run function mikatanserver:adddim/raid/giant/set_time
execute if score $12000 RAID_Giant_Skill matches 0..9 run bossbar set raid_giant_bossbar name [{"text":"オートマトナー","color": "yellow"},{"text": "    "},{"text": "残り時間：","color": "white"},{"score":{"name": "$min","objective": "RAID_Giant_Skill"}},{"text": ":0"},{"score":{"name": "$12000","objective": "RAID_Giant_Skill"}}]
execute unless score $12000 RAID_Giant_Skill matches 0..9 run bossbar set raid_giant_bossbar name [{"text":"オートマトナー","color": "yellow"},{"text": "    "},{"text": "残り時間：","color": "white"},{"score":{"name": "$min","objective": "RAID_Giant_Skill"}},{"text": ":"},{"score":{"name": "$12000","objective": "RAID_Giant_Skill"}}]

##as server -> at 0 0 0
execute as @e[tag=RAID_Giant] at @s run function mikatanserver:adddim/raid/giant/raidloop

##二体以上スライムがいる場合の処理(例外処理)
execute store result score $giants RAID_Giant_Skill if entity @e[type=giant,tag=RAID_Giant]
    #もし2以上なら一体を奈落にtpした後killをする
    execute if score $giants RAID_Giant_Skill matches 2.. as @e[type=giant,tag=RAID_Giant,limit=1] at @s run function mikatanserver:adddim/raid/giant/exception/double_giant

##時間カウント
scoreboard players add $cnt RAID_Giant_Skill 1

##クリア判定開始
execute if entity @e[tag=RAID_Giant] run scoreboard players set $RAID_Giant RAID_Giant_Skill 1

##単にいない場合
execute if score $RAID_Giant RAID_Giant_Skill matches 1 unless entity @e[tag=RAID_Giant] if entity @a[tag=RAID_Giant_Player] run function mikatanserver:adddim/raid/giant/_win
##10分経過
execute if score $cnt RAID_Giant_Skill matches 12000.. run function mikatanserver:adddim/raid/giant/_lose