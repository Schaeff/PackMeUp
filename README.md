PackItUp
========

Pour la météo : http://openweathermap.org/forecast

API:

Créer un utilisateur

POST /users.json HTTP/1.1
Host: localhost:3000
Content-Type: application/json
Cache-Control: no-cache

{ "user": { "name": "John", "password": "pass" } }

Ouvrir une session

POST /sessions.json HTTP/1.1
Host: localhost:3000
Content-Type: application/json
Cache-Control: no-cache

{ "user": { "name": "John", "password": "pass" } }

Fermer une session

param : id
//TODO

Demander une valise

POST /suitcases.json HTTP/1.1
Host: localhost:3000
Content-Type: application/json
Cache-Control: no-cache

{ "suitcase": { "country": "France", "weather": "hot" } }

Demander les valises d'un utilisateur

POST /u_suitcases/get_u_suitcases.json HTTP/1.1
Host: localhost:3000
Content-Type: application/json
Cache-Control: no-cache

{ "u_suitcase": { "user_id": 1 } }


