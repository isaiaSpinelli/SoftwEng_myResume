Prise en main de différentes technologie tels que : Vuex, Docker, unit test

## But

Créer mon CV en anglais avec le framework Vue JS (Vuex) en développant une programmation propre à base de composants.

Prendre en main et se familiariser avec le framework Vue JS, les tests unitaires et Docker.

## Comment tester ?

1. Clonez le repo 
2. Entrez dans le dossier ("cd SoftwEng_myResume")
3. Assurez-vous que Docker fonctionne sur votre machine (Exemple : "docker ps")

A partir de là, il est possible de lancer les tests unitaires et visualiser mon CV avec docker en lancant un scirpt. Sinon il est possible de lancer les tests unitaires en natif. Ci-dessous vous pouvez voir les marches à suivre respectives.

### Lancer les tests unitaires et visualiser mon CV

Afin de lancer mon projet et de visualiser les tests unitaire et mon CV en anglais, voici les étapes à effectuer :

1. Lancez le script "script_run_docker.sh" (il va construire l'image, lancer les tests unitaire et lancer un containers utilisant le port 8080) (commande : "./script_run_docker.sh" => ~5 minutes )
2. Il est possible de voir les résultats des tests unitaires dans la console.
3. Visualisez le résultat de mon CV sur http://127.0.0.1:8080/
4. Supprimez le containers en lançant le script "script_stop_remove_containers.sh"  (commande : "./script_stop_remove_containers.sh")

### Lancer les tests unitaires en natif

1. Exectez la commande : "npm test"

   ​		Si 'jest' n'est pas reconnu en tant que commande -> "npm install -g jest"

## Références

- Base du modèle CV 		: https://github.com/evryn/vue-modern-resume
- Utilisation de Docker 	: https://fr.vuejs.org/v2/cookbook/dockerize-vuejs-app.html



