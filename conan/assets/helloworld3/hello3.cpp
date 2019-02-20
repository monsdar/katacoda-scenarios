
#include <hello.h>
#include <iostream>

int main()
{
    HelloGenerator hello;
    std::cout << "Hello World! Here's the MD5 hash: " << hello.getHello() << std::endl;
    return 0;
}
