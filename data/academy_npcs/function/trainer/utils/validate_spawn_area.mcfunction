# Validation de la zone de spawn
# Vérifie que c'est un endroit approprié pour un dresseur

# Se positionner à la surface trouvée
execute store result storage academy_npcs:temp surface_x double 1 run scoreboard players get #surface_x academy_npcs
execute store result storage academy_npcs:temp surface_y double 1 run scoreboard players get #surface_y academy_npcs
execute store result storage academy_npcs:temp surface_z double 1 run scoreboard players get #surface_z academy_npcs

function academy_npcs:trainer/utils/validate_at_position with storage academy_npcs:temp