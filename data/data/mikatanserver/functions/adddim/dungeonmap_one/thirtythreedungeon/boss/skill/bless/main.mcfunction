
tellraw @a[tag=DungeonPlay_33] [{"text": "Walcrutor>>","color": "aqua"},{"text": "衝撃波","color": "gold"}]

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmABykDMArAEwDspAZgLRMN0Cc7ALHACMHAEalSddnB6CecAGw9WQykLAEAdgEMAtgmSAwxQAE6gjG0Y9AZyTgUAe0KaISBgAYCKOC7gY7YABu2tiEBuAAHkieYFDRAL7xBFakaIS2iPwE1hCWrogxcNjYaDDWBkLuMRgOuRAGMWjWAKLFpeXNAI6EIdhQAMoW3uSIrCHliQC6QA_3
# 円 1
# summon marker ^0 ^ ^-4 {Tags:["ThirtythreeDunMob"]}
# summon marker ^1.23607 ^ ^-3.80423 {Tags:["ThirtythreeDunMob"]}
# summon marker ^2.35114 ^ ^-3.23607 {Tags:["ThirtythreeDunMob"]}
# summon marker ^3.23607 ^ ^-2.35114 {Tags:["ThirtythreeDunMob"]}
# summon marker ^3.80423 ^ ^-1.23607 {Tags:["ThirtythreeDunMob"]}
# summon marker ^4 ^ ^0 {Tags:["ThirtythreeDunMob"]}
summon marker ^3.80423 ^ ^1.23607 {Tags:["ThirtythreeDunMob","BlessMarker","Bef"]}
summon marker ^3.23607 ^ ^2.35114 {Tags:["ThirtythreeDunMob","BlessMarker","Bef"]}
summon marker ^2.35114 ^ ^3.23607 {Tags:["ThirtythreeDunMob","BlessMarker","Bef"]}
summon marker ^1.23607 ^ ^3.80423 {Tags:["ThirtythreeDunMob","BlessMarker","Bef"]}
summon marker ^0 ^ ^4 {Tags:["ThirtythreeDunMob","BlessMarker","Bef"]}
summon marker ^-1.23607 ^ ^3.80423 {Tags:["ThirtythreeDunMob","BlessMarker","Bef"]}
summon marker ^-2.35114 ^ ^3.23607 {Tags:["ThirtythreeDunMob","BlessMarker","Bef"]}
summon marker ^-3.23607 ^ ^2.35114 {Tags:["ThirtythreeDunMob","BlessMarker","Bef"]}
# summon marker ^-3.80423 ^ ^1.23607 {Tags:["ThirtythreeDunMob"]}
# summon marker ^-4 ^ ^0 {Tags:["ThirtythreeDunMob"]}
# summon marker ^-3.80423 ^ ^-1.23607 {Tags:["ThirtythreeDunMob"]}
# summon marker ^-3.23607 ^ ^-2.35114 {Tags:["ThirtythreeDunMob"]}
# summon marker ^-2.35114 ^ ^-3.23607 {Tags:["ThirtythreeDunMob"]}
# summon marker ^-1.23607 ^ ^-3.80423 {Tags:["ThirtythreeDunMob"]}

execute as @e[tag=BlessMarker,tag=ThirtythreeDunMob,tag=Bef] store result entity @s Rotation[0] float 0.1 run data get entity @e[limit=1,tag=ThirtythreeDunBoss] Rotation[0] 10

tag @e[tag=BlessMarker,tag=ThirtythreeDunMob,tag=Bef] remove Bef