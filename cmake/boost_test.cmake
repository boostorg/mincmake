# Copyright 2018 Peter Dimov
# Distributed under the Boost Software License, Version 1.0.
# See accompanying file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt

function(boost_test)

    cmake_parse_arguments(_ "" "TYPE;PREFIX;NAME" "SOURCES;LIBRARIES" ${ARGN})

    if(NOT __TYPE)
        set(__TYPE run)
    endif()

    if(NOT __PREFIX)
        set(__PREFIX ${PROJECT_NAME})
    endif()

    if(NOT __NAME)
        list(GET __SOURCES 0 __NAME)
        string(MAKE_C_IDENTIFIER ${__NAME} __NAME)
    endif()

    set(__NAME ${__PREFIX}-${__NAME})

    add_executable(${__NAME} EXCLUDE_FROM_ALL ${__SOURCES})
    target_link_libraries(${__NAME} ${__LIBRARIES})

    add_test(NAME compile-${__NAME} COMMAND "${CMAKE_COMMAND}" --build ${CMAKE_BINARY_DIR} --target ${__NAME})

    add_test(NAME run-${__NAME} COMMAND ${__NAME})
    set_tests_properties(run-${__NAME} PROPERTIES DEPENDS compile-${__NAME})

endfunction(boost_test)
