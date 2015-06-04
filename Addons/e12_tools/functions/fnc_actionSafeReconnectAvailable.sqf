#include "script_component.hpp"
PARAMS_1(_unit);

private ["_uid","_safereconnectset","_safereconnectsetuid","_retval"];

_uid = getPlayerUID _unit;
if(isNil "_uid" || _uid == "") then {
	_uid="LOCAL";
};

_safereconnectset = !(_unit getVariable [QGVAR(safereconnectset),false]);
_safereconnectsetuid = !(isNil (format["e12_tools_safereconnect_uid_%1",_uid]));

_safereconnectset && _safereconnectsetuid

