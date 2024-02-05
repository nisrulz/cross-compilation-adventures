import sys

def celsius_to_fahrenheit(celsius):
    return (celsius * 9 / 5) + 32

def fahrenheit_to_celsius(fahrenheit):
    return ((fahrenheit - 32) * 5 / 9)

def main():
    if len(sys.argv) != 3:
        print("Usage: ./run <value> <unit_to_convert_to>")
        return

    value = float(sys.argv[1])
    unit = sys.argv[2].upper()

    if not value:
        print("Invalid temperature value.")
        return

    converted_temperature = None

    if unit == "C":
        converted_temperature = celsius_to_fahrenheit(value)
    elif unit == "F":
        converted_temperature = fahrenheit_to_celsius(value)
    else:
        print("Invalid unit. Please use C or F.")
        return

    if converted_temperature is not None:
        print(f"Converted temperature: {converted_temperature}°{unit}")

if __name__ == "__main__":
    main()