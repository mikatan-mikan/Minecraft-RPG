
data modify block ~ ~ ~ Items[{Slot:0b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.lifesteal[] set from block ~ ~ ~ Items[{Slot:4b}].tag.lifesteal


execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{lifesteal:1}},{Slot:4b,tag:{lifesteal:1}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"ライフスティールⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 1%の確率でhpを4回復する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1013172841,-2095362707,-1903497045,798826484],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc4NGVmZTc1Yzc4NmJhNzQ3MzFmNTVkMDE2ZjM5ODAwMzM0Y2I5OTQ1ZWQ0M2NhYWMxNTBiZTc5YTc3ZDU1YSJ9fX0="}]}},lifesteal:2} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{lifesteal:2}},{Slot:4b,tag:{lifesteal:2}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"ライフスティールⅠⅠⅠ","color": "gray","bold": false,"italic": false}','[{"text":" 1.5%の確率でhpを4回復する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1013172841,-2095362707,-1903497045,798826484],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc4NGVmZTc1Yzc4NmJhNzQ3MzFmNTVkMDE2ZjM5ODAwMzM0Y2I5OTQ1ZWQ0M2NhYWMxNTBiZTc5YTc3ZDU1YSJ9fX0="}]}},lifesteal:3} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{lifesteal:3}},{Slot:4b,tag:{lifesteal:3}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"ライフスティールⅠⅤ","color": "gray","bold": false,"italic": false}','[{"text":" 2%の確率でhpを4回復する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1013172841,-2095362707,-1903497045,798826484],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc4NGVmZTc1Yzc4NmJhNzQ3MzFmNTVkMDE2ZjM5ODAwMzM0Y2I5OTQ1ZWQ0M2NhYWMxNTBiZTc5YTc3ZDU1YSJ9fX0="}]}},lifesteal:4} 1

execute if block ~ ~ ~ dropper[facing=up]{Items:[{Slot:0b,tag:{lifesteal:4}},{Slot:4b,tag:{lifesteal:4}}]} run item replace block ~ ~ ~ container.0 with minecraft:player_head{display:{Name:'[{"text":"enchant box","color": "red"}]',Lore:['{"text":"ライフスティールⅤ","color": "gray","bold": false,"italic": false}','[{"text":" 2.5%の確率でhpを4回復する","color": "blue","bold": false,"italic": false}]']},SkullOwner:{Id:[I;1013172841,-2095362707,-1903497045,798826484],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc4NGVmZTc1Yzc4NmJhNzQ3MzFmNTVkMDE2ZjM5ODAwMzM0Y2I5OTQ1ZWQ0M2NhYWMxNTBiZTc5YTc3ZDU1YSJ9fX0="}]}},lifesteal:5} 1


item replace block ~ ~ ~ container.4 with minecraft:air
playsound minecraft:block.smithing_table.use master @p

#実績カウンタ
scoreboard players add @p CrafterEnchCnt 1