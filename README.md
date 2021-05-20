Prise en main de différentes technologie tels que : Vuex, Docker, unit test

## But

Créer mon CV en anglais avec le framework Vue JS (Vuex) en développant une programmation propre à base de composants.

Prendre en main et se familiariser avec le framework Vue JS, les tests unitaires et Docker.

## Comment tester ?

1. Cloner le repo 
2. Assurer vous que Docker fonctionne sur votre machine

A partir de là, il est possible de lancer et visualiser mon CV ou lancer le test unitaire. Ci-dessous vous pouvez voir les marches à suivre respectives.

### Lancer et visualiser 

Afin de lancer mon projet et de visualiser mon CV en anglais, voici les étapes  à effectuer :

1. Lancer le script "script_run_docker.sh" (il va construire l'image et lancer un containers utilisant le port 8080) (./script_run_docker.sh)
2. Visualiser le résultat sur http://127.0.0.1:8080/
3. Supprimer le containers en lançant le script "script_stop_remove_containers.sh"

### Lancer le test unitaire

1. Ne fonctionne pas avec Docker.... (en natif, utilisez la commande : **npm run unit**)
   - Si vous souhaitez tester le test unitaire en native, faite en sorte que le projet soit prêt (npm install)



## Références

- Base du modèle CV 		: https://github.com/evryn/vue-modern-resume
- Utilisation de Docker 	: https://fr.vuejs.org/v2/cookbook/dockerize-vuejs-app.html
- Ajoute de test unitaire : https://github.com/lilyrae/vue-tests



