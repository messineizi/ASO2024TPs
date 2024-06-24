#! /bin/bash
API_KEY="d55640c8bb4a4bd7a1a21657242406"

if [ -z "$1" ]; then
    echo "Uso: $0 NOMBRE_DE_LA_CIUDAD"
    exit 1
fi

CIUDAD="$1"

BASE_URL="http://api.weatherapi.com/v1/current.json?key=${API_KEY}&q=${CIUDAD}"

response=$(curl -s "${BASE_URL}")

if [ -z $"response" ]; then
    echo "Error al conectarse a la API."
    exit 1
fi

CLIMA=$(echo "$response" | jq '.current.condition.text'
TEMPERATURA=$(echo "$response" | jq '.current.temp_c')

echo "Clima actual en $CIUDAD es: $CLIMA"
echo "Temperatura: $TEMPERATURA °C"
