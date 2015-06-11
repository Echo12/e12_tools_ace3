#include "script_component.hpp"

if (isClass (configFile >> "CfgPatches" >> "viewDistance_TAW")) then
{
		[] spawn TAWVD_fnc_openMenu;
};
