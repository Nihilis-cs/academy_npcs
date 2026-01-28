# Spawn de debug - spawn forcé avec messages de diagnostic
# Contourne les vérifications strictes pour permettre les tests

tellraw @s [{"text":"=== DEBUG SPAWN ===","color":"yellow","bold":true}]

# Préparer les coordonnées du joueur
execute store result storage academy_npcs:temp check_x double 1 run data get entity @s Pos[0]
execute store result storage academy_npcs:temp check_z double 1 run data get entity @s Pos[2]

# Chercher la surface
scoreboard players set #found_surface academy_npcs 0
function academy_npcs:trainer/check_spawn_position with storage academy_npcs:temp

# Afficher les résultats de chaque vérification
execute if score #found_surface academy_npcs matches 1 run tellraw @s [{"text":"✓ Surface trouvée","color":"green"}]
execute if score #found_surface academy_npcs matches 0 run tellraw @s [{"text":"✗ Aucune surface valide trouvée","color":"red"}]

execute if score #found_surface academy_npcs matches 1 run tellraw @s [{"text":"Position: ","color":"gray"},{"score":{"name":"#surface_x","objective":"academy_npcs"},"color":"white"},{"text":" ","color":"white"},{"score":{"name":"#surface_y","objective":"academy_npcs"},"color":"white"},{"text":" ","color":"white"},{"score":{"name":"#surface_z","objective":"academy_npcs"},"color":"white"}]

# Vérifications détaillées si surface trouvée
execute if score #found_surface academy_npcs matches 1 run function academy_npcs:trainer/spawn_debug_checks

# Forcer le spawn si surface trouvée (ignore certaines restrictions)
execute if score #found_surface academy_npcs matches 1 run function academy_npcs:trainer/spawn_trainer_validated
execute if score #found_surface academy_npcs matches 1 run tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Dresseur spawné en mode debug !","color":"green"}]
execute if score #found_surface academy_npcs matches 0 run tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Impossible de trouver une surface de spawn dans cette zone.","color":"red"}]

tellraw @s [{"text":"==================","color":"yellow","bold":true}]
