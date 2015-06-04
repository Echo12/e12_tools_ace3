#include "script_component.hpp"

hintsilent format ["Pos: %1",getposasl player]; copyToClipboard format["%1",getposasl player];

[ "GetPosASL", "e12_tools", [true, false, true] ] call CBA_fnc_debug;