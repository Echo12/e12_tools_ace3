class E12_Statistics {
    displayName = "$STR_E12_Tools_Actions_Statistics";
    runOnHover = 1;
    exceptions[] = {"isNotInside"};
    statement = QUOTE(true);
    condition = QUOTE(true);
    icon = PATHTOF(UI\icons\tools_stats.paa);

    class E12_Statistics_Enable {
        displayName = "$STR_E12_Tools_Actions_StatisticsEnable";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE([_player] spawn FUNC(actionStatsloop));
	    condition = QUOTE(!GVAR(statsActive) && !GVAR(statsRunning));
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Statistics_Disable{
        displayName = "$STR_E12_Tools_Actions_StatisticsDisable";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE(GVAR(statsActive) = false;);
	    condition = QUOTE(GVAR(statsActive));
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};

    class E12_Statistics_Show {
        displayName = "$STR_E12_Tools_Actions_StatisticsShow";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside"};
	    statement = QUOTE([_player] spawn FUNC(actionStatsShow));
	    condition = QUOTE([] call FUNC(statsAvailable));
	    icon = PATHTOF(UI\icons\tools_dot.paa);
	};
};
