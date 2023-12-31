#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

double celsiusToFahrenheit(double celsius)
{
    return celsius * 9 / 5 + 32;
}

double fahrenheitToCelsius(double fahrenheit)
{
    return (fahrenheit - 32) * 5 / 9;
}

int main(int argumentCount, char *arguments[])
{
    if (argumentCount != 3)
    {
        printf("Usage: ./run <value> <unit_to_convert_to>\n");
        return 1;
    }

    double value = atof(arguments[1]);
    char unit[2];
    strcpy(unit, arguments[2]);
    unit[0] = toupper(unit[0]);

    if (value == 0 && strcmp(arguments[1], "0") != 0)
    {
        printf("Invalid temperature value.\n");
        return 1;
    }

    double convertedTemperature;
    if (unit[0] == 'C')
    {
        convertedTemperature = celsiusToFahrenheit(value);
    }
    else if (unit[0] == 'F')
    {
        convertedTemperature = fahrenheitToCelsius(value);
    }
    else
    {
        printf("Invalid unit. Please use C or F.\n");
        return 1;
    }

    printf("Converted temperature: %.2f%s\n", convertedTemperature, (unit[0] == 'C') ? " °F" : " °C");

    return 0;
}
