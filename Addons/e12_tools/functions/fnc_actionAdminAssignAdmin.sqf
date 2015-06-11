#include "script_component.hpp"
PARAMS_1(_target);

[-2, 
{
_this setVariable[QGVAR(isadmin),true]);
},
_target] call CBA_fnc_globalExecute;  