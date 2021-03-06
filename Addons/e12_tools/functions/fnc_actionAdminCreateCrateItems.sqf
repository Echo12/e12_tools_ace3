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
	
//Items
	_crate addItemCargoGlobal ["ItemMap", 5];
	_crate addItemCargoGlobal ["ItemWatch", 5];
	_crate addItemCargoGlobal ["ItemGPS", 5];
	_crate addItemCargoGlobal ["ACE_MapTools",5];
	_crate addItemCargoGlobal ["ACE_EntrenchingTool",5];
	_crate addItemCargoGlobal ["ACE_DAGR",2];
	_crate addItemCargoGlobal ["ACE_ATragMX",2];
	_crate addItemCargoGlobal ["ACE_EntrenchingTool",2];
	_crate addItemCargoGlobal ["ACE_DefusalKit",2];
	_crate addItemCargoGlobal ["ACE_RangeCard",2];
	_crate addItemCargoGlobal ["ACE_HuntIR_monitor",2];
	_crate addItemCargoGlobal ["ACE_IR_Strobe_Item",10];
	_crate addItemCargoGlobal ["ACE_Flashlight_KSF1",2];
	_crate addItemCargoGlobal ["ACE_Clacker",2];
	_crate addItemCargoGlobal ["DemoCharge_Remote_Mag",4];
	_crate addWeaponCargoGlobal ["Binocular", 5];
	_crate addWeaponCargoGlobal ["ItemCompass", 5];
	_crate addWeaponCargoGlobal ["Laserdesignator", 5];
	_crate addMagazineCargoGlobal ["Laserbatteries", 5];
	
//Infantrie Munition
	_crate addMagazineCargoGlobal ["ACE_20Rnd_762x51_Mag_Tracer", 10];
	_crate addMagazineCargoGlobal ["10Rnd_338_Mag", 10];
	_crate addMagazineCargoGlobal ["10Rnd_93x64_DMR_05_Mag", 10];
	_crate addMagazineCargoGlobal ["10Rnd_127x54_Mag", 10];
	_crate addMagazineCargoGlobal ["7Rnd_408_Mag", 10];
	_crate addMagazineCargoGlobal ["5Rnd_127x108_Mag", 10];
	_crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red", 50];
	_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_mag_Tracer", 50];
	_crate addMagazineCargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer", 50];
	_crate addMagazineCargoGlobal ["30Rnd_762x39_Mag_Green_F",50];
	
//Granaten
	_crate addMagazineCargoGlobal ["SmokeShellRed", 10];
	_crate addMagazineCargoGlobal ["SmokeShellGreen", 10];
	_crate addMagazineCargoGlobal ["SmokeShell", 10];
	_crate addMagazineCargoGlobal ["HandGrenade", 10];
	_crate addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 50];
	
//Maschinengewehrmunition
	_crate addMagazineCargoGlobal ["150Rnd_762x54_Box_Tracer", 10];
	_crate addMagazineCargoGlobal ["130Rnd_338_Mag", 10];
	_crate addMagazineCargoGlobal ["150Rnd_93x64_Mag", 10];
	_crate addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer", 10];
	_crate addMagazineCargoGlobal ["100Rnd_65x39_caseless_mag_Tracer", 10];
	_crate addMagazineCargoGlobal ["200Rnd_556x45_Box_Tracer_Red_F",10];

},
_unit] call CBA_fnc_globalExecute; 
