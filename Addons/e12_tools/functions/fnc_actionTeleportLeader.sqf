#include "script_component.hpp"
PARAMS_1(_player); 

private["_telepos"];

_oldpos = getpos _player;
_telepos = getPos (leader (group _player));
_unit = (leader (group _player));

if(!isNil "_unit") then {
	if(vehicle _unit == _unit) then {
		if(!(_telepos distance  [0,0,0] == 0)) then {
		    [QGVAR(event_groupmsg),[_player, 1]] call CBA_fnc_globalEvent;
			[_player,_telepos] call FUNC(actionTeleport);
		};
	}else{;
		_veh = vehicle _unit;
		_player groupChat format["Vehicle: %1", _veh];
		_player moveInCargo _veh;
		sleep 0.5;
		if((getpos _player distance _oldpos) < 3) then {
			_player groupChat "Teleport fehlgeschlagen, Zielperson in vollbesetztem Fahrzeug, später erneut probieren";
		}else{
			//[QGVAR(event_groupmsg),[_player, 1]] call CBA_fnc_globalEvent;
		};	
	};
}else{
    _player groupChat "Teleport fehlgeschlagen, Position des Gruppenführers nicht bekannt";
};