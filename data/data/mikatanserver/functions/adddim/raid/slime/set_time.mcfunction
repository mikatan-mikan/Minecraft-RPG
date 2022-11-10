scoreboard players set $12000 RAID_Slime_Skill 12000
scoreboard players operation $sec RAID_Slime_Skill = $cnt RAID_Slime_Skill 
scoreboard players operation $12000 RAID_Slime_Skill -= $sec RAID_Slime_Skill
scoreboard players operation $12000 RAID_Slime_Skill /= $20 int 
scoreboard players operation $min RAID_Slime_Skill = $12000 RAID_Slime_Skill 
scoreboard players operation $min RAID_Slime_Skill /= $60 int 
scoreboard players operation $12000 RAID_Slime_Skill %= $60 int 
# tellraw @a [{"text": "[system]","color": "yellow"},{"text": "<キングスライム>","color":"green"},{"text": "残り時間：","color": "white"},{"score":{"name": "$min","objective": "RAID_Slime_Skill"}},{"text": ":"},{"score":{"name": "$sec","objective": "RAID_Slime_Skill"}}]
# execute if score $min RAID_Slime_Skill matches 0 run tellraw @a [{"text": "[system]","color": "yellow"},{"text": "<キングスライム>","color":"green"},{"text": "残り時間：","color": "white"},{"score":{"name": "$min","objective": "RAID_Slime_Skill"}},{"text": ":"},{"score":{"name": "$sec","objective": "RAID_Slime_Skill"}}]