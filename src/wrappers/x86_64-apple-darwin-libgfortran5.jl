# Autogenerated wrapper script for Cbc_jll for x86_64-apple-darwin-libgfortran5
export cbc, libCbc, libOsiCbc, libcbcsolver

using ASL_jll
using Cgl_jll
using Clp_jll
using Osi_jll
using CoinUtils_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Cbc")
JLLWrappers.@declare_library_product(libCbc, "@rpath/libCbc.3.dylib")
JLLWrappers.@declare_library_product(libOsiCbc, "@rpath/libOsiCbc.3.dylib")
JLLWrappers.@declare_library_product(libcbcsolver, "@rpath/libCbcSolver.3.dylib")
JLLWrappers.@declare_executable_product(cbc)
function __init__()
    JLLWrappers.@generate_init_header(ASL_jll, Cgl_jll, Clp_jll, Osi_jll, CoinUtils_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libCbc,
        "lib/libCbc.3.10.5.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libOsiCbc,
        "lib/libOsiCbc.3.10.5.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libcbcsolver,
        "lib/libCbcSolver.3.10.5.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        cbc,
        "bin/cbc",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
