# Spawn d'un dresseur à une position validée
# Utilise les coordonnées stockées dans les scores

# Convertir les coordonnées pour le spawn
execute store result storage academy_npcs:temp spawn_x double 1 run scoreboard players get #surface_x academy_npcs
execute store result storage academy_npcs:temp spawn_y double 1 run scoreboard players get #surface_y academy_npcs
execute store result storage academy_npcs:temp spawn_z double 1 run scoreboard players get #surface_z academy_npcs

# Spawn du dresseur à la position validée
function academy_npcs:trainer/spawn_trainer_at_surface with storage academy_npcs:temp