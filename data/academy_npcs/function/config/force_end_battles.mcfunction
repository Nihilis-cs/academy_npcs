# Commande manuelle pour forcer la fin de tous les combats en cours
# Utile pour les tests ou en cas de problème

# Marquer tous les dresseurs en combat comme ayant terminé
execute as @e[type=villager,tag=in_battle] run function academy_npcs:trainer/utils/battle_ended

# Message de confirmation
tellraw @s [{"text":"[Academy NPCs] ","color":"gold"},{"text":"Tous les combats en cours ont été forcés à se terminer.","color":"yellow"}]