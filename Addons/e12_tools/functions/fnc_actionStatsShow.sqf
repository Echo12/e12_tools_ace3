#include "script_component.hpp"
PARAMS_1(_player);

if(isNil QGVAR(stats) || !(count GVAR(stats) > 0)) then {
	//old playerposition, meter on foot, meter in vehicle, shots fired
	GVAR(stats)=[getPos (vehicle _player), 0, 0, 0];				
};	
_player globalChat format["Distanz zu Fuss: %1m, Per Fahrzeug: %2m, Schüsse abgegeben: %3", ceil (GVAR(stats) select 1), ceil(GVAR(stats) select 2), GVAR(stats) select 3];