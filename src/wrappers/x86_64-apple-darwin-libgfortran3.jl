# Autogenerated wrapper script for Cbc_jll for x86_64-apple-darwin-libgfortran3
export libCbc, libcbcsolver

using Clp_jll
using Cgl_jll
using Osi_jll
using CoinUtils_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Cbc")
JLLWrappers.@declare_library_product(libCbc, "@rpath/libCbc.3.dylib")
JLLWrappers.@declare_library_product(libcbcsolver, "@rpath/libCbcSolver.3.dylib")
function __init__()
    JLLWrappers.@generate_init_header(Clp_jll, Cgl_jll, Osi_jll, CoinUtils_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libCbc,
        "lib/libCbc.3.10.5.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libcbcsolver,
        "lib/libCbcSolver.3.10.5.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
