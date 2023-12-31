double celsiusToFahrenheit(double celsius) {
  return celsius * 9 / 5 + 32;
}

double fahrenheitToCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

void main(List<String> args) {
  if (args.length != 2) {
    print("Usage: ./run <value> <unit_to_convert_to>");
    return;
  }

  double? value = double.tryParse(args[0]);
  String unit = args[1].toUpperCase();

  if (value == null) {
    print("Invalid temperature value.");
    return;
  }

  double convertedTemperature;

  switch (unit) {
    case "C":
      convertedTemperature = celsiusToFahrenheit(value);
      break;
    case "F":
      convertedTemperature = fahrenheitToCelsius(value);
      break;
    default:
      print("Invalid unit. Please use C or F");
      return;
  }

  print("Converted temperature: $convertedTemperature${unit == "C" ? " °F" : " °C"}");
}
