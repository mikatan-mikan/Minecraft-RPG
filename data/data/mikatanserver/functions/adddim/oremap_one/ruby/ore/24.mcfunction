execute in mikatanserver:oremap if block -14 14 0 bedrock run setblock -14 14 0 red_concrete
execute in mikatanserver:oremap if block -14 14 0 air run setblock -14 14 0 bedrock
execute if block -14 14 0 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/24 200t