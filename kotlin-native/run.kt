/*
  Compile Code:
    ❯ kotlinc-native run.kt -o run

  Run Code:
    ❯ ./run.kexe 49 C
    Converted temperature: 120.2°C
 */

fun celsiusToFahrenheit(celsius: Double): Double {
    return celsius * 9 / 5 + 32
}

fun fahrenheitToCelsius(fahrenheit: Double): Double {
    return (fahrenheit - 32) * 5 / 9
}

fun main(args: Array<String>) {
    if (args.size != 2) {
        println("Usage: ./run.kexe <value> <unit_to_convert_to>")
        return
    }

    val value = args[0].toDoubleOrNull()
    val unit = args[1].uppercase()

    if (value == null) {
        println("Invalid temperature value.")
        return
    }

    val convertedTemperature = when (unit) {
        "C" -> celsiusToFahrenheit(value)
        "F" -> fahrenheitToCelsius(value)
        else -> {
            println("Invalid unit. Please use C or F.")
            return
        }
    }

    println("Converted temperature: $convertedTemperature${if (unit == "C") " °F" else " °C"}")
}
