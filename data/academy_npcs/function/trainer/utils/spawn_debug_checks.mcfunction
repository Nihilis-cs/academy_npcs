# Vérifications détaillées pour le debug
# Exécuté depuis spawn_debug après avoir trouvé une surface

# Se positionner à la surface pour les vérifications
execute store result storage academy_npcs:temp surface_x double 1 run scoreboard players get #surface_x academy_npcs
execute store result storage academy_npcs:temp surface_y double 1 run scoreboard players get #surface_y academy_npcs
execute store result storage academy_npcs:temp surface_z double 1 run scoreboard players get #surface_z academy_npcs

# Exécuter les vérifications à cette position
function academy_npcs:trainer/utils/spawn_debug_at_position with storage academy_npcs:temp
