#include "script_component.hpp"
PARAMS_1(_player);

if(!(GVAR(teleport_oldpos) distance  [0,0,0] == 0)) then {
	[_player,GVAR(teleport_oldpos)] call FUNC(actionTeleport);
}else{
    player groupChat "Teleport fehlgeschlagen, keine alte Position bekannt";
};