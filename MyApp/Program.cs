// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");
DateTime now = DateTime.Now;

// Determina el saludo basado en la hora del día
if (now.Hour < 12)
{
    Console.WriteLine("Buenos días");
}
else if (now.Hour >= 12 && now.Hour < 18)
{
    Console.WriteLine("Buenas tardes");
}
else
{
    Console.WriteLine("Buenas noches");
}
