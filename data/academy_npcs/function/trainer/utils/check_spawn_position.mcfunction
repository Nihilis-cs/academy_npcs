# Vérification de la validité d'une position de spawn
# Arguments: check_x, check_z
# Retourne 1 dans #spawn_valid si la position est valide, 0 sinon

scoreboard players set #spawn_valid academy_npcs 0

# Trouver la surface la plus haute à cette position
$execute positioned $(check_x) 319 $(check_z) run function academy_npcs:trainer/utils/find_surface

# Vérifier si une surface valide a été trouvée
execute if score #found_surface academy_npcs matches 1 run function academy_npcs:trainer/utils/validate_spawn_area