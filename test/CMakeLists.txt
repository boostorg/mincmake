# Copyright 2018 Peter Dimov
# Distributed under the Boost Software License, Version 1.0.
# See accompanying file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt

boost_test(TYPE compile SOURCES compile.cpp)
boost_test(TYPE compile-fail SOURCES compile_fail.cpp)
boost_test(TYPE link SOURCES link.cpp)
boost_test(TYPE link-fail SOURCES link_fail.cpp)
boost_test(TYPE run SOURCES run.cpp)
boost_test(TYPE run-fail SOURCES run_fail.cpp)
