#include <iostream>
#include <string>

using namespace std;

string errorcode_failedtoload = "ERR_FTL";
string errorcode_printTableContentsNotUseable = "ERR_PTCNU";
string errorcode_MinCriticalStackOvermax = "ERR_MCSO";

int main() {
    std::cout << &errorcode_failedtoload << std::endl;
    std::cout << &errorcode_printTableContentsNotUseable << std::endl;
    std::cout << &errorcode_MinCriticalStackOvermax << std::endl;
}
