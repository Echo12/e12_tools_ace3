#include "script_component.hpp"
PARAMS_1(_unit);

if(vehicle _unit == _unit) then {
	[nil, _unit] call ACE_medical_fnc_treatmentAdvanced_fullHealLocal;
	_unit setFatigue 0;
} else {
	_unit setVehicleAmmo 1;
	_unit setFuel 1;
	_unit setDamage 0;	
};

[ "FullHeal", "e12_tools", [true, false, true] ] call CBA_fnc_debug;

