# Autogenerated wrapper script for Cbc_jll for powerpc64le-linux-gnu-libgfortran4-cxx03
export libcbcsolver, libCbc

using Clp_jll
using Cgl_jll
using Osi_jll
using CoinUtils_jll
using OpenBLAS32_jll
using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libcbcsolver`
const libcbcsolver_splitpath = ["lib", "libCbcSolver.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcbcsolver_path = ""

# libcbcsolver-specific global declaration
# This will be filled out by __init__()
libcbcsolver_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcbcsolver = "libCbcSolver.so.3"


# Relative path to `libCbc`
const libCbc_splitpath = ["lib", "libCbc.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libCbc_path = ""

# libCbc-specific global declaration
# This will be filled out by __init__()
libCbc_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libCbc = "libCbc.so.3"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Cbc")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Clp_jll.PATH_list, Cgl_jll.PATH_list, Osi_jll.PATH_list, CoinUtils_jll.PATH_list, OpenBLAS32_jll.PATH_list, CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Clp_jll.LIBPATH_list, Cgl_jll.LIBPATH_list, Osi_jll.LIBPATH_list, CoinUtils_jll.LIBPATH_list, OpenBLAS32_jll.LIBPATH_list, CompilerSupportLibraries_jll.LIBPATH_list,))

    global libcbcsolver_path = normpath(joinpath(artifact_dir, libcbcsolver_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcbcsolver_handle = dlopen(libcbcsolver_path)
    push!(LIBPATH_list, dirname(libcbcsolver_path))

    global libCbc_path = normpath(joinpath(artifact_dir, libCbc_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libCbc_handle = dlopen(libCbc_path)
    push!(LIBPATH_list, dirname(libCbc_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

