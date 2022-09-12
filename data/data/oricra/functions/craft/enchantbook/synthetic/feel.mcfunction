data modify block ~ ~ ~ Items[{Slot:0b}].tag.display.Lore insert 0 from block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore[]
data modify block ~ ~ ~ Items[{Slot:0b}].tag.inocent[] set from block ~ ~ ~ Items[{Slot:4b}].tag.inocent
item replace block ~ ~ ~ container.4 with minecraft:air
playsound minecraft:block.smithing_table.use master @p

#実績カウンタ
scoreboard players add @p CrafterEnchCnt 1