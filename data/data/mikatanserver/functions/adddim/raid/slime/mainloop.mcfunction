##残り時間の計算
scoreboard players operation $20t RAID_Slime_Skill = $cnt RAID_Slime_Skill 
scoreboard players operation $20t RAID_Slime_Skill %= $20 int
execute if score $20t RAID_Slime_Skill matches 1 run function mikatanserver:adddim/raid/slime/set_time
execute if score $12000 RAID_Slime_Skill matches 0..9 run bossbar set raid_slime_bossbar name [{"text":"キングスライム","color": "green"},{"text": "    "},{"text": "残り時間：","color": "white"},{"score":{"name": "$min","objective": "RAID_Slime_Skill"}},{"text": ":0"},{"score":{"name": "$12000","objective": "RAID_Slime_Skill"}}]
execute unless score $12000 RAID_Slime_Skill matches 0..9 run bossbar set raid_slime_bossbar name [{"text":"キングスライム","color": "green"},{"text": "    "},{"text": "残り時間：","color": "white"},{"score":{"name": "$min","objective": "RAID_Slime_Skill"}},{"text": ":"},{"score":{"name": "$12000","objective": "RAID_Slime_Skill"}}]


##as server -> at 0 0 0
execute as @e[tag=RAID_Slime] at @s run function mikatanserver:adddim/raid/slime/raidloop

##二体以上スライムがいる場合の処理(例外処理)
execute store result score $slimes RAID_Slime_Skill if entity @e[type=slime,tag=RAID_Slime]
    #もし2以上なら一体を奈落にtpした後killをする
    execute if score $slimes RAID_Slime_Skill matches 2.. as @e[type=slime,tag=RAID_Slime,limit=1] at @s run function mikatanserver:adddim/raid/slime/exception/double_slime

##時間カウント
scoreboard players add $cnt RAID_Slime_Skill 1

##クリア判定開始
execute if entity @e[tag=RAID_Slime] run scoreboard players set $RAID_Slime RAID_Slime_Skill 1

##単にいない場合
execute if score $RAID_Slime RAID_Slime_Skill matches 1 unless entity @e[tag=RAID_Slime] if entity @a[tag=RAID_Slime_Player] run function mikatanserver:adddim/raid/slime/_win
##10分経過
execute if score $cnt RAID_Slime_Skill matches 12000.. run function mikatanserver:adddim/raid/slime/_lose