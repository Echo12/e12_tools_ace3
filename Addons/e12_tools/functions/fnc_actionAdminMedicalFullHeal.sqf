#include "script_component.hpp"
PARAMS_1(_unit);

if(vehicle _unit == _unit) then {
	[nil, _unit] call ACE_medical_fnc_treatmentAdvanced_fullHealLocal;
	_unit enableStamina false;
	_unit forceWalk false;
	_unit allowSprint true;
} else {
	_unit setVehicleAmmo 1;
	_unit setFuel 1;
	_unit setDamage 0;	
};
