execute in mikatanserver:oremap if block -4 13 1 bedrock run setblock -4 13 1 red_concrete
execute in mikatanserver:oremap if block -4 13 1 air run setblock -4 13 1 bedrock
execute if block -4 13 1 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/14 200t