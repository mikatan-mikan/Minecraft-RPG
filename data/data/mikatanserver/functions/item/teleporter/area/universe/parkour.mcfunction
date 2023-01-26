kill @e[tag=UniverseParkourStart]
kill @e[tag=UniverseParkourGoal]
kill @e[tag=ParkShow,tag=UniverseField_Ar]

summon armor_stand -4589.5 229.5 4567.5 {Tags:["UniverseParkourGoal","UniverseField_Ar"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,NoAI:1b,CustomNameVisible:true,CustomName:'[{"text":"Parkour Goal","color": "yellow"}]'}
summon armor_stand -4148.5 127.5 4475.5 {Tags:["UniverseParkourStart","UniverseField_Ar"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,NoAI:1b,CustomNameVisible:true,CustomName:'[{"text":"Parkour Start","color": "yellow"}]'}


summon armor_stand -4147.5 130 4473.5 {Tags:["ParkShow","UniverseField_Ar"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,CustomNameVisible:true,CustomName:'[{"text":"Parkour Ranking","color": "red"}]'}
summon armor_stand -4147.5 129.5 4473.5 {Tags:["ParkShow","UniverseField_Ar","Rank1"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,CustomNameVisible:true,CustomName:'[{"text":"None","color": "gray"}]'}
summon armor_stand -4147.5 129.0 4473.5 {Tags:["ParkShow","UniverseField_Ar","Rank2"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,CustomNameVisible:true,CustomName:'[{"text":"None","color": "gray"}]'}
summon armor_stand -4147.5 128.5 4473.5 {Tags:["ParkShow","UniverseField_Ar","Rank3"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,CustomNameVisible:true,CustomName:'[{"text":"None","color": "gray"}]'}

summon armor_stand -4150.5 130 4476.5 {Tags:["ParkShow","UniverseField_Ar","Items"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,CustomNameVisible:true,CustomName:'[{"text":"Reward","color": "gold"}]'}
summon armor_stand -4150.5 129.5 4476.5 {Tags:["ParkShow","UniverseField_Ar","Items"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,CustomNameVisible:true,CustomName:'[{"text": "160s   ","color": "green"},{"text": "深層ダイアモンドブロック","color": "aqua"},{"text": "64x","color": "white"}]'}
summon armor_stand -4150.5 129.0 4476.5 {Tags:["ParkShow","UniverseField_Ar","Items"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,CustomNameVisible:true,CustomName:'[{"text": "140s   ","color": "green"},{"text": "【絶高難易度】<<巫は夕霧を従えて>>","color": "red"},{"text": "3x","color": "white"}]'}
summon armor_stand -4150.5 128.5 4476.5 {Tags:["ParkShow","UniverseField_Ar","Items"],Invisible:1b,Invulnerable:1b,Small:1b,NoGravity:1b,CustomNameVisible:true,CustomName:'[{"text": "120s   ","color": "green"},{"text": "【絶高難易度】<風の精霊と緑の大地>","color": "red"},{"text": "1x","color": "white"}]'}
