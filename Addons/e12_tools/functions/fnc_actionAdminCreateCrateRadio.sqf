#include "script_component.hpp"
PARAMS_1(_unit);

[0, 
{
	if (isClass (configFile >> "CfgPatches" >> "acre_main")) then {
	    private["_crate"];
	    _crate = createVehicle ["Box_NATO_Support_F", _this, [], 0, "NONE"]; 
        _crate setpos  (_this modelToWorld [0,2,0]);
		_crate setDir ([_crate, _this] call BIS_fnc_dirTo);
		_crate allowdamage false;
		clearItemCargoGlobal _crate;
		clearWeaponCargoGlobal _crate;
		clearMagazineCargoGlobal _crate;
		clearBackpackCargoGlobal _crate;
		_crate addItemCargoGlobal ["ACRE_PRC343", 20];
		_crate addItemCargoGlobal ["ACRE_PRC148", 20];
		_crate addItemCargoGlobal ["ACRE_PRC152", 20];
		_crate addItemCargoGlobal ["ACRE_PRC117F", 20];
		_crate addItemCargoGlobal ["ACRE_PRC77", 20];
	};
},
_unit] call CBA_fnc_globalExecute;  