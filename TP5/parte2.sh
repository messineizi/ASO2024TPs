#! /bin/bash

echo "Ingrese su ciudad: "

read CIUDAD

API_KEY="d55640c8bb4a4bd7a1a21657242406"

URL="http://api.weatherapi.com/v1/current.json?key=${API_KEY}&q=${CIUDAD}" 

json=$(wget -qO- "$URL") 

temp_c=$(echo "$json" | jq -r '.current.temp_c') 

echo "Clima en ${CIUDAD}:"

echo "Temperatura: ${temp_c} °C"
