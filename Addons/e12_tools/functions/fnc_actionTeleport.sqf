#include "script_component.hpp"
PARAMS_2(_player,_pos);

GVAR(teleport_oldpos) = getPos _player;
//titleText ["Teleport erfolgt!","BLACK OUT",3];
//sleep 3;
_player setPos [_pos select 0, _pos select 1, 0];
//titleText ["Teleport erfolgt!","BLACK IN",3];
//sleep 3;