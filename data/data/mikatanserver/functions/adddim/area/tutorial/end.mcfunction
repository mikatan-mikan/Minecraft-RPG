give @s carrot_on_a_stick{GiveXp:100,FirstLogin:1b,display:{Name:'[{"text": "右クリックして xp + 100"}]'}} 1
give @s netherite_block 5
give @s elytra 1
give @s firework_rocket 64
give @s minecraft:carrot_on_a_stick{CustomModelData:91,display:{Name:'[{"text":"右クリックでXP表示サイズを変更","color":"red","bold": true}]'},num:1b} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:91,display:{Name:'[{"text":"右クリックでXP表示形式を変更","color":"red","bold": true}]'}} 1
scoreboard players set @s TutorialFlag 2
effect clear @s
function mikatanserver:adddim/area/tutorial/end2