execute in mikatanserver:oremap if block 1 12 -9 bedrock run setblock 1 12 -9 red_concrete
execute in mikatanserver:oremap if block 1 12 -9 air run setblock 1 12 -9 bedrock
execute if block 1 12 -9 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/8 200t