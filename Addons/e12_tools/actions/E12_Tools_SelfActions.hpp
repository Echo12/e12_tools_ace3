class E12_SelfActions {
    displayName = "$STR_E12_Tools_Actions_Tools";
    runOnHover = 1;
    exceptions[] = {"isNotInside","notOnMap"};
    statement = QUOTE(true);
    condition = QUOTE(true);
    icon = PATHTOF(UI\icons\tools_main.paa);


	//STATISTICS
	#include "E12_Tools_SelfActionsStatistics.hpp"

	//TELEPORT
	#include "E12_Tools_SelfActionsTeleport.hpp"

	//SAVE RECONNECT
	#include "E12_Tools_SelfActionsReconnect.hpp"

	//ADMIN
	#include "E12_Tools_SelfActionsAdmin.hpp"

	//MISSION BUILD
	#include "E12_Tools_SelfActionsBuild.hpp"

	//CUSTOM ACTIONS
	#include "E12_Tools_SelfActionsCustom.hpp"


};
