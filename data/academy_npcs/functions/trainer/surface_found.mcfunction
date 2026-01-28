# Surface trouvée - stocker les coordonnées et marquer comme trouvée
execute store result score #surface_x academy_npcs run data get entity @s Pos[0]
execute store result score #surface_y academy_npcs run data get entity @s Pos[1]
execute store result score #surface_z academy_npcs run data get entity @s Pos[2]

# Ajuster Y pour le spawn (1 bloc au-dessus du sol)
scoreboard players add #surface_y academy_npcs 1

scoreboard players set #found_surface academy_npcs 1