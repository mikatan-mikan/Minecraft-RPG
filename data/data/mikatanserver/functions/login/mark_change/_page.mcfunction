tellraw @s [{"text": "========================================","color": "gold"}]


execute if entity @s[advancements={mikatanserver:root=true}] run data merge storage mikatanserver:mark {choice:'{"text":"選択","hoverEvent": {"action":"show_text","contents":{"text":"クリックして変更する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 2000000001"},"color":"yellow"}'}
execute unless entity @s[advancements={mikatanserver:root=true}] run data merge storage mikatanserver:mark {choice:'{"text":"選択","color":"gray"}'}
data merge storage mikatanserver:mark {conditions:'{"text": "サーバーにログインする"}',mark: '{"text": "\\uE044","font":"add_fonts"}'}
function mikatanserver:login/mark_change/_out

execute if entity @s[advancements={mikatanserver:customcrafter/rod_and_sword/rare_stone_2=true}] run data merge storage mikatanserver:mark {choice:'{"text":"選択","hoverEvent": {"action":"show_text","contents":{"text":"クリックして変更する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 2000000002"},"color":"yellow"}'}
execute unless entity @s[advancements={mikatanserver:customcrafter/rod_and_sword/rare_stone_2=true}] run data merge storage mikatanserver:mark {choice:'{"text":"選択","color":"gray"}'}
data merge storage mikatanserver:mark {conditions:'{"text": "翠創杖を作成する"}',mark: '{"text": "\\uE043","font":"add_fonts"}'}
function mikatanserver:login/mark_change/_out

execute if entity @s[advancements={mikatanserver:customcrafter/reward/ice=true}] run data merge storage mikatanserver:mark {choice:'{"text":"選択","hoverEvent": {"action":"show_text","contents":{"text":"クリックして変更する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 2000000003"},"color":"yellow"}'}
execute unless entity @s[advancements={mikatanserver:customcrafter/reward/ice=true}] run data merge storage mikatanserver:mark {choice:'{"text":"選択","color":"gray"}'}
data merge storage mikatanserver:mark {conditions:'{"text": "effort symbol [ice]を作成する"}',mark: '{"text": "\\uE041","font":"add_fonts"}'}
function mikatanserver:login/mark_change/_out

execute if entity @s[advancements={mikatanserver:customcrafter/armor/angel_elytra=true}] run data merge storage mikatanserver:mark {choice:'{"text":"選択","hoverEvent": {"action":"show_text","contents":{"text":"クリックして変更する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 2000000005"},"color":"yellow"}'}
execute unless entity @s[advancements={mikatanserver:customcrafter/armor/angel_elytra=true}] run data merge storage mikatanserver:mark {choice:'{"text":"選択","color":"gray"}'}
data merge storage mikatanserver:mark {conditions:'{"text": "archangel elytraを作成する"}',mark: '{"text": "\\uE045","font":"add_fonts"}'}
function mikatanserver:login/mark_change/_out

execute if entity @s[advancements={mikatanserver:customcrafter/add_stone/ruins=true}] run data merge storage mikatanserver:mark {choice:'{"text":"選択","hoverEvent": {"action":"show_text","contents":{"text":"クリックして変更する","color":"green"}},"clickEvent":{"action": "run_command","value": "/trigger FirstChatFlag set 2000000004"},"color":"yellow"}'}
execute unless entity @s[advancements={mikatanserver:customcrafter/add_stone/ruins=true}] run data merge storage mikatanserver:mark {choice:'{"text":"選択","color":"gray"}'}
data merge storage mikatanserver:mark {conditions:'{"text": "ruins symbolを作成する"}',mark: '{"text": "\\uE042","font":"add_fonts"}'}
function mikatanserver:login/mark_change/_out


tellraw @s [{"text": "========================================","color": "gold"}]