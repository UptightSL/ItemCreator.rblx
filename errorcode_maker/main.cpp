#include <iostream>
#include <string>

using namespace std;

string errorcode_failedtoload =                   "ERR_FTL";
string errorcode_printTableContentsNotUseable =   "ERR_PTCNU";
string errorcode_MinCriticalStackOverlimit =      "ERR_MCSO";
string errorcode_MaxCriticalStackOverlimit =      "ERR_XCSO";

int main() {
    std::cout << "FailedToLoad => " << &errorcode_failedtoload << std::endl;
    std::cout << "printTableContentsNotUseable => " << &errorcode_printTableContentsNotUseable << std::endl;
    std::cout << "MinCriticalStackOverlimit => " << &errorcode_MinCriticalStackOverlimit << std::endl;
    std::cout << "MaxCtiticalStackOverlimit => " << &errorcode_MaxCriticalStackOverlimit << std::endl;
}
