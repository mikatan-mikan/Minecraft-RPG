scoreboard players add @s attackDxp 999
scoreboard players add @s attackSxp 999
scoreboard players add @s luckxp 999
scoreboard players add @s speedxp 999
scoreboard players add @s manaxp 999
scoreboard players add @s hpxp 999
clear @s carrot_on_a_stick{GiveXp:1000} 1
function mikatanserver:main/lvup/xpcount/atkdamage
function mikatanserver:main/lvup/xpcount/atkspeed
function mikatanserver:main/lvup/xpcount/health
function mikatanserver:main/lvup/xpcount/luck
function mikatanserver:main/lvup/xpcount/mana
function mikatanserver:main/lvup/xpcount/speed

#give @s carrot_on_a_stick{GiveXp:100,display:{Name:'[{"text": "xp + 100"}]',Lore:['[{"text": "このアイテムを右クリックするとそれぞれのxpを+100する","color": "white"}]','[{"text":"注意：オーバーフローした場合カットされる可能性があります","color": "red"}]']}} 1