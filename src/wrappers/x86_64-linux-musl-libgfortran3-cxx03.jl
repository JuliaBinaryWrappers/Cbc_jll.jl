# Autogenerated wrapper script for Cbc_jll for x86_64-linux-musl-libgfortran3-cxx03
export cbc, libCbc, libcbcsolver

using ASL_jll
using Cgl_jll
using Clp_jll
using Osi_jll
using CoinUtils_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Cbc")
JLLWrappers.@declare_executable_product(cbc)
JLLWrappers.@declare_library_product(libCbc, "libCbc.so.3")
JLLWrappers.@declare_library_product(libcbcsolver, "libCbcSolver.so.3")
function __init__()
    JLLWrappers.@generate_init_header(ASL_jll, Cgl_jll, Clp_jll, Osi_jll, CoinUtils_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_executable_product(
        cbc,
        "bin/cbc",
    )

    JLLWrappers.@init_library_product(
        libCbc,
        "lib/libCbc.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libcbcsolver,
        "lib/libCbcSolver.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
