
data modify block ~ ~ ~ Items[{Slot:0b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.enderslayer[] set from block ~ ~ ~ Items[{Slot:4b}].tag.enderslayer


execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{enderslayer:1}},{Slot:4b,tag:{enderslayer:1}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "green"}]',Lore:['{"text":"エンダー特攻ⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 敵対中の自身から5m以内のエンダーマンに対して2ダメージの追加ダメージを与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;234433760,-311605985,-1471427399,1996056365],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzllODk2MDBiYTc1ZGMzNDZiNzM3NjIwMjRlZjI1YjBkZDlkZmM2ZmM0ZjI2YTY4NGY4ODEyYTg2YWUzZGJkYyJ9fX0="}]}},enderslayer:2} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{enderslayer:2}},{Slot:4b,tag:{enderslayer:2}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "green"}]',Lore:['{"text":"エンダー特攻ⅠⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 敵対中の自身から5m以内のエンダーマンに対して3ダメージの追加ダメージを与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;234433760,-311605985,-1471427399,1996056365],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzllODk2MDBiYTc1ZGMzNDZiNzM3NjIwMjRlZjI1YjBkZDlkZmM2ZmM0ZjI2YTY4NGY4ODEyYTg2YWUzZGJkYyJ9fX0="}]}},enderslayer:3} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{enderslayer:3}},{Slot:4b,tag:{enderslayer:3}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "green"}]',Lore:['{"text":"エンダー特攻ⅠⅤ","color": "gray","bold": false,"italic": false}','[{"text":" 敵対中の自身から5m以内のエンダーマンに対して4ダメージの追加ダメージを与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;234433760,-311605985,-1471427399,1996056365],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzllODk2MDBiYTc1ZGMzNDZiNzM3NjIwMjRlZjI1YjBkZDlkZmM2ZmM0ZjI2YTY4NGY4ODEyYTg2YWUzZGJkYyJ9fX0="}]}},enderslayer:4} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{enderslayer:4}},{Slot:4b,tag:{enderslayer:4}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "green"}]',Lore:['{"text":"エンダー特攻Ⅴ","color": "gray","bold": false,"italic": false}','[{"text":" 敵対中の自身から5m以内のエンダーマンに対して5ダメージの追加ダメージを与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;234433760,-311605985,-1471427399,1996056365],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzllODk2MDBiYTc1ZGMzNDZiNzM3NjIwMjRlZjI1YjBkZDlkZmM2ZmM0ZjI2YTY4NGY4ODEyYTg2YWUzZGJkYyJ9fX0="}]}},enderslayer:5} 1


item replace block ~ ~ ~ container.4 with minecraft:air
playsound minecraft:block.smithing_table.use master @p

#実績カウンタ
scoreboard players add @p CrafterEnchCnt 1