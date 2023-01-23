
##残り時間の計算
scoreboard players operation $20t RAID_RedCrystal_Skill = $cnt RAID_RedCrystal_Skill 
scoreboard players operation $20t RAID_RedCrystal_Skill %= $20 int
execute if score $20t RAID_RedCrystal_Skill matches 1 run function mikatanserver:adddim/raid/redcrystal/set_time
execute if score $12000 RAID_RedCrystal_Skill matches 0..9 run bossbar set raid_redcrystal_bossbar name [{"text":"紅結晶","color": "red"},{"text": "    "},{"text": "残り時間：","color": "white"},{"score":{"name": "$min","objective": "RAID_RedCrystal_Skill"}},{"text": ":0"},{"score":{"name": "$12000","objective": "RAID_RedCrystal_Skill"}}]
execute unless score $12000 RAID_RedCrystal_Skill matches 0..9 run bossbar set raid_redcrystal_bossbar name [{"text":"紅結晶","color": "red"},{"text": "    "},{"text": "残り時間：","color": "white"},{"score":{"name": "$min","objective": "RAID_RedCrystal_Skill"}},{"text": ":"},{"score":{"name": "$12000","objective": "RAID_RedCrystal_Skill"}}]

##as server -> at 0 0 0
execute as @e[tag=RAID_RedCrystal] at @s run function mikatanserver:adddim/raid/redcrystal/raidloop

##二体以上スライムがいる場合の処理(例外処理)
execute store result score $redcrystal RAID_RedCrystal_Skill if entity @e[type=magma_cube,tag=RAID_RedCrystal]
    #もし2以上なら一体を奈落にtpした後killをする
    execute if score $redcrystal RAID_RedCrystal_Skill matches 2.. as @e[type=magma_cube,tag=RAID_RedCrystal,limit=1] at @s run function mikatanserver:adddim/raid/redcrystal/exception/double_redcrystal

##時間カウント
scoreboard players add $cnt RAID_RedCrystal_Skill 1

##クリア判定開始
execute if entity @e[tag=RAID_RedCrystal] run scoreboard players set $RAID_RedCrystal RAID_RedCrystal_Skill 1

##単にいない場合
execute if score $RAID_RedCrystal RAID_RedCrystal_Skill matches 1 unless entity @e[tag=RAID_RedCrystal] if entity @a[tag=RAID_RedCrystal_Player] run function mikatanserver:adddim/raid/redcrystal/_win
##10分経過
execute if score $cnt RAID_RedCrystal_Skill matches 12000.. run function mikatanserver:adddim/raid/redcrystal/_lose