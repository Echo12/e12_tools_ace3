#include "script_component.hpp"
PARAMS_1(_unit);

if(vehicle _unit == _unit) then {
	[_unit] call ace_medical_treatment_fnc_fullHealLocal;
	_unit enableStamina false;
	_unit forceWalk false;
	_unit allowSprint true;
	_unit setVariable [QGVAR(thirst), 0];
	_unit setVariable [QGVAR(hunger), 0];
} else {
	_unit setVehicleAmmo 1;
	_unit setFuel 1;
	_unit setDamage 0;	
};
