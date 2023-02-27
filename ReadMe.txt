Pour lancer l'application il faut 

1) faire un "composer install" depuis le dossier du projet

2) configurer le .env a votre convenance
    -j'ai rajouter la clef API dedans donc il faut ajouter la ligne:
    TMDB_KEY='copier la clef de l'api ici'
    -mettre vos variables d'environement pour acceder a votre gestionnaire de base de donnée 
    -importer la base de donnée PQP_DB.sql 

3) lancer les commandes suivantes :
    -php artisan key:generate
    -npm install
    -npm run build
    -php artisan serve

4) Le projet est opérationnel .

5) Vous pouvez crée un compte je n'ai bloquer aucune fonctionalité derrière un role specifique