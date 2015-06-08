#include "script_component.hpp"

// Activate Server debug
if (isServer) then{
	if(isNil "e12_amf_perflog_disable") then {
		[] spawn FUNC(perfLogServer);    
	};
};