#include <iostream>
#include "calculator.h"

int main()
{
    Calculator calc;
    double a = 15, b = 9;

    std::cout << "Add: " << calc.Add(a, b) << std::endl;
    std::cout << "Sub: " << calc.Sub(a, b) << std::endl;

    return 0;
}