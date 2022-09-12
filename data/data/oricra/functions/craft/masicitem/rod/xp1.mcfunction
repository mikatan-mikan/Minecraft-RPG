#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with carrot_on_a_stick{GiveXp:1,display:{Name:'[{"text": "xp + 1"}]',Lore:['[{"text": "このアイテムを右クリックするとそれぞれのxpを+1する","color": "white"}]','[{"text":"注意：オーバーフローした場合カットされる可能性があります","color": "red"}]']}} 1
