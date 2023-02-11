
data modify block ~ ~ ~ Items[{Slot:0b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.regen[] set from block ~ ~ ~ Items[{Slot:4b}].tag.regen


execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{regen:1}},{Slot:4b,tag:{regen:1}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "gold"}]',Lore:['{"text":"リジェネレーションⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 2%の確率で再生能力を付与する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-599789264,1927889751,-1225504832,1881246825],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmNhYWQ4NmM3MDhlYjI3NzczYTY0ZjkzNDc5ZTM5ZjA0NDJhNWNlMDg2YjYzMjk2YzdiN2QxY2Y1MTE2MDk1NiJ9fX0="}]}},regen:2} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{regen:2}},{Slot:4b,tag:{regen:2}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "gold"}]',Lore:['{"text":"リジェネレーションⅠⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 3%の確率で再生能力を付与する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-599789264,1927889751,-1225504832,1881246825],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmNhYWQ4NmM3MDhlYjI3NzczYTY0ZjkzNDc5ZTM5ZjA0NDJhNWNlMDg2YjYzMjk2YzdiN2QxY2Y1MTE2MDk1NiJ9fX0="}]}},regen:3} 1

item replace block ~ ~ ~ container.4 with minecraft:air
playsound minecraft:block.smithing_table.use master @p

#実績カウンタ
scoreboard players add @p CrafterEnchCnt 1