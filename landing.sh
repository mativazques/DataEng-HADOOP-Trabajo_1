#!/bin/bash

# Descargables 

url="https://raw.githubusercontent.com/fpineyro/homework-0/master/starwars.csv"

# Directorios 

landing="/home/hadoop/landing"
file="starwars.csv"

# Se hace el wget con -O para sobreescribir el archivo descargado.

wget -O "$landing"/"$file" "$url"

# Se coloca el .csv en hdfs, dentro de la carpeta de /ingest
# se utiliza -f para sobreescribir si ya existe el hdfs
# con ese nombre. 

hdfs dfs -put -f "$landing"/"$file" /ingest

# Borrar el .csv de landing 
rm /home/hadoop/landing/starwars.csv 



