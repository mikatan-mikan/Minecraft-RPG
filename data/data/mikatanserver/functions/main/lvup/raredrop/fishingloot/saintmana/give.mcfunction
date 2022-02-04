scoreboard players set @s MK.r.RandValue 100
function mikatanlib:rand/rand_exe
scoreboard players add @s[scores={MK.r.RandValue=0..10}] manaxp 1
tellraw @s[scores={MK.r.RandValue=0..10}] [{"text": "Good luck>>","color": "aqua","bold": true},{"text": " Mana Xp +1!!","color": "blue"}]

scoreboard players add @s[scores={MK.r.RandValue=11..20}] manaxp 3
tellraw @s[scores={MK.r.RandValue=11..20}] [{"text": "Good luck>>","color": "aqua","bold": true},{"text": " Mana Xp +3!!","color": "blue"}]

scoreboard players add @s[scores={MK.r.RandValue=21..30}] manaxp 5
tellraw @s[scores={MK.r.RandValue=21..30}] [{"text": "Good luck>>","color": "aqua","bold": true},{"text": " Mana Xp +5!!","color": "blue"}]

scoreboard players add @s[scores={MK.r.RandValue=31..40}] manaxp 7
tellraw @s[scores={MK.r.RandValue=31..40}] [{"text": "Good luck>>","color": "aqua","bold": true},{"text": " Mana Xp +7!!","color": "blue"}]

scoreboard players add @s[scores={MK.r.RandValue=41..50}] manaxp 8
tellraw @s[scores={MK.r.RandValue=41..50}] [{"text": "Good luck>>","color": "aqua","bold": true},{"text": " Mana Xp +8!!","color": "blue"}]

scoreboard players add @s[scores={MK.r.RandValue=51..60}] manaxp 9
tellraw @s[scores={MK.r.RandValue=51..60}] [{"text": "Good luck>>","color": "aqua","bold": true},{"text": " Mana Xp +9!!","color": "blue"}]

scoreboard players add @s[scores={MK.r.RandValue=61..70}] manaxp 10
tellraw @s[scores={MK.r.RandValue=61..70}] [{"text": "Good luck>>","color": "aqua","bold": true},{"text": " Mana Xp +10!!","color": "blue"}]

scoreboard players add @s[scores={MK.r.RandValue=71..80}] manaxp 1
tellraw @s[scores={MK.r.RandValue=71..80}] [{"text": "Good luck>>","color": "aqua","bold": true},{"text": " Mana Xp +1!!","color": "blue"}]

scoreboard players add @s[scores={MK.r.RandValue=81..90}] manaxp 1
tellraw @s[scores={MK.r.RandValue=81..90}] [{"text": "Good luck>>","color": "aqua","bold": true},{"text": " Mana Xp +1!!","color": "blue"}]

scoreboard players add @s[scores={MK.r.RandValue=91..100}] manaxp 1
tellraw @s[scores={MK.r.RandValue=91..100}] [{"text": "Good luck>>","color": "aqua","bold": true},{"text": " Mana Xp +1!!","color": "blue"}]