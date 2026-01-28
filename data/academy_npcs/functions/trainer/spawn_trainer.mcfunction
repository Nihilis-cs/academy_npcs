# Spawn effectif d'un dresseur Pokémon (Version avec vérification de surface)
# Arguments: spawn_x, spawn_z

# Vérifier la validité de la position avant le spawn
function academy_npcs:trainer/check_spawn_position with storage academy_npcs:temp

# Spawner seulement si la position est valide
execute if score #spawn_valid academy_npcs matches 1 run function academy_npcs:trainer/spawn_trainer_validated
execute if score #spawn_valid academy_npcs matches 0 run return 0