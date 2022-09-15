
data modify block ~ ~ ~ Items[{Slot:0b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.en_experience[] set from block ~ ~ ~ Items[{Slot:4b}].tag.en_experience


execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{en_experience:1}},{Slot:4b,tag:{en_experience:1}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "blue"}]',Lore:['{"text":"エクスペリエンスⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" モブをキルしたときXpPointが6上昇する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1360164473,-1559215876,-1510111850,1395907571],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE4YWYxNGNiNDA0NmMzMjY3OGU5YTk3YmQ3ODQ2MWI5NzUyNGI0MTAyMjMzNWExMmJiYzQ1YmM2OTg1YTViNCJ9fX0="}]}},en_experience:2} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{en_experience:2}},{Slot:4b,tag:{en_experience:2}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "blue"}]',Lore:['{"text":"エクスペリエンスⅠⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" モブをキルしたときXpPointが9上昇する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1360164473,-1559215876,-1510111850,1395907571],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE4YWYxNGNiNDA0NmMzMjY3OGU5YTk3YmQ3ODQ2MWI5NzUyNGI0MTAyMjMzNWExMmJiYzQ1YmM2OTg1YTViNCJ9fX0="}]}},en_experience:3} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{en_experience:3}},{Slot:4b,tag:{en_experience:3}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "blue"}]',Lore:['{"text":"エクスペリエンスⅠⅤ","color": "gray","bold": false,"italic": false}','[{"text":" モブをキルしたときXpPointが12上昇する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1360164473,-1559215876,-1510111850,1395907571],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE4YWYxNGNiNDA0NmMzMjY3OGU5YTk3YmQ3ODQ2MWI5NzUyNGI0MTAyMjMzNWExMmJiYzQ1YmM2OTg1YTViNCJ9fX0="}]}},en_experience:4} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{en_experience:4}},{Slot:4b,tag:{en_experience:4}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "blue"}]',Lore:['{"text":"エクスペリエンスⅤ","color": "gray","bold": false,"italic": false}','[{"text":" モブをキルしたときXpPointが15上昇する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1360164473,-1559215876,-1510111850,1395907571],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE4YWYxNGNiNDA0NmMzMjY3OGU5YTk3YmQ3ODQ2MWI5NzUyNGI0MTAyMjMzNWExMmJiYzQ1YmM2OTg1YTViNCJ9fX0="}]}},en_experience:5} 1


item replace block ~ ~ ~ container.4 with minecraft:air
playsound minecraft:block.smithing_table.use master @p

#実績カウンタ
scoreboard players add @p CrafterEnchCnt 1