# Academy NPCs - Dresseurs Pokémon Aléatoires pour Cobblemon 1.6

## Vue d'ensemble

**Academy NPCs** est un datapack Minecraft spécialement conçu pour **Cobblemon 1.6** qui génère automatiquement des dresseurs Pokémon avec des équipes équilibrées dans votre monde. Le système offre une expérience immersive avec des combats naturels et des interactions fluides.

### Spécificités Techniques

- **🎯 Optimisé Cobblemon 1.6** : Intégration native avec l'API Radical Cobblemon Trainers
- **🗺️ Système de zones intelligent** : 4 zones d'équilibrage basées sur la distance du spawn mondial (0-500, 500-2K, 2K-5K, 5K+ blocs)
- **🤖 Spawn intelligent** : Validation automatique des positions (surface solide, espace libre, évite arbres/eau/lave)
- **👆 Interaction clic-droit** : Système d'interaction naturel via mécanisme de villageois
- **⚔️ Combats intégrés** : Utilise les commandes natives Cobblemon 1.6 pour des combats fluides
- **🔄 Gestion automatique** : Cycle de vie complet (spawn, interaction, combat, despawn)
- **🎲 Équipes randomisées** : Sélection aléatoire d'équipes pré-configurées par zone
- **⏱️ Cooldowns intelligents** : Prévention du spam d'interactions et gestion des délais
- **🛠️ Architecture modulaire** : Fonctions publiques séparées des utilitaires internes

### Fonctionnement du Système

1. **Spawn automatique** : Toutes les 2 minutes, tentative de spawn près d'un joueur aléatoire
2. **Validation de position** : Vérifications multiples pour un placement optimal
3. **Interaction naturelle** : Clic-droit comme sur n'importe quel PNJ
4. **Combat Cobblemon** : Transition fluide vers le système de combat natif
5. **Nettoyage automatique** : Despawn après combat ou timeout

---

## Fonctions Disponibles

### 📦 Installation et Configuration

#### `/function academy_npcs:install`
**Installation initiale du datapack**
- Configure les scoreboards et data storage nécessaires
- Initialise les équipes par défaut
- Prépare l'environnement pour le système de dresseurs

#### `/function academy_npcs:config/start`
**Démarrage du système de spawn automatique**
- Active le spawning automatique toutes les 2 minutes
- Lance la détection des zones pour tous les joueurs
- Démarre la surveillance des interactions

#### `/function academy_npcs:config/stop`
**Arrêt complet du système**
- Stoppe tous les spawns automatiques
- Supprime tous les dresseurs actifs
- Nettoie les schedules en cours

#### `/function academy_npcs:config/reload`
**Rechargement de la configuration des équipes**
- Recharge les équipes depuis le fichier de configuration
- Met à jour les dialogues et messages
- Applique les modifications sans redémarrer

#### `/function academy_npcs:config/teams`
**Configuration des équipes par zone**
- Définit les équipes Pokémon pour chaque zone de difficulté
- Configure les dialogues associés
- Structure les données pour le système de sélection aléatoire

#### `/function academy_npcs:config/set_post_battle_delay`
**Configuration du délai de despawn post-combat**
- Définit le temps avant despawn après un combat (défaut : 30 secondes)
- Paramètre global modifiable selon les préférences

#### `/function academy_npcs:config/force_end_battles`
**Forçage de fin des combats en cours**
- Termine manuellement tous les combats actifs
- Utile en cas de bug ou de besoin de reset

#### `/function academy_npcs:config/cobblemon_1_6`
**Configuration spécifique Cobblemon 1.6**
- Optimisations pour la version 1.6 de Cobblemon
- Configuration des commandes de combat spécifiques

#### `/function academy_npcs:config/radical_api_setup`
**Guide de configuration pour l'API Radical Cobblemon Trainers**
- Affiche les instructions d'optimisation
- Propose des tests d'intégration

#### `/function academy_npcs:config/examples`
**Exemples de configuration d'équipes**
- Modèles d'équipes pour inspiration
- Formats de données corrects pour les équipes personnalisées

### 🎮 Fonctions de Spawn

#### `/function academy_npcs:trainer/spawn_manual`
**Spawn manuel d'un dresseur avec validations strictes**
- Spawne un dresseur à la position du joueur
- Effectue toutes les vérifications de position
- Échoue si la position n'est pas optimale

#### `/function academy_npcs:trainer/spawn_debug`
**Spawn de debug avec diagnostic complet**
- Version debug de spawn_manual
- Affiche un diagnostic détaillé de toutes les vérifications
- Force le spawn même en cas de position sous-optimale
- **Recommandé pour les tests et le debug**

### ⚔️ Fonctions d'Interaction

#### `/function academy_npcs:trainer/start_dialogue`
**Initiation manuelle du dialogue**
- Force le dialogue avec le dresseur le plus proche
- Bypass les cooldowns pour les tests
- Utile pour déboguer les interactions

#### `/function academy_npcs:trainer/start_battle`
**Initiation manuelle du combat**
- Lance directement un combat avec le dresseur le plus proche
- Bypass le dialogue pour test rapide
- Configure l'équipe et lance les commandes Cobblemon

#### `/function academy_npcs:trainer/manage_interactions`
**Gestion du système d'interactions**
- Cœur du système d'interaction clic-droit
- Gère les cooldowns et la détection des clics
- Maintient le cycle de vie des dresseurs

### 🗺️ Fonctions de Zones

#### `/function academy_npcs:zones/init`
**Initialisation du système de zones**
- Configure les limites et propriétés des 4 zones
- Définit les critères d'équilibrage par distance

#### `/function academy_npcs:zones/detect_zone`
**Détection de zone pour un joueur**
- Calcule la zone d'équilibrage basée sur la position
- Retourne l'ID de zone pour sélection d'équipe appropriée

### 🧪 Fonctions de Test

#### `/function academy_npcs:test/rightclick_test`
**Test complet du système d'interaction clic-droit**
- Spawne un dresseur de test
- Active le mode debug pour les interactions
- Affiche des boutons pour tester dialogue/combat direct

#### `/function academy_npcs:test/cobblemon_1_6_test`
**Test de compatibilité Cobblemon 1.6**
- Vérifie l'installation et la configuration de Cobblemon
- Teste les commandes de combat spécifiques à la version 1.6
- Guide d'intégration étape par étape

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

### Spawn Intelligent

Le système vérifie automatiquement :

- **Surface solide** : Terre, pierre, herbe, sable, etc.
- **Espace libre** : 2 blocs de hauteur minimum
- **Pas dans l'eau/lave** : Évite les spawns dangereux
- **Distance des autres dresseurs** : Minimum 15 blocs entre dresseurs
- **Pas dans les arbres** : Évite de spawner dans les feuillages
- **Retry automatique** : Jusqu'à 5 tentatives pour trouver une position valide

### Modifier la fréquence de spawn

Dans `config/start.mcfunction`, changez la ligne :

```mcfunction
schedule function academy_npcs:trainer/spawn_random 120s replace
```

`120s` = toutes les 2 minutes. Remplacez par `60s` (1 min), `300s` (5 min), etc.

### Modifier le délai de despawn post-combat

Dans `config/set_post_battle_delay.mcfunction`, changez :

```mcfunction
scoreboard players set #post_battle_delay academy_npcs 600
```

`600` = 30 secondes. Remplacez par `300` (15 sec), `1200` (1 min), etc.

### Gestion des combats

Le système détecte automatiquement la fin des combats et fait disparaître les dresseurs.
En cas de problème, utilisez `/function academy_npcs:config/force_end_battles`

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

### Problème avec spawn_manual ("Position invalide")

Utilisez `/function academy_npcs:trainer/spawn_debug` à la place ! Cette commande :

- Affiche un diagnostic détaillé de toutes les vérifications
- Montre pourquoi une position est invalide (sol, espace, dresseurs proches, etc.)
- Force le spawn si une surface est trouvée (ignore certaines restrictions pour les tests)
- Parfait pour tester et déboguer votre configuration

### Les combats ne fonctionnent pas

1. Consultez le guide : `/function academy_npcs:config/cobblemon_integration`
2. Vérifiez que Cobblemon est installé et fonctionnel
3. Testez les commandes Cobblemon manuellement : `/cobblemon help`
4. Adaptez les fichiers selon votre version de Cobblemon

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
- **Cobblemon** : 1.6.x (optimisé pour cette version)
- **Radical Cobblemon Trainers API** : Intégration native
- **Autres mods** : Compatible avec la plupart des modpacks

## 🔧 Intégration avec Cobblemon 1.6

✅ **Entièrement intégré** : Ce datapack est spécifiquement optimisé pour Cobblemon 1.6 avec Radical Cobblemon Trainers API.

### Fonctionnalités :

- **Interaction naturelle** : Clic droit comme un PNJ normal
- **Commandes de combat** : Utilise les dernières commandes Cobblemon 1.6  
- **Équipes pré-configurées** : Noms Pokémon compatibles avec Cobblemon 1.6
- **Détection de fin de combat** : Système automatique intégré

### Test rapide :

1. **Exécutez** `/function academy_npcs:config/quick_start` pour commencer
2. **Testez** l'interaction avec `/function academy_npcs:test/rightclick_test`

## 📝 Notes de Développement

- Les dresseurs utilisent des villageois comme entité de base
- Le système de zones utilise la distance Manhattan (max(|x|,|z|))
- Les équipes sont stockées dans le data storage `academy_npcs:teams`
- Durée de vie automatique : 30 minutes sans joueur proche

---

**Créé pour Radical Cobblemon Trainers API**
Version 1.0 - Compatible Minecraft 1.21.1
