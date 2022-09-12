execute in mikatanserver:oremap if block 4 14 -5 bedrock run setblock 4 14 -5 red_concrete
execute in mikatanserver:oremap if block 4 14 -5 air run setblock 4 14 -5 bedrock
execute if block 4 14 -5 bedrock as @a run schedule function mikatanserver:adddim/oremap_one/ruby/ore/5 200t