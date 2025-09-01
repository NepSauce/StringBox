# StringBox

**StringBox** is a high-performance, safe string library written entirely in x86/x64 assembly for C++. It provides core string functionality while demonstrating advanced low-level programming skills, memory management, and optimization techniques.

## Key Features
- Efficient string creation, deletion, and concatenation
- Substring extraction and comparison
- Length calculation
- Minimal memory overhead
- Safe alternative to raw C-style strings

## Example Usage
```cpp
#include "StringBox.h"

int main() {
    StringBox str1("Hello");
    StringBox str2("World");
    str1.append(str2);
    printf("%s\n", str1.c_str()); // HelloWorld
    return 0;
}
