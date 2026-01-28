# Gestion normale de durée de vie (quand pas en combat)
# Logique originale de despawn pour les dresseurs inactifs

# Décrémenter le timer de vie
scoreboard players remove @s trainer_lifetime 1

# Réinitialiser le timer si des joueurs sont proches
execute if entity @a[distance=..20] run scoreboard players set @s trainer_lifetime 36000

# Despawn si le timer atteint zéro
execute if score @s trainer_lifetime matches ..0 run function academy_npcs:trainer/despawn_trainer

# Décrémenter le cooldown de dialogue
execute if score @s dialogue_cooldown matches 1.. run scoreboard players remove @s dialogue_cooldown 1