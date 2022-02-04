execute in mikatanserver:oremap if block -16 16 4 bedrock run setblock -16 16 4 red_concrete
execute in mikatanserver:oremap if block -16 16 4 air run setblock -16 16 4 bedrock
execute if block -16 16 4 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/25 200t