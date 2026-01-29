# Spawn manuel d'un dresseur
# Utilisable par les admins pour tester ou forcer un spawn

# Préparer les coordonnées actuelles du joueur
execute store result storage academy_npcs:temp check_x double 1 run data get entity @s Pos[0]
execute store result storage academy_npcs:temp check_z double 1 run data get entity @s Pos[2]

# Vérifier si la position actuelle est valide
function academy_npcs:trainer/utils/check_spawn_position with storage academy_npcs:temp

# Spawn à la position validée ou message d'erreur
execute if score #spawn_valid academy_npcs matches 1 run function academy_npcs:trainer/utils/spawn_trainer_validated
execute if score #spawn_valid academy_npcs matches 1 run tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Dresseur spawné manuellement !","color":"green"}]
execute if score #spawn_valid academy_npcs matches 0 run tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Position invalide pour le spawn ! (sol inapproprié, trop près d'un autre dresseur, ou espace insuffisant)","color":"red"}]