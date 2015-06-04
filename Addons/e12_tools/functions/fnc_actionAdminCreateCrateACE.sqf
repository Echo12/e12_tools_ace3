#include "script_component.hpp"
PARAMS_1(_unit);

[ str _pos, "e12_tools", [true, false, true] ] call CBA_fnc_debug;

[0, 
{
    private["_crate"];
    _crate = createVehicle ["ACE_Box_Misc", getpos _this, [], 0, "NONE"]; 
    _crate setpos  (_this modelToWorld [0,2,0]);
	_crate setDir ([_crate, _this] call BIS_fnc_dirTo);
	_crate allowdamage false;
},
_unit] call CBA_fnc_globalExecute;  

[ "CreateCrateAce", "e12_tools", [true, false, true] ] call CBA_fnc_debug;