// See https://aka.ms/new-console-template for more information
DateTime now = DateTime.Now;

// Determina el saludo basado en la hora del día
if (now.Hour < 12)
{
    if (now.Hour > 6) {
        Console.WriteLine("Buenos días");
    } else {
        Console.WriteLine("Hello, World madrugador!");
    }
}
else if (now.Hour >= 12 && now.Hour < 18)
{
    Console.WriteLine("Buenas tardes");
}
else
{
    Console.WriteLine("Buenas noches");
}

