#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:potion{display:{Name:'[{"text":"pumpkin beer","color":"gold"}]',Lore:['[{"text":"新たに見つかった飲み物"}]','[{"text":"相変わらず効果は分からない"}]']},CustomPotionColor:16743168,HideFlags:34,CustomPotionEffects:[{Id:3,Amplifier:1,Duration:6000,ShowParticles:false},{Id:9,Amplifier:0,Duration:60},{Id:17,Amplifier:0,Duration:6000}]} 1