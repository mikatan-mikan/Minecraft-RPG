
data modify block ~ ~ ~ Items[{Slot:0b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.SmeltingLv[] set from block ~ ~ ~ Items[{Slot:4b}].tag.SmeltingLv
data merge storage mikatanserver:tmp {Smelting:true}
data modify block ~ ~ ~ Items[{Slot:0b}].tag.Smelting set from storage mikatanserver:tmp Smelting


execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{SmeltingLv:1}},{Slot:4b,tag:{SmeltingLv:1}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"スメルティングⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" SpdXp対象ブロック採掘時に40%でブロックを焼いた状態で排出する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1387993770,402933672,-1114672654,1138218237],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhZTZmZTE4ZjI3YmJiM2I2MmEwM2U3YzBkYTJhM2Q4OGQzMGI2NTUwOThmZWIzNzdhMzJmNjcyZTMzYjdmNCJ9fX0="}]}},SmeltingLv:2} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{SmeltingLv:2}},{Slot:4b,tag:{SmeltingLv:2}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"スメルティングⅠⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" SpdXp対象ブロック採掘時に60%でブロックを焼いた状態で排出する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1387993770,402933672,-1114672654,1138218237],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhZTZmZTE4ZjI3YmJiM2I2MmEwM2U3YzBkYTJhM2Q4OGQzMGI2NTUwOThmZWIzNzdhMzJmNjcyZTMzYjdmNCJ9fX0="}]}},SmeltingLv:3} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{SmeltingLv:3}},{Slot:4b,tag:{SmeltingLv:3}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"スメルティングⅠⅤ","color": "gray","bold": false,"italic": false}','[{"text":" SpdXp対象ブロック採掘時に80%でブロックを焼いた状態で排出する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1387993770,402933672,-1114672654,1138218237],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhZTZmZTE4ZjI3YmJiM2I2MmEwM2U3YzBkYTJhM2Q4OGQzMGI2NTUwOThmZWIzNzdhMzJmNjcyZTMzYjdmNCJ9fX0="}]}},SmeltingLv:4} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{SmeltingLv:4}},{Slot:4b,tag:{SmeltingLv:4}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"スメルティングⅤ","color": "gray","bold": false,"italic": false}','[{"text":" SpdXp対象ブロック採掘時に100%でブロックを焼いた状態で排出する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;-1387993770,402933672,-1114672654,1138218237],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhZTZmZTE4ZjI3YmJiM2I2MmEwM2U3YzBkYTJhM2Q4OGQzMGI2NTUwOThmZWIzNzdhMzJmNjcyZTMzYjdmNCJ9fX0="}]}},SmeltingLv:5} 1


item replace block ~ ~ ~ container.4 with minecraft:air
playsound minecraft:block.smithing_table.use master @p

#実績カウンタ
scoreboard players add @p ench_smeltingcraft 1