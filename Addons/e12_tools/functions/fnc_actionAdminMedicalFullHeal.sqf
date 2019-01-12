#include "script_component.hpp"
PARAMS_1(_unit);

if(vehicle _unit == _unit) then {
	[nil, _unit] call ACE_medical_fnc_treatmentAdvanced_fullHealLocal;
	_unit enableStamina false;
	_unit forceWalk false;
	_unit allowSprint true;
	_unit setVariable [QGVAR(thirst), 0];
	_unit setVariable [QGVAR(hunger), 0];
	_unit setVariable [QGVAR(pain), 0, true];
	_unit setVariable [QGVAR(morphine), 0, true];
	_unit setVariable [QGVAR(bloodVolume), 100, true];
	_unit setVariable ["ACE_isUnconscious", false, true];
	_unit setVariable [QGVAR(tourniquets), [0,0,0,0,0,0], true];
} else {
	_unit setVehicleAmmo 1;
	_unit setFuel 1;
	_unit setDamage 0;	
};
