#include "\x\cba\addons\main\script_macros_common.hpp"
#include "\x\cba\addons\xeh\script_xeh.hpp"

#define __ISPERFLOGON(A) (!((A) select 0 == 0 && (A) select 1 == 0 && (A) select 2 == 0 && (A) select 3 == 0))
#define STATSSLEEP 2
#define STATSMAXDIST 250

#define PATHTOEF(var1,var2) PATHTOF_SYS(PREFIX,var1,var2)

#ifdef DISABLE_COMPILE_CACHE
    #define PREP(fncName) FUNC(fncName) = compile preprocessFileLineNumbers QUOTE(PATHTOF(functions\DOUBLES(fnc,fncName).sqf))
#else
    #define PREP(fncName) FUNC(fncName) = QUOTE(PATHTOF(functions\DOUBLES(fnc,fncName).sqf)) call SLX_XEH_COMPILE
#endif