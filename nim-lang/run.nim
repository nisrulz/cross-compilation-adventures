#[
  Compile Code:
    ❯ nim c run.nim

  Run Code:
    ❯ ./run 49 C
    Converted temperature: 120.2°C
]#
import strutils, std/os

proc celsiusToFahrenheit(c: float): float =
  result = c * 9 / 5 + 32

proc fahrenheitToCelsius(f: float): float =
  result = (f - 32) * 5 / 9

when isMainModule:
  var value: string
  var unit: string
  if paramCount() == 2:
    value = $(paramStr(1).parseFloat())
    unit = paramStr(2).toUpper()
  else:
    echo "Usage: ./run <value> <unit_to_convert_to>"
    quit(1)

  var convertedTemperature: float
  if unit == "C":
    convertedTemperature = celsiusToFahrenheit(value.parseFloat())
  elif unit == "F":
    convertedTemperature = fahrenheitToCelsius(value.parseFloat())
  else:
    echo "Invalid unit. Please use C or F."
    quit(1)

  echo "Converted temperature: ", convertedTemperature, "°", unit
