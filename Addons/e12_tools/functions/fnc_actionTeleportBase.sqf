#include "script_component.hpp"
PARAMS_1(_player); 
private["_telepos"];

_telepos = [0,0,0];
switch (side _player) do {
	case (west): {
		 _telepos = getMarkerPos "e12_debug_west"; 
 		if(_telepos distance  [0,0,0] == 0) then {
         	_telepos = getMarkerPos "respawn_west";   
        };   
	}; 
    case (east): {
    	_telepos = getMarkerPos "e12_debug_east"; 
 		if(_telepos distance  [0,0,0] == 0) then {
         	_telepos = getMarkerPos "respawn_east";   
        };    
    };
    case (guer): {
    	_telepos = getMarkerPos "e12_debug_guerrila"; 
 		if(_telepos distance  [0,0,0] == 0) then {
         	_telepos = getMarkerPos "respawn_guerrila";   
        };    
    };
    default {
    	_telepos = getMarkerPos "e12_debug_civilian"; 
 		if(_telepos distance  [0,0,0] == 0) then {
         	_telepos = getMarkerPos "respawn_civilian";   
        };    
    }; 
};
 if(!(_telepos distance  [0,0,0] == 0)) then {
     //[QGVAR(event_groupmsg),[_player, 0]] call CBA_fnc_globalEvent;
	 [_player,_telepos] call FUNC(actionTeleport);
}else{
 	_player groupChat "Teleport fehlgeschlagen, keine Base-Position bekannt";   
};
