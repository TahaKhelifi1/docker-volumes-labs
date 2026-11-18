\# Docker Volumes – Labs 5.1 \& 5.2



\## Présentation



Ce repository regroupe deux travaux pratiques réalisés dans le cadre du cours Docker.



\*\*Objectif général :\*\* comprendre la persistance des données avec Docker, manipuler les volumes et maîtriser les opérations de sauvegarde et de restauration d'une base de données PostgreSQL.



\## Environnement utilisé



\- Docker Desktop

\- PostgreSQL 16 Alpine

\- Nginx 1.27 Alpine

\- Alpine Linux 3.20

\- Windows 11 – CMD



\---



\## Lab 5.1 – Persister des données



\### Objectifs

\- Comprendre la persistance des données dans Docker.

\- Découvrir les volumes anonymes et les volumes nommés.

\- Utiliser les bind mounts.

\- Découvrir les montages temporaires `tmpfs`.



\### Travaux réalisés



1\. Création d'un conteneur PostgreSQL sans volume et observation de la perte des données après sa recréation.

2\. Création et utilisation d'un volume nommé `pgdata`.

3\. Vérification des informations du volume avec `docker volume inspect`.

4\. Utilisation d'un bind mount avec Nginx pour partager un fichier HTML entre l'hôte et le conteneur.

5\. Vérification du mode lecture seule avec `:ro`.

6\. Utilisation de `tmpfs` et vérification du caractère temporaire des données.



\### Fichier du laboratoire



\- `site/index.html` : fichier HTML utilisé pour tester le bind mount.



\---



\## Lab 5.2 – Sauvegarder et restaurer un volume



\### Objectifs

\- Sauvegarder le contenu d'un volume Docker dans une archive.

\- Simuler la perte du volume original.

\- Restaurer les données dans un nouveau volume.

\- Vérifier l'intégrité des données restaurées.

\- Comparer une sauvegarde physique avec une sauvegarde logique PostgreSQL.



\### Travaux réalisés



1\. Préparation d'une base PostgreSQL contenant une table `notes` avec six enregistrements.

2\. Arrêt du conteneur PostgreSQL avant la sauvegarde.

3\. Création de l'archive `pgdata.tar.gz` avec `tar`.

4\. Suppression du conteneur et du volume original `pgdata`.

5\. Création du nouveau volume `pgdata-restaure`.

6\. Restauration de l'archive dans le nouveau volume.

7\. Vérification des six enregistrements après restauration.

8\. Création d'une sauvegarde SQL avec `pg\_dump`.



\### Fichiers du laboratoire



\- `sauvegardes/pgdata.tar.gz` : archive contenant les fichiers du volume PostgreSQL.

\- `sauvegardes/cours.sql` : sauvegarde logique de la base de données.



\---



\## Questions de réflexion



\### 1. Pourquoi utiliser un volume nommé ?



Un volume nommé permet de conserver les données indépendamment du cycle de vie du conteneur. Il est géré par Docker et peut être réutilisé par plusieurs conteneurs.



\### 2. Quelle est la différence entre un volume nommé, un bind mount et tmpfs ?



\- Volume nommé : stockage persistant géré par Docker.

\- Bind mount : partage direct d'un dossier de l'hôte avec un conteneur.

\- tmpfs : stockage temporaire en mémoire, non persistant.



\### 3. Pourquoi arrêter PostgreSQL avant de sauvegarder son volume ?



Pour garantir la cohérence des fichiers de la base de données et éviter une sauvegarde contenant des données incomplètes ou incohérentes.



\### 4. Quel est l'avantage de pg\_dump ?



`pg\_dump` réalise une sauvegarde logique de la base de données. Il peut être exécuté pendant que PostgreSQL fonctionne et facilite la migration ou la restauration des données.



\---



\## Conclusion



Ces deux laboratoires ont permis de comprendre les mécanismes de persistance des données dans Docker, ainsi que les méthodes de sauvegarde et de restauration d'une base PostgreSQL.



La restauration du volume a été vérifiée avec succès : les six enregistrements de la table `notes` ont été conservés après la suppression du volume original et la restauration dans un nouveau volume.



