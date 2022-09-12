scoreboard players add @s attackDxp 599
scoreboard players add @s attackSxp 399
scoreboard players add @s luckxp 399
scoreboard players add @s speedxp 4999
scoreboard players add @s manaxp 299
scoreboard players add @s hpxp 499
clear @s carrot_on_a_stick{GiveXp:"return"} 1
function mikatanserver:main/lvup/xpcount/atkdamage
function mikatanserver:main/lvup/xpcount/atkspeed
function mikatanserver:main/lvup/xpcount/health
function mikatanserver:main/lvup/xpcount/luck
function mikatanserver:main/lvup/xpcount/mana
function mikatanserver:main/lvup/xpcount/speed

#give @s carrot_on_a_stick{GiveXp:"return",display:{Name:'[{"text": "xp + ?"}]',Lore:['[{"text": "このアイテムを右クリックするとそれぞれのxpを+?する","color": "white"}]','[{"text":"注意：オーバーフローした場合カットされる可能性があります","color": "red"}]']}} 1