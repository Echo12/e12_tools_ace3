#include "script_component.hpp"

[ "ViewSettings", "e12_tools", [true, false, true] ] call CBA_fnc_debug;

if (isClass (configFile >> "CfgPatches" >> "viewDistance_TAW")) then
{
		[] spawn TAWVD_fnc_openMenu;
};
