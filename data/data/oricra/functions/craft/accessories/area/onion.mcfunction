#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:player_head{display:{Name:'[{"text": "onion talisman","color":"yellow"}]',Lore:['[{"text":"このアイテムをインベントリの左上セットすると"}]','[{"text":"オニオンの採取量が増加する"}]']},onion_talisman:1b,SkullOwner:{Id:[I;-788482384,1217535514,129590423,-457813198],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTZlY2M0NmRjM2RjODVmY2Q1NzE5ODE3NmVlODQxZjFhMDQxYjE1ZjczZWNiMTlmZGU2MmVlNDMxNWM0YTYifX19"}]}}} 1
#進捗
advancement grant @p only mikatanserver:event/farm/onion_talisman