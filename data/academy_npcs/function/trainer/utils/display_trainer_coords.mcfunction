# Affiche les coordonnées formatées avec macro (fonction utilitaire)
# Appelé par get_nearest_trainer_coords avec les coordonnées en paramètres

$tellraw @s [{"text":"  Coordonnées: ","color":"gray"},{"text":"X=$(x) Y=$(y) Z=$(z)","color":"yellow"}]