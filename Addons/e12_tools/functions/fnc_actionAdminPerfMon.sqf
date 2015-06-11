#include "script_component.hpp"
PARAMS_1(_player);

if((!isNil QGVAR(perfLogHC)) ) then {
	_perfHC = GVAR(perfLogHC);
	_player globalChat format["HC: Current FPS: %1, Lowest FPS: %2, Local Units: %3, Remote Units: %4", _perfHC select 0, _perfHC select 1, _perfHC select 2, _perfHC select 3]; 
}else{
	_player globalChat "HC Performance not available"; 
};
if(!isNil QGVAR(perfLogServer) ) then {
	_perfServ = GVAR(perfLogServer);
	_player globalChat format["Server: Current FPS: %1, Lowest FPS: %2, Local Units: %3, Remote Units: %4",_perfServ select 0, _perfServ select 1, _perfServ select 2, _perfServ select 3];
}else{
	_player globalChat "Server Performance not available";
};

