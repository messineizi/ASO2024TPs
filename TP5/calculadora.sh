#! /bin/bash
echo "MENU: Elija su operación"
echo " 1) Suma"
echo " 2) Resta"
echo " 3) Multiplicación"
echo " 4) División"
echo "=============="
read opcion
echo "Ingrese el primer número: " 
read num1
echo "Ingrese el segundo número: " 
read num2

case $opcion in 
1)
let suma=num1+num2
echo "El resultado es $suma" ;;
2)
let resta=num1-num2
echo " El resultado es $resta" ;;

3)
let multiplicacion=num1*num2
echo " El resultado es $multiplicacion";;

4)
if [ $num2 -eq 0 ]; then
    echo "Error: No se puede dividir por 0."
else
    let division=num1/num2
    echo " El resultado es $division" 
fi ;; 
*) 
echo "ERROR, Ingrese un número del 1 al 4" ;;
esac 