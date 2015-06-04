#include "script_component.hpp"
PARAMS_1[_player];

private["_i","_action"];

[ "DisplayActions", "e12_tools", [true, false, true] ] call CBA_fnc_debug;

for "_i" from 1 to 15 do
{
    [_player,1,["ACE_SelfActions","E12_SelfActions","E12_CustomActions",format["E12_CustomAction_%1",_i] ]] call ace_interact_menu_fnc_removeActionFromObject;

};

_action = ["E12_CustomAction_1", GVAR(custom_self1_text), "", {[] spawn GVAR(custom_self1_code);}, {[] call GVAR(custom_self1);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_2", GVAR(custom_self2_text), "", {[] spawn GVAR(custom_self2_code);}, {[] call GVAR(custom_self2);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_3", GVAR(custom_self3_text), "", {[] spawn GVAR(custom_self3_code);}, {[] call GVAR(custom_self3);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_4", GVAR(custom_self4_text), "", {[] spawn GVAR(custom_self4_code);}, {[] call GVAR(custom_self4);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_5", GVAR(custom_self5_text), "", {[] spawn GVAR(custom_self5_code);}, {[] call GVAR(custom_self5);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_6", GVAR(custom_self6_text), "", {[] spawn GVAR(custom_self6_code);}, {[] call GVAR(custom_self6);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_7", GVAR(custom_self7_text), "", {[] spawn GVAR(custom_self7_code);}, {[] call GVAR(custom_self7);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_8", GVAR(custom_self8_text), "", {[] spawn GVAR(custom_self8_code);}, {[] call GVAR(custom_self8);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_9", GVAR(custom_self9_text), "", {[] spawn GVAR(custom_self9_code);}, {[] call GVAR(custom_self9);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_10", GVAR(custom_self10_text), "", {[] spawn GVAR(custom_self10_code);}, {[] call GVAR(custom_self10);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_11", GVAR(custom_self11_text), "", {[] spawn GVAR(custom_self11_code);}, {[] call GVAR(custom_self11);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_12", GVAR(custom_self12_text), "", {[] spawn GVAR(custom_self12_code);}, {[] call GVAR(custom_self12);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_13", GVAR(custom_self13_text), "", {[] spawn GVAR(custom_self13_code);}, {[] call GVAR(custom_self13);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_14", GVAR(custom_self14_text), "", {[] spawn GVAR(custom_self14_code);}, {[] call GVAR(custom_self14);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["E12_CustomAction_15", GVAR(custom_self15_text), "", {[] spawn GVAR(custom_self15_code);}, {[] call GVAR(custom_self15);}] call ace_interact_menu_fnc_createAction;
[_player, 1, ["ACE_SelfActions", "E12_SelfActions","E12_CustomActions"], _action] call ace_interact_menu_fnc_addActionToObject;