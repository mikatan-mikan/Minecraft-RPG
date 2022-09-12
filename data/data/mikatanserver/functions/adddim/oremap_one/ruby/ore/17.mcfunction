execute in mikatanserver:oremap if block -4 14 2 bedrock run setblock -4 14 2 red_concrete
execute in mikatanserver:oremap if block -4 14 2 air run setblock -4 14 2 bedrock
execute if block -4 14 2 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/17 200t