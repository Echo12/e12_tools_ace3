class E12_SaveReconnect {
    displayName = "$STR_E12_Tools_Actions_SaveReconnect";
    runOnHover = 1;
    exceptions[] = {"isNotInside"};
    statement = QUOTE(true);
    condition = QUOTE(true);
    icon = PATHTOF(UI\icons\tools_saferecon.paa);

    class E12_SaveReconnect_Prepare {
        displayName = "$STR_E12_Tools_Actions_SaveReconnect_Prepare";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE([_player] call FUNC(actionSafeReconnectPrepare));
	    condition = QUOTE(!([_player] call FUNC(actionSafeReconnectAvailable)) && {(vehicle _player == _player)});
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_SaveReconnect_Apply {
        displayName = "$STR_E12_Tools_Actions_SaveReconnect_Apply";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE([] call FUNC(actionSafeReconnectApply));
	    condition = QUOTE(([_player] call FUNC(actionSafeReconnectAvailable)));
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};
};