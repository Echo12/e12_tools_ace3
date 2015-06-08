#include "script_component.hpp"

//Execute on HC
if (!hasInterface && !isServer) then{
    if(isNil "e12_amf_perflog_disable") then {
        [] spawn FUNC(perfLogHC);    
    };
};