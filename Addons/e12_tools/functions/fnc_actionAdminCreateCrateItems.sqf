#include "script_component.hpp"
PARAMS_1(_unit);
#define __addWep(CRATE,CLASS) CRATE addWeaponCargoGlobal [CLASS, 4];
#define __addMag(CRATE,CLASS) CRATE addMagazineCargoGlobal [CLASS, 4];
#define __addItemKl(CRATE,CLASS) CRATE addItemCargoGlobal [CLASS, 4];
#define __addItem(CRATE,CLASS) CRATE addItemCargoGlobal [CLASS, 15];
#define __addItemBandage(CRATE,CLASS) CRATE addItemCargoGlobal [CLASS, 100];
#define __addItemMedic(CRATE,CLASS) CRATE addItemCargoGlobal [CLASS, 50];
#define __addMagMany(CRATE,CLASS) CRATE addMagazineCargoGlobal [CLASS, 50];
#define __addMagMG(CRATE,CLASS) CRATE addMagazineCargoGlobal [CLASS, 20];

[0, 
{
    private["_crate"];
    _crate = createVehicle ["Box_NATO_Ammo_F",getpos _this, [], 0, "NONE"]; 
        _crate setpos  (_this modelToWorld [0,2,0]);
	_crate setDir ([_crate, _this] call BIS_fnc_dirTo);
	_crate allowdamage false;
    clearWeaponCargoGlobal _crate;
	clearMagazineCargoGlobal _crate;
	clearItemCargoGlobal _crate;
    __addItemKl(_crate,"ItemMap")
    __addWep(_crate,"ItemWatch")
    __addWep(_crate,"Binocular")
    __addItemKl(_crate,"ItemGPS")
	__addWep(_crate,"ItemCompass")
    __addWep(_crate,"Laserdesignator")
    __addMag(_crate,"Laserbatteries")
	__addMag(_crate,"20Rnd_762x51_Mag")
	__addMag(_crate,"SmokeShellRed")
	__addMag(_crate,"SmokeShellGreen")
	__addMag(_crate,"SmokeShell")
	__addMag(_crate,"HandGrenade")
	__addMagMG(_crate,"150Rnd_762x51_Box_Tracer")
	__addMagMG(_crate,"200Rnd_65x39_cased_Box_Tracer")
	__addMagMG(_crate,"100Rnd_65x39_caseless_mag_Tracer")
	__addMagMany(_crate,"1Rnd_HE_Grenade_shell")
	__addMagMany(_crate,"30Rnd_556x45_Stanag_Tracer_Red")
	__addMagMany(_crate,"30Rnd_65x39_caseless_mag_Tracer")
},
_unit] call CBA_fnc_globalExecute; 

[ "CreateCrateItems", "e12_tools", [true, false, true] ] call CBA_fnc_debug;