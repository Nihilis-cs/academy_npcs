# Academy NPCs - Dresseurs Pokémon Aléatoires

Ce datapack génère automatiquement des dresseurs Pokémon avec des équipes équilibrées selon la distance du spawn mondial.

## 🚀 Installation

1. Placez le dossier dans votre monde : `world/datapacks/academy_npcs`
2. Rechargez les datapacks : `/reload`
3. Le système s'installe automatiquement au chargement

## 🎮 Utilisation

### Commandes principales
- `/function academy_npcs:config/start` - Démarrer le système de spawn automatique
- `/function academy_npcs:config/stop` - Arrêter le système et retirer tous les dresseurs  
- `/function academy_npcs:config/reload` - Recharger la configuration des équipes
- `/function academy_npcs:trainer/spawn_manual` - Spawner un dresseur manuellement

### Fonctionnement
1. **Spawn automatique** : Toutes les 2 minutes, chance de spawn près d'un joueur aléatoire
2. **Zones d'équilibrage** : 4 zones basées sur la distance du spawn (0-500, 500-2000, 2000-5000, 5000+ blocs)
3. **Interaction** : Approchez-vous d'un dresseur pour déclencher le dialogue
4. **Combat** : Cliquez sur "ACCEPTER LE COMBAT" pour lancer le duel

## ⚙️ Configuration des Équipes

### Fichier de configuration
Éditez le fichier : `data/academy_npcs/functions/config/teams.mcfunction`

### Format des équipes
```mcfunction
# Zone X (description)
data modify storage academy_npcs:teams zone_X set value []
data modify storage academy_npcs:teams zone_X append value {name:"Nom du Dresseur", pokemon:["pokemon1","pokemon2","pokemon3"]}
```

### Exemple d'ajout d'équipe
```mcfunction
# Ajouter un nouveau dresseur en Zone 1
data modify storage academy_npcs:teams zone_1 append value {name:"Rookie Tom", pokemon:["charmander","squirtle","bulbasaur"]}
```

## 🏆 Zones et Équilibrage

### Zone 1 (0-500 blocs) - Débutant
- **Équipes** : 3-4 Pokémon niveau 5-15
- **Types** : Pokémon basiques (Caterpie, Rattata, Geodude...)
- **Difficulté** : ⭐

### Zone 2 (500-2000 blocs) - Intermédiaire  
- **Équipes** : 4-5 Pokémon niveau 15-30
- **Types** : Évolutions niveau 2 (Ivysaur, Machoke...)
- **Difficulté** : ⭐⭐

### Zone 3 (2000-5000 blocs) - Avancé
- **Équipes** : 5-6 Pokémon niveau 30-50
- **Types** : Évolutions finales + quelques légendaires
- **Difficulté** : ⭐⭐⭐

### Zone 4 (5000+ blocs) - Légendaire
- **Équipes** : 6 Pokémon niveau 50+
- **Types** : Équipes de champions + légendaires
- **Difficulté** : ⭐⭐⭐⭐⭐

## 🔧 Personnalisation Avancée

### Modifier la fréquence de spawn
Dans `config/start.mcfunction`, changez la ligne :
```mcfunction
schedule function academy_npcs:trainer/spawn_random 120s replace
```
`120s` = toutes les 2 minutes. Remplacez par `60s` (1 min), `300s` (5 min), etc.

### Modifier le nombre maximum de dresseurs
Dans `trainer/spawn_random.mcfunction`, changez :
```mcfunction
execute if score #trainer_count academy_npcs matches 20.. run return 0
```
`20` = nombre max de dresseurs actifs simultanément.

### Personnaliser les dialogues
Dans `config/teams.mcfunction`, modifiez les sections :
```mcfunction
data modify storage academy_npcs:dialogues zone_X set value ["Message 1","Message 2","Message 3"]
```

## 🐛 Dépannage

### Les dresseurs n'apparaissent pas
1. Vérifiez que le système est démarré : `/function academy_npcs:config/start`
2. Attendez 2 minutes (fréquence de spawn)
3. Vérifiez qu'il n'y a pas déjà 20 dresseurs actifs

### Erreurs de configuration
1. Rechargez la config : `/function academy_npcs:config/reload`
2. Vérifiez la syntaxe JSON dans les fichiers modifiés
3. Redémarrez le système si nécessaire

### Réinstallation complète
```mcfunction
/function academy_npcs:config/stop
/reload
/function academy_npcs:install
/function academy_npcs:config/start
```

## 🤝 Compatibilité

- **Minecraft** : 1.21.1+
- **Cobblemon** : Toutes versions récentes
- **Autres mods** : Compatible avec la plupart des modpacks

## 📝 Notes de Développement

- Les dresseurs utilisent des villageois comme entité de base
- Le système de zones utilise la distance Manhattan (max(|x|,|z|))
- Les équipes sont stockées dans le data storage `academy_npcs:teams`
- Durée de vie automatique : 30 minutes sans joueur proche

---
**Créé pour Radical Cobblemon Trainers API**
Version 1.0 - Compatible Minecraft 1.21.1