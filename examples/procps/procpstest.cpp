#include <iostream>
#include <proc/procps.h>

int main() {
    int l_result = procps_linux_version();
    std::out << "procps_linux_version(): [" << l_result << "]" << std::endl;
}
