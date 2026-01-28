# Détection de fin de combat via l'API Cobblemon
# Cette fonction devra être adaptée selon l'API exacte de Cobblemon

# Méthode 1: Vérifier s'il n'y a plus d'entités Pokémon de combat près du dresseur
# execute unless entity @e[type=cobblemon:pokemon,distance=..10,nbt={InBattle:1b}] run function academy_npcs:trainer/battle_ended
# Note: Le type d'entité exact devra être vérifié dans Cobblemon

# Méthode 2: Vérifier via des scores ou tags Cobblemon (à adapter)
# execute if score @s cobblemon_battle_state matches 0 run function academy_npcs:trainer/battle_ended

# Méthode 3: Timeout - si en combat depuis plus de 10 minutes, considérer comme terminé
execute if entity @s[scores={dialogue_cooldown=..0}] run function academy_npcs:trainer/battle_ended

# Méthode 4: Vérifier si le joueur n'est plus en combat
# execute unless entity @a[distance=..10,tag=cobblemon_in_battle] run function academy_npcs:trainer/battle_ended

# Note: Cette fonction devra être adaptée selon les méthodes exactes 
# fournies par l'API Cobblemon pour détecter la fin d'un combat