#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.0;
        requiredAddons[] = {"ace_main"};
        author[] = {"Ugene"};
        authorUrl = "http://www.echo12.de";
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"