#include "script_component.hpp"
PARAMS_1(_unit);

_unit setCaptive (!(captive _unit));

[ "ToogleCaptive", "e12_tools", [true, false, true] ] call CBA_fnc_debug;
