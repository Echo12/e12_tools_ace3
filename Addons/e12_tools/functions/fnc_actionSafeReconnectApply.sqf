#include "script_component.hpp"
PARAMS_1(_unit);

titleText ["SAFE RECONNECT","BLACK OUT",3];
sleep 1;
_uid = getPlayerUID _unit;
if(isNil "_uid" || _uid == "") then {
	_uid="LOCAL";
};

if(!isNil format["e12_tools_safereconnect_uid_%1",_uid]) then {
	/*
	remove gear block removed
	*/
	if((!isNil format["e12_tools_safereconnect_uid_%1",_uid])) then {
		_restore = call compile format["e12_tools_safereconnect_uid_%1", _uid];
		_gear = _restore select 1;
		_pos = _restore select 2;
	
		_ret=[_unit,_gear] call ACE_Respawn_fnc_restoreGear;
		
		_unit setPosASL _pos;
		_unit setVariable [QGVAR(safereconnectset),true];
		[_unit] call FUNC(actionSafeReconnectRemove);
	};
}else{
	_unit globalChat "Safe Reconnect nicht verfügbar!";
};
titleText ["SAFE RECONNECT","BLACK IN",3];
sleep 3;


[ "applySafeReconnect", "e12_tools", [true, false, true] ] call CBA_fnc_debug;