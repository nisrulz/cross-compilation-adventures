use std::env;

fn celsius_to_fahrenheit(celsius: f64) -> f64 {
    celsius * 9.0 / 5.0 + 32.0
}

fn fahrenheit_to_celsius(fahrenheit: f64) -> f64 {
    (fahrenheit - 32.0) * 5.0 / 9.0
}

fn main() {
    let args: Vec<String> = env::args().collect();

    if args.len() != 3 {
        eprintln!("Usage: ./run <value> <unit_to_convert_to>");
        std::process::exit(1);
    }

    let value: f64 = args[1].parse().unwrap();
    let unit: String = args[2].to_uppercase();

    if value == 0.0 && args[1] != "0" {
        eprintln!("Invalid temperature value.");
        std::process::exit(1);
    }

    let converted_temperature: f64;

    if unit == "C" {
        converted_temperature = celsius_to_fahrenheit(value);
    } else if unit == "F" {
        converted_temperature = fahrenheit_to_celsius(value);
    } else {
        eprintln!("Invalid unit. Please use C or F.");
        std::process::exit(1);
    }

    println!("Converted temperature: {:.2}{}", converted_temperature, if unit == "C" { " °F" } else { " °C" });
}
