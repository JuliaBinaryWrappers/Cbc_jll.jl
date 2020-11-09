# Autogenerated wrapper script for Cbc_jll for i686-w64-mingw32-libgfortran4-cxx11
export libCbc, libcbcsolver

using Clp_jll
using Cgl_jll
using Osi_jll
using CoinUtils_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Cbc")
JLLWrappers.@declare_library_product(libCbc, "libCbc-3.dll")
JLLWrappers.@declare_library_product(libcbcsolver, "libCbcSolver-3.dll")
function __init__()
    JLLWrappers.@generate_init_header(Clp_jll, Cgl_jll, Osi_jll, CoinUtils_jll, OpenBLAS32_jll, CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libCbc,
        "bin\\libCbc-3.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libcbcsolver,
        "bin\\libCbcSolver-3.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
