
data modify block ~ ~ ~ Items[{Slot:0b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.giantkillar[] set from block ~ ~ ~ Items[{Slot:4b}].tag.giantkillar


execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{giantkillar:1}},{Slot:4b,tag:{giantkillar:1}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "gold"}]',Lore:['{"text":"ジャイアントキラーⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 最大hpが自身より多い敵に対してダメージが2上昇する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-716421548,2131969772,-1327206943,1165692828],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBkODQxNGNmY2JiZGZkYjM4M2E4YjNmMzFkMjg5MTQ2ZjM4NjcyZDU3NGUxNTQyOTZlMTEwYWFkOWUxMTQyOCJ9fX0="}]}},giantkillar:2} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{giantkillar:2}},{Slot:4b,tag:{giantkillar:2}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "gold"}]',Lore:['{"text":"ジャイアントキラーⅠⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 最大hpが自身より多い敵に対してダメージが3上昇する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-716421548,2131969772,-1327206943,1165692828],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBkODQxNGNmY2JiZGZkYjM4M2E4YjNmMzFkMjg5MTQ2ZjM4NjcyZDU3NGUxNTQyOTZlMTEwYWFkOWUxMTQyOCJ9fX0="}]}},giantkillar:3} 1


item replace block ~ ~ ~ container.4 with minecraft:air
playsound minecraft:block.smithing_table.use master @p

#実績カウンタ
scoreboard players add @p CrafterEnchCnt 1