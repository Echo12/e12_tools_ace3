#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.0;
        requiredAddons[] = {"ace_main"};
		author[] = {"Echo12 Development Team"};
		version = "3.0.1";
        authorUrl = "http://www.echo12.de";
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"