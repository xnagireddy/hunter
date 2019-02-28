#include <iostream>
#include <proc/procps.h>
#include <proc/version.h>

int main() {
    int l_result = procps_linux_version();
    std::cout << "procps_linux_version(): [" << l_result << "]" << std::endl;
}
