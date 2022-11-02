scoreboard players set $12000 RAID_Sime_Skill 12000
scoreboard players operation $sec RAID_Sime_Skill = $cnt RAID_Sime_Skill 
scoreboard players operation $12000 RAID_Sime_Skill -= $sec RAID_Sime_Skill
scoreboard players operation $sec RAID_Sime_Skill /= $20 int 
scoreboard players operation $min RAID_Sime_Skill = $sec RAID_Sime_Skill 
scoreboard players operation $min RAID_Sime_Skill /= $60 int 
execute if score $sec RAID_Sime_Skill matches 0 run tellraw @a [{"text": "[system]","color": "yellow"},{"text": "<キングスライム>","color":"green"},{"text": "残り時間：","color": "white"},{"score":{"name": "$min","objective": "RAID_Slime_Skill"}},{"text": ":"},{"score":{"name": "$sec","objective": "RAID_Slime_Skill"}}]
execute if score $min RAID_Sime_Skill matches 0 run tellraw @a [{"text": "[system]","color": "yellow"},{"text": "<キングスライム>","color":"green"},{"text": "残り時間：","color": "white"},{"score":{"name": "$min","objective": "RAID_Slime_Skill"}},{"text": ":"},{"score":{"name": "$sec","objective": "RAID_Slime_Skill"}}]