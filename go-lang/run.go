package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
)

func celsiusToFahrenheit(celsius float64) float64 {
	return celsius*9/5 + 32
}

func fahrenheitToCelsius(fahrenheit float64) float64 {
	return (fahrenheit - 32) * 5 / 9
}

func main() {
	if len(os.Args) != 3 {
		fmt.Println("Usage: ./run <value> <unit_to_convert_to>")
		return
	}

	value, err := strconv.ParseFloat(os.Args[1], 64)
	if err != nil {
		fmt.Println("Invalid temperature value.")
		return
	}

	unit := strings.ToUpper(os.Args[2])

	var convertedTemperature float64

	switch unit {
	case "C":
		convertedTemperature = celsiusToFahrenheit(value)
	case "F":
		convertedTemperature = fahrenheitToCelsius(value)
	default:
		fmt.Println("Invalid unit. Please use C or F.")
		return
	}

	unitSymbol := "°F"
	if unit == "C" {
		unitSymbol = "°C"
	}

	fmt.Printf("Converted temperature: %v%s\n", convertedTemperature, unitSymbol)
}
