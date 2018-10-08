// Copyright 2018 Peter Dimov
// Distributed under the Boost Software License, Version 1.0.
// See accompanying file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt

#include <iostream>
#include <string.h>

#define TEST(expr) if(!(expr)) { std::cerr << __FILE__ << "(" << __LINE__ << "): test '" #expr "' failed." << std::endl; r = 1; }

int main( int ac, char const* av[] )
{
    int r = 0;

    TEST( ac == 2 )
    TEST( ac >= 2 && strcmp( av[1], "pumpkin" ) == 0 )

    return r;
}
