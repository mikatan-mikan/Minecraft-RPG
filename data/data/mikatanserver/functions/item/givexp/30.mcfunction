scoreboard players add @s attackDxp 29
scoreboard players add @s attackSxp 29
scoreboard players add @s luckxp 29
scoreboard players add @s speedxp 29
scoreboard players add @s manaxp 29
scoreboard players add @s hpxp 29
clear @s carrot_on_a_stick{GiveXp:30} 1
function mikatanserver:main/lvup/xpcount/atkdamage
function mikatanserver:main/lvup/xpcount/atkspeed
function mikatanserver:main/lvup/xpcount/health
function mikatanserver:main/lvup/xpcount/luck
function mikatanserver:main/lvup/xpcount/mana
function mikatanserver:main/lvup/xpcount/speed

#give @s carrot_on_a_stick{GiveXp:30,display:{Name:'[{"text": "xp + 30"}]',Lore:['[{"text": "このアイテムを右クリックするとそれぞれのxpを+30する","color": "white"}]','[{"text":"注意：オーバーフローした場合カットされる可能性があります","color": "red"}]']}} 1