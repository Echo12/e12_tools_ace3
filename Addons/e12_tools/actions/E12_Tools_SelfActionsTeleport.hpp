class E12_Teleport {
    displayName = "$STR_E12_Tools_Actions_Teleport";
    runOnHover = 1;
    exceptions[] = {"isNotInside", "notOnMap"};
	statement = QUOTE(true);
    condition = QUOTE(true);
    icon = PATHTOF(UI\icons\tools_teleport.paa);

    class E12_Teleport_Base {
        displayName = "$STR_E12_Tools_Actions_TeleportBase";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside", "notOnMap"};
	    statement = QUOTE([_player] call FUNC(actionTeleportBase));
	    condition = QUOTE(true);
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Teleport_Leader {
        displayName = "$STR_E12_Tools_Actions_TeleportLeader";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside", "notOnMap"};
	    statement = QUOTE([_player] call FUNC(actionTeleportLeader));
	    condition = QUOTE(true);
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Teleport_MissionLeader {
        displayName = "$STR_E12_Tools_Actions_TeleportMissionLeader";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside", "notOnMap"};
	    statement = QUOTE([_player] call FUNC(actionTeleportMissionleader));
	    condition = QUOTE(true);
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Teleport_LastPos {
        displayName = "$STR_E12_Tools_Actions_TeleportLastPos";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside", "notOnMap"};
	    statement = QUOTE([_player] call FUNC(actionTeleportOldPos));
	    condition = QUOTE(true);
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Teleport_MapClick {
        displayName = "$STR_E12_Tools_Actions_TeleportMap";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside", "notOnMap"};
	    statement = QUOTE([] call FUNC(actionTeleportMapClick));
	    condition = QUOTE([_player] call FUNC(isAdmin));
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};
};