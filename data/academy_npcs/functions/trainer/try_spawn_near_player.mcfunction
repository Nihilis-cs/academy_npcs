# Tentative de spawn d'un dresseur près d'un joueur
# Exécuté en tant que joueur pour spawn un dresseur à proximité

# Chance de spawn (30% par tentative)
execute store result score #spawn_chance academy_npcs run random value 1..100
execute if score #spawn_chance academy_npcs matches 31.. run return 0

# Initialiser le compteur de tentatives
scoreboard players set #spawn_attempts academy_npcs 0

# Essayer de trouver une position valide (maximum 5 tentatives)
function academy_npcs:trainer/attempt_spawn