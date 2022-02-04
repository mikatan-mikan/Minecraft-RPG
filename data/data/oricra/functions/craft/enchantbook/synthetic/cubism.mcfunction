
data modify block ~ ~ ~ Items[{Slot:0b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.cubism[] set from block ~ ~ ~ Items[{Slot:4b}].tag.cubism


execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{cubism:1}},{Slot:4b,tag:{cubism:1}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "green"}]',Lore:['{"text":"キュービズムⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 攻撃対象のスライム・マグマキューブに対して2ダメージの追加ダメージを与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1192102546,-848082440,-1919017834,-1907144952],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzllODk2MDBiYTc1ZGMzNDZiNzM3NjIwMjRlZjI1YjBkZDlkZmM2ZmM0ZjI2YTY4NGY4ODEyYTg2YWUzZGJkYyJ9fX0="}]}},cubism:2} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{cubism:2}},{Slot:4b,tag:{cubism:2}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "green"}]',Lore:['{"text":"キュービズムⅠⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 攻撃対象のスライム・マグマキューブに対して3ダメージの追加ダメージを与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1192102546,-848082440,-1919017834,-1907144952],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzllODk2MDBiYTc1ZGMzNDZiNzM3NjIwMjRlZjI1YjBkZDlkZmM2ZmM0ZjI2YTY4NGY4ODEyYTg2YWUzZGJkYyJ9fX0="}]}},cubism:3} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{cubism:3}},{Slot:4b,tag:{cubism:3}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "green"}]',Lore:['{"text":"キュービズムⅠⅤ","color": "gray","bold": false,"italic": false}','[{"text":" 攻撃対象のスライム・マグマキューブに対して4ダメージの追加ダメージを与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1192102546,-848082440,-1919017834,-1907144952],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzllODk2MDBiYTc1ZGMzNDZiNzM3NjIwMjRlZjI1YjBkZDlkZmM2ZmM0ZjI2YTY4NGY4ODEyYTg2YWUzZGJkYyJ9fX0="}]}},cubism:4} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{cubism:4}},{Slot:4b,tag:{cubism:4}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "green"}]',Lore:['{"text":"キュービズムⅤ","color": "gray","bold": false,"italic": false}','[{"text":" 攻撃対象のスライム・マグマキューブに対して5ダメージの追加ダメージを与える","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1192102546,-848082440,-1919017834,-1907144952],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzllODk2MDBiYTc1ZGMzNDZiNzM3NjIwMjRlZjI1YjBkZDlkZmM2ZmM0ZjI2YTY4NGY4ODEyYTg2YWUzZGJkYyJ9fX0="}]}},cubism:5} 1


item replace block ~ ~ ~ container.4 with minecraft:air
playsound minecraft:block.smithing_table.use master @p

#実績カウンタ
scoreboard players add @p CrafterEnchCnt 1

#実績
advancement grant @p only mikatanserver:customcrafter/ench/cubism