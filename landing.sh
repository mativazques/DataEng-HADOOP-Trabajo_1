#!/bin/bash

# Descargar el .csv con -wget 
wget -P /home/hadoop/landing https://raw.githubusercontent.com/fpineyro/homework-0/master/starwars.csv

# Se coloca el .csv en hdfs, dentro de la carpeta de /ingest 
hdfs dfs -put /home/hadoop/landing/starwars.csv /ingest 

# Borrar el .csv de landing 
rm /home/hadoop/landing/starwars.csv 
