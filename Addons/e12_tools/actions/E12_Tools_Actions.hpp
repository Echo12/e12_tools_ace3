class Tools {
    displayName = "$STR_E12_Tools_Actions_Tools";
    runOnHover = 1;
    exceptions[] = {"isNotInside","notOnMap"};
    statement = QUOTE(true);
    condition = QUOTE([_player] call FUNC(isAdmin));
    icon = PATHTOF(UI\icons\tools_main.paa);

	class E12_Other_AssignMedic {
        displayName = "$STR_E12_Tools_Actions_AssignMedic";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside","notOnMap"};
	    statement = QUOTE([_target] call FUNC(actionAdminMedicalAssignMedic));
	    condition = QUOTE((isPLayer _target));
	    icon = PATHTOF(UI\icons\tools_medical.paa);
	};

	class E12_Other_FullHeal {
        displayName = "$STR_E12_Tools_Actions_FullHeal";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside", "notOnMap"};
	    statement = QUOTE([_target] call FUNC(actionAdminMedicalFullHeal));
	    condition = QUOTE(true);
	    icon = PATHTOF(UI\icons\tools_medical.paa);
	};

	class E12_Other_AssignAdmin {
        displayName = "$STR_E12_Tools_Actions_AssignAdmin";
	    runOnHover = 0;
	    exceptions[] = {"isNotInside", "notOnMap"};
	    statement = QUOTE([_target] call FUNC(actionAdminAssignAdmin));
	    condition = QUOTE(false); //TODO: FIX IT! //QUOTE((isPlayer _target));
	    icon = PATHTOF(UI\icons\tools_admin.paa);
	};
};