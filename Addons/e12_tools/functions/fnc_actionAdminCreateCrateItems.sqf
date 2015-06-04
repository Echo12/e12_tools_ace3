#include "script_component.hpp"
PARAMS_1(_unit);

[0, 
{
    private["_crate"];
    	_crate = createVehicle ["Box_NATO_WpsSpecial_F",getpos _this, [], 0, "NONE"]; 
        _crate setpos  (_this modelToWorld [0,2,0]);
	_crate setDir ([_crate, _this] call BIS_fnc_dirTo);
	_crate allowdamage false;
    	clearWeaponCargoGlobal _crate;
	clearMagazineCargoGlobal _crate;
	clearItemCargoGlobal _crate;
	_crate addItemCargoGlobal ["ItemMap", 5];
	_crate addItemCargoGlobal ["ItemWatch", 5];
	_crate addItemCargoGlobal ["ItemGPS", 5];
	_crate addWeaponCargoGlobal ["Binocular", 5];
	_crate addWeaponCargoGlobal ["ItemCompass", 5];
	_crate addWeaponCargoGlobal ["Laserdesignator", 5];
    	_crate addMagazineCargoGlobal ["Laserbatteries", 5];
	_crate addMagazineCargoGlobal ["ACE_20Rnd_762x51_Mag_Tracer", 10];
	_crate addMagazineCargoGlobal ["10Rnd_338_Mag", 10];
	_crate addMagazineCargoGlobal ["10Rnd_93x64_DMR_05_Mag", 10];
	_crate addMagazineCargoGlobal ["10Rnd_127x54_Mag", 10];
	_crate addMagazineCargoGlobal ["7Rnd_408_Mag", 10];
	_crate addMagazineCargoGlobal ["5Rnd_127x108_Mag", 10];
	_crate addMagazineCargoGlobal ["SmokeShellRed", 10];
	_crate addMagazineCargoGlobal ["SmokeShellGreen", 10];
	_crate addMagazineCargoGlobal ["SmokeShell", 10];
	_crate addMagazineCargoGlobal ["HandGrenade", 10];
	_crate addMagazineCargoGlobal ["150Rnd_762x51_Box_Tracer", 10];
	_crate addMagazineCargoGlobal ["130Rnd_338_Mag", 10];
	_crate addMagazineCargoGlobal ["150Rnd_93x64_Mag", 10];
	_crate addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer", 10];
	_crate addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_Tracer", 10];
	_crate addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 50];
	_crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red", 50];
	_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", 50];
	_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 50];
},
_unit] call CBA_fnc_globalExecute; 

[ "CreateCrateItems", "e12_tools", [true, false, true] ] call CBA_fnc_debug;
