# Spawn du dresseur à la surface exacte validée
# Arguments: spawn_x, spawn_y, spawn_z

# Spawner le villager à la position exacte
$summon villager $(spawn_x) $(spawn_y) $(spawn_z) {Tags:["pokemon_trainer","new_trainer"],Brain:{memories:{}},HurtByTimestamp:0,Attributes:[{Name:"generic.movement_speed",Base:0.0}],Invulnerable:0b,FallFlying:0b,ForcedAge:0,PortalCooldown:0,AbsorptionAmount:0.0f,FallDistance:0.0f,DeathTime:0s,XpLevel:0,XpP:0.0f,Age:0,Motion:[0.0d,0.0d,0.0d],Health:20.0f,LeftHanded:0b,Air:300s,OnGround:1b,Rotation:[0.0f,0.0f],HandDropChances:[0.085f,0.085f],PersistenceRequired:1b,UUID:[I;1,1,1,1],ArmorDropChances:[0.085f,0.085f,0.085f,0.085f],DeathLootTable:"minecraft:empty",XpSeed:0,VillagerData:{profession:"minecraft:nitwit",level:1,type:"minecraft:plains"},Xp:0,Willing:0b,VillagerXp:0,LastGossipDecay:0L,RestocksToday:0,data:{}}

# Initialiser le nouveau dresseur
$execute positioned $(spawn_x) $(spawn_y) $(spawn_z) as @e[type=villager,tag=new_trainer,distance=..2,limit=1] run function academy_npcs:trainer/init_trainer

# Effet de spawn réussi
$particle minecraft:happy_villager $(spawn_x) $(spawn_y) $(spawn_z) 0.5 1 0.5 0.1 10