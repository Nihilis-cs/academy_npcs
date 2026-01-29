# Gestion de la durée de vie des dresseurs
# Despawn automatique si pas de joueurs à proximité

# Vérifier si le dresseur était en combat et que le combat est terminé
execute if entity @s[tag=in_battle] run function academy_npcs:trainer/utils/check_battle_end

# Gérer le timer post-combat (despawn rapide après combat)
execute if entity @s[tag=post_battle] run function academy_npcs:trainer/utils/manage_post_battle

# Gestion normale de durée de vie pour les dresseurs pas en combat
execute unless entity @s[tag=in_battle] unless entity @s[tag=post_battle] run function academy_npcs:trainer/utils/manage_normal_lifetime