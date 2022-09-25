#テンプレート
data merge block ~ ~ ~ {Items:[]}
playsound minecraft:block.smithing_table.use master @p

#アイテム
item replace block ~ ~ ~ container.4 with minecraft:player_head{display:{Name:'[{"text": "onion ring","color":"red"}]',Lore:['[{"text":"このアイテムをインベントリの左上セットすると"}]','[{"text":"オニオンの採取量が増加する"}]']},onion_talisman:2b,SkullOwner:{Id:[I;-142150818,-1603218878,994201811,-163169887],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlMDM2ZTMyN2NiOWQ0ZDhmZWYzNjg5N2E4OTYyNGI1ZDliMThmNzA1Mzg0Y2UwZDdlZDFlMWZjN2Y1NiJ9fX0="}]}}} 1
#進捗
advancement grant @p only mikatanserver:event/farm/onion_ring
