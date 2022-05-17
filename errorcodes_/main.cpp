#include <iostream>
#include <string>

int main() {
    std::string errorcode_failedtoload = "ERR_FTL";
    std::string errorcode_printTableContentsNotUseable = "ERR_PTCNU";
    std::string errorcode_MinCriticalStackOverlimit = "ERR_MCSO";
    std::string errorcode_MaxCriticalStackOverlimit = "ERR_XCSO";
    std::string errorcode_ItemCreatorAlreadyLoaded = "ERR_ICAL";

    std::cout << "FailedToLoad => " << &errorcode_failedtoload << "\n";
    std::cout << "printTableContentsNotUseable => " << &errorcode_printTableContentsNotUseable << "\n";
    std::cout << "MinCriticalStackOverlimit => " << &errorcode_MinCriticalStackOverlimit << "\n";
    std::cout << "MaxCtiticalStackOverlimit => " << &errorcode_MaxCriticalStackOverlimit << "\n";
    std::cout << "ItemCreatorAlreadyLoaded => " << &errorcode_ItemCreatorAlreadyLoaded << "\n";
}
