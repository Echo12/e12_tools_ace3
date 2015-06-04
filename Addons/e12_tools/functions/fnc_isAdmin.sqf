#include "script_component.hpp"
PARAMS_1(_player);

(_player getVariable[QGVAR(isadmin),false]) || ((name _player) in GVAR(settings_admins))