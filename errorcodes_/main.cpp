#include <iostream>
#include <string>

int main() {
    std::string errorcode_failedtoload = "ERR_FTL";
    std::string errorcode_printTableContentsNotUseable = "ERR_PTCNU";
    std::string errorcode_MinCriticalStackOverlimit = "ERR_MCSO";
    std::string errorcode_MaxCriticalStackOverlimit = "ERR_XCSO";

    std::cout << "FailedToLoad => " << &errorcode_failedtoload;
    std::cout << "printTableContentsNotUseable => " << &errorcode_printTableContentsNotUseable ;
    std::cout << "MinCriticalStackOverlimit => " << &errorcode_MinCriticalStackOverlimit;
    std::cout << "MaxCtiticalStackOverlimit => " << &errorcode_MaxCriticalStackOverlimit;
}