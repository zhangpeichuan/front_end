#include <iostream>
/**
 * Simple main function
 * 
 * Read two numbers and write their sum
 */
int main()
{
    std::cout << "Enter two numbers: ";
    int v1 = 0, v2 = 0;
    std::cin >> v1 >> v2;
    std::cout << "The sum of " << v1 << " and " << v2
                << " is " << v1 + v2 << std::endl;
    return 0;

}