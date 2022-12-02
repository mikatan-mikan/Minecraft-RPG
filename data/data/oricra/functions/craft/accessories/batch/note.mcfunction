#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:player_head{display:{Name:'[{"text": "note batch","color":"blue"}]',Lore:['[{"text":"このアイテムをインベントリの左上からふたつ横にセットすると攻撃ヒット時に楽器シリーズの進捗達成数×20%でマナが+1される"}]']},SkullOwner:{Id:[I;-658315617,1345341002,-1441385699,1450688462],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGRkODE3ZGMzMThmZDZiNWQxNTM1ZGYxMmIwOTgxMTdiMzhkOGIxNmVlNDc5MTZiNDEzZTQ5N2M3YmViNWUxZSJ9fX0="}]}},tier:1} 1

#進捗
advancement grant @p only mikatanserver:customcrafter/accessories/batch/note