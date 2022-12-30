data remove block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore[-1]
scoreboard players remove $delete_line TMP 1
execute if score $delete_line TMP matches 1.. run function mikatanserver:main/lore/re_del_lore