summon magma_cube ~ ~ ~ {Size:3,Motion:[1.0,0.0,0.0],Tags:["DontTp","RAID_RedCrystalMob"]}
summon magma_cube ~ ~ ~ {Size:3,Motion:[0.0,0.0,1.0],Tags:["DontTp","RAID_RedCrystalMob"]}
summon magma_cube ~ ~ ~ {Size:3,Motion:[-1.0,0.0,0.0],Tags:["DontTp","RAID_RedCrystalMob"]}
summon magma_cube ~ ~ ~ {Size:3,Motion:[0.0,0.0,-1.0],Tags:["DontTp","RAID_RedCrystalMob"]}
execute as @a[tag=RAID_RedCrystal_Player] at @s run playsound entity.ghast.shoot master @s ~ ~ ~ 2 2