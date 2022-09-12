execute in mikatanserver:oremap if block -4 14 1 bedrock run setblock -4 14 1 red_concrete
execute in mikatanserver:oremap if block -4 14 1 air run setblock -4 14 1 bedrock
execute if block -4 14 1 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/15 200t