# Trouve la surface la plus haute valide pour le spawn
# Descend depuis Y=319 jusqu'à trouver un bloc solide avec de l'espace au-dessus

scoreboard players set #found_surface academy_npcs 0

# Descendre jusqu'à trouver un bloc solide
execute positioned ~ ~-1 ~ if block ~ ~ ~ #academy_npcs:solid_blocks if block ~ ~1 ~ #academy_npcs:spawnable_air if block ~ ~2 ~ #academy_npcs:spawnable_air run function academy_npcs:trainer/surface_found
execute if score #found_surface academy_npcs matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ #academy_npcs:solid_blocks if block ~ ~1 ~ #academy_npcs:spawnable_air if block ~ ~2 ~ #academy_npcs:spawnable_air run function academy_npcs:trainer/surface_found
execute if score #found_surface academy_npcs matches 0 positioned ~ ~-2 ~ if block ~ ~ ~ #academy_npcs:solid_blocks if block ~ ~1 ~ #academy_npcs:spawnable_air if block ~ ~2 ~ #academy_npcs:spawnable_air run function academy_npcs:trainer/surface_found
execute if score #found_surface academy_npcs matches 0 positioned ~ ~-3 ~ if block ~ ~ ~ #academy_npcs:solid_blocks if block ~ ~1 ~ #academy_npcs:spawnable_air if block ~ ~2 ~ #academy_npcs:spawnable_air run function academy_npcs:trainer/surface_found
execute if score #found_surface academy_npcs matches 0 positioned ~ ~-4 ~ if block ~ ~ ~ #academy_npcs:solid_blocks if block ~ ~1 ~ #academy_npcs:spawnable_air if block ~ ~2 ~ #academy_npcs:spawnable_air run function academy_npcs:trainer/surface_found
execute if score #found_surface academy_npcs matches 0 positioned ~ ~-5 ~ if block ~ ~ ~ #academy_npcs:solid_blocks if block ~ ~1 ~ #academy_npcs:spawnable_air if block ~ ~2 ~ #academy_npcs:spawnable_air run function academy_npcs:trainer/surface_found

# Continuer la recherche récursivement si pas trouvé et pas trop bas
execute if score #found_surface academy_npcs matches 0 positioned ~ ~-6 ~ if entity @s[y=70,dy=999999] run function academy_npcs:trainer/find_surface