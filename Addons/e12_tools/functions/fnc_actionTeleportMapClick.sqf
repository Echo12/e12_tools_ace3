#include "script_component.hpp" 

player globalChat "Teleport aktiviert, auf die Map klicken zum teleportieren"; 
onMapSingleClick "vehicle player setPos _pos;onMapSingleClick """";true;";