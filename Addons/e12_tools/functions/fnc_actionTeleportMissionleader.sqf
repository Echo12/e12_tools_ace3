#include "script_component.hpp"
PARAMS_1(_player); 
private["_telepos"];
  
_oldpos = getpos _player;
_telepos = [0,0,0];
_unit = nil;
{
    if(_x getVariable[QGVAR(islead),false]) then {
      	_telepos = getPos _x;  
		_unit = _x;
    };
}foreach allUnits;

if(!isNil "_unit") then {
	if(vehicle _unit == _unit) then {
		if(!(_telepos distance  [0,0,0] == 0)) then {
		    //[QGVAR(event_groupmsg),[player, 2]] call CBA_fnc_globalEvent;
			[_player,_telepos] call FUNC(actionTeleport);
		};
	}else{;
		_veh = vehicle _unit;
		_player moveInCargo _veh;
		sleep 0.5;
		if((getpos _player distance _oldpos) < 3) then {
			_player groupChat "Teleport fehlgeschlagen, Zielperson in vollbesetztem Fahrzeug, später erneut probieren";
		}else{
			[QGVAR(event_groupmsg),[_player, 2]] call CBA_fnc_globalEvent;
		};	
	};
}else{
    _player groupChat "Teleport fehlgeschlagen, Position des Missionsführers nicht bekannt";
};