#!/bin/bash
curl --request POST \
  --url 'http://137.208.107.75:8890/sparql' \
  --header 'Content-Type: application/json' \
  --header 'accept: application/json' \
  --data '{
  "query": "PREFIX : <http://dbpedia.org/resource/> PREFIX dbpo: <http://dbpedia.org/ontology/> SELECT * WHERE { ?pelicula1 dbpo:starring ?actor1 . ?pelicula1 dbpo:starring ?actor2 . ?pelicula1 dbpo:director :George_Clooney . ?pelicula2 dbpo:starring ?actor1 . ?pelicula2 dbpo:starring ?actor2 .  }",
  "defaultGraph": "dbpedia"
}'


#  "query": "SELECT * WHERE { ?s ?p ?o. }",

