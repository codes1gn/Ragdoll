configure_lit_site_cfg(
        ${CMAKE_CURRENT_SOURCE_DIR}/lit.site.cfg.py.in
        ${CMAKE_CURRENT_BINARY_DIR}/lit.site.cfg.py

        MAIN_CONFIG
        ${CMAKE_CURRENT_SOURCE_DIR}/lit.cfg.py
)

set(RAGDOLL_OPT_TEST_DEPENDS
        FileCheck count not
        ragdoll-opt
        )

add_lit_testsuite(
        check-ragdoll 
        "Running the standalone-opt regression tests"
        ${CMAKE_CURRENT_BINARY_DIR}

        DEPENDS 
        ${RAGDOLL_OPT_TEST_DEPENDS}
        )

set_target_properties(check-ragdoll PROPERTIES FOLDER "tests")

add_lit_testsuites(
        STANDALONE_OPT 
        ${CMAKE_CURRENT_SOURCE_DIR} 

        DEPENDS 
        ${RAGDOLL_OPT_TEST_DEPENDS}
        )
