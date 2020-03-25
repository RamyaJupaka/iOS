import UIKit

var str = "Hello, I am Ramya"

var starPattern = String()

for i in (1...5).reversed()
{
    for _ in 1...6 - i
    {
        starPattern += "*"
    }
    starPattern += "\n"
}
print(starPattern)



