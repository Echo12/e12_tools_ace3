#include "script_component.hpp"
PARAMS_1(_player);

_player setVariable ["ace_medical_medicClass", 1];

[ "MakeMedic", "e12_tools", [true, false, true] ] call CBA_fnc_debug;
