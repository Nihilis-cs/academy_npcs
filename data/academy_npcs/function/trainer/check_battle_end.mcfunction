# Vérification de la fin du combat
# Détecte quand un combat Cobblemon se termine

# Décrémenter le timer de vérification
scoreboard players remove @s battle_check_timer 1

# Vérifier régulièrement si le combat est terminé (toutes les 5 secondes)
execute if score @s battle_check_timer matches ..0 run function academy_npcs:trainer/detect_battle_end
execute if score @s battle_check_timer matches ..0 run scoreboard players set @s battle_check_timer 100

# Alternative: détecter si le joueur s'éloigne (combat probablement terminé)
execute unless entity @a[distance=..20] run function academy_npcs:trainer/battle_ended