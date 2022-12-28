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