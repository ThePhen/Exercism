#include <string>

namespace log_line {
    std::string message(std::string line) {
        int c = line.find(":") + 2;
        return line.substr(c);
    }

    std::string log_level(std::string line) {
        int c = line.find("]") - 1;
        return line.substr(1, c);
    }

    std::string reformat(std::string line) {
        return message(line) + " (" + log_level(line) + ")";
    }
}
