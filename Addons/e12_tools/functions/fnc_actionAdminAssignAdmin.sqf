#include "script_component.hpp"
PARAMS_1(_player);

if ((isPlayer _player)) {
	_player setVariable[QGVAR(isadmin),true]);
}