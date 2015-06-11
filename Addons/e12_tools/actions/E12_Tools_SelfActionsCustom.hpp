class E12_CustomActions {
    displayName = "$STR_E12_Tools_Actions_CustomActions";
    runOnHover = 1;
    exceptions[] = {"isNotInside", "notOnMap"};
    statement = QUOTE([_player] call FUNC(actionDisplayCustomActions));
    condition = QUOTE(([_player] call FUNC(isAdmin)) && ([] call FUNC(hasCustomActions)));
    icon = PATHTOF(UI\icons\tools_actions.paa);
};





