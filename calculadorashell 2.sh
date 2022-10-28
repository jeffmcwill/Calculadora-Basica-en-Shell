#!/bin/bash

function sumar() {
	echo "empecemos la suma..."
	read -p "Numero 1: " num1
	read -p "Numero 2: " num2
	echo  "resultado de la suma: "$(($num1 + $num2))
	menu
}
function resta() {
	echo "empezemos la resta..."
	read -p "El primer numero es: " num1
	read -p "El segundo numero es: " num2
	echo "el resultado de la resta: "$(($num1 - $num2))
	menu
}
function multiplicacion() {
	echo "empezemos la multiplicacion..."
	read -p "El numero 1 es: " num1
	read -p "El numero 2 es: " num2
	echo "El resultado de la multiplicacion es: "$(($num1 * $num2))
	menu
}
function division() {
	echo "empezamos la division..."
	read -p "El numero 1 es: " num1
	read -p "El numero 2 es: " num2
	echo "El resultado de la division: "$(($num1 / $num2))
	menu
}
function porcentaje() {
	echo "empezemos con el porcentaje"
	read -p "Digame el numero que quiere sacarle el porcentaje: " num1
	read -p "¿¿el porcentaje de ??: " num2
	echo "El porcentaje total es: "$(($num1 * $num2 / 100))
	menu
}
function pareimpar() {
	echo "empezemos con los numeros pares e impares"
	read -p "dime el numero que quieres saber si es par o impar: " numero

	if [ $(($numero % 2)) -eq 0 ];
	then
		echo "el numero $numero  es par"
	else
		echo "el numero $numero es impar"
	fi
	menu
}


function salir() {
	echo "Hasta luego."
}

function menu() {
#	eleccion = 0
        until [ "$eleccion" == 7 ]
	do
		echo "--------------------"
        	echo "- Calculadora Bash -"
        	echo "--------------------"
        	echo "1.Sumar"
        	echo "2.Resta"
        	echo "3.Multiplicacion"
       	 	echo "4.Division"
		echo "5.Porcentaje"
		echo "6.Numero Par e Impar"
		echo "--------------------"
        	echo "7.Salir"

		read -p "Elegir: " eleccion

		if test "$eleccion" -eq 1;then
			echo "elegiste suma"
			sleep 2
			sumar
			break

		elif test "$eleccion" -eq 2;then
			echo "elegiste resta" 
			sleep 2
			resta
			break

		elif test $eleccion -eq 3;then
			echo "elegiste multiplicacion"
			sleep 2
			multiplicacion
			break

		elif test $eleccion -eq 4;then
			echo "elegiste division"
			sleep 2
			division
			break

		elif test $eleccion -eq 5;then
			echo "elegiste porcentaje"
			sleep 2
			porcentaje
			break

		elif test $eleccion -eq 6;then
			echo "elegiste par e impar"
			sleep 2
			pareimpar
			break

		elif test $eleccion -eq 7;then
			echo "Usted eligio salir..."
			salir
		fi
	done
}

menu
