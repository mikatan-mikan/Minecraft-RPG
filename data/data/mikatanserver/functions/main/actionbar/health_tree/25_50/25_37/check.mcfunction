execute if score $now_hp PlayerHealth10 matches 31.. run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"#ff6b00"}]'}
execute if score $now_hp PlayerHealth10 matches ..30 run data merge storage mikatanserver:actionbar {HMain:'[{"score":{"objective":"PlayerHealth10","name":"@s"},"font":"down","color":"#ff5500"}]'}