# Validation finale à la position trouvée
# Arguments: surface_x, surface_y, surface_z

# Stocker les positions pour utilisation ultérieure
execute store result score #surface_x academy_npcs run data get storage academy_npcs:temp surface_x
execute store result score #surface_y academy_npcs run data get storage academy_npcs:temp surface_y
execute store result score #surface_z academy_npcs run data get storage academy_npcs:temp surface_z

# Se positionner à la surface trouvée pour les vérifications
$execute positioned $(surface_x) $(surface_y) $(surface_z) run function academy_npcs:trainer/check_final_position