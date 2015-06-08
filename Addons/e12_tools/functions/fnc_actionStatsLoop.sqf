#include "script_component.hpp"
PARAMS_1(_player);

private["_newStats"];
GVAR(statsActive) = true;
GVAR(statsRunning) = true;

_EHkilledIdx = _player addEventHandler ["fired", {INC(GVAR(shotsfired));}];
LOG("Startup statsloop");
//Set Defauls
if(isNil QGVAR(stats) || !(count GVAR(stats) > 0)) then {
	//old playerposition, meter on foot, meter in vehicle, shots fired
	GVAR(stats)=[getPos (vehicle _player), 0, 0, 0];				
};	
TRACE_1("Stats before loop",GVAR(stats));
while {GVAR(statsActive)} do {
	_opos = GVAR(stats) select 0;
	_cpos = getPos (vehicle _player);
	_tOnFoot = GVAR(stats) select 1;
	_tOnVeh = GVAR(stats) select 2;
	_onfoot = (_player == vehicle _player);
	TRACE_1("On foot",_onfoot);
	TRACE_1("Opos",_opos,_cpos);
	_traveled = 0;
	if(!((_opos distance _cpos) > (STATSMAXDIST*STATSSLEEP))) then {
		TRACE_1("Distance ok",_opos distance _cpos);
		_traveled = _opos distance _cpos;
	}else{
		_traveled = 0;
	};
	TRACE_1("Traveled distance",_traveled);
	if(_onfoot) then {
		_tOnFoot = _tOnFoot + _traveled; 
	}else{
		_tOnVeh = _tOnVeh + _traveled;
	};
	_newStats = [_cpos,_tOnFoot,_tOnVeh,GVAR(shotsfired)];
	
	GVAR(stats) = _newStats;
	TRACE_1("Loop end", GVAR(stats));
	sleep STATSSLEEP;
};
_player removeEventHandler ["fired", _EHkilledIdx];
GVAR(statsRunning) = false;