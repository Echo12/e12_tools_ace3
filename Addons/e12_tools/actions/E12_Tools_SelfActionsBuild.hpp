class E12_Mission {
    displayName = "$STR_E12_Tools_Actions_Mission";
    runOnHover = 1;
    exceptions[] = {"isNotInside"};
  	statement = QUOTE(true);
    condition = QUOTE([_player] call FUNC(isAdmin));
    icon = PATHTOF(UI\icons\tools_mission.paa);

    class E12_Mission_SetCaptive {
        displayName = "$STR_E12_Tools_Actions_SetCaptive";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE([_player] call FUNC(actionMissionToggleCaptivity));
	    condition = QUOTE(!(captive _player));
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Mission_SetNonCaptive {
        displayName = "$STR_E12_Tools_Actions_SetNonCaptive";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE([_player] call FUNC(actionMissionToggleCaptivity));
	    condition = QUOTE((captive _player));
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Mission_Invulnerable {
        displayName = "$STR_E12_Tools_Actions_Invulnerable";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE([_player] call FUNC(actionMissionToggleInvulnerability));
	    condition = QUOTE(!([_player] call FUNC(actionMissionIsInvulnerable)));
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Mission_Vulnerable {
        displayName = "$STR_E12_Tools_Actions_Vulnerable";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE([_player] call FUNC(actionMissionToggleInvulnerability));
	    condition = QUOTE([_player] call FUNC(actionMissionIsInvulnerable));
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Mission_VirtualArsenal {
        displayName = "$STR_E12_Tools_Actions_VirtualArsenal";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE([] call FUNC(actionMissionVirtualArsenal));
	    condition = QUOTE(true);
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Mission_GetPos {
        displayName = "$STR_E12_Tools_Actions_GetPos";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE([_player] call FUNC(actionMissionGetPosASL));
	    condition = QUOTE(true);
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};
};