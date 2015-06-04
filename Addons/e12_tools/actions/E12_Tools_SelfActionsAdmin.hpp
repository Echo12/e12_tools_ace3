class E12_Admin {
        displayName = "$STR_E12_Tools_Actions_Admin";
	    runOnHover = 1;
	    exceptions[] = {"isNotInside"};
		statement = QUOTE(true);
	    condition = QUOTE([_player] call FUNC(isAdmin));
	    icon = PATHTOF(UI\icons\tools_admin.paa);

		class E12_Admin_AssignMedicSelf {
	        displayName = "$STR_E12_Tools_Actions_AssignMedicSelf";
		    runOnHover = 0;
		    exceptions[] = {"isNotInside"};
		    statement = QUOTE([_player] call FUNC(actionAdminMedicalAssignMedic));
		    condition = QUOTE(true);
		    icon = PATHTOF(UI\icons\tools_medical.paa);
		};

		class E12_Admin_FullHeal {
	        displayName = "$STR_E12_Tools_Actions_FullHeal";
		    runOnHover = 0;
		    exceptions[] = {"isNotInside"};
		    statement = QUOTE([_player] call FUNC(actionAdminMedicalFullHeal));
		    condition = QUOTE(true);
		    icon = PATHTOF(UI\icons\tools_medical.paa);
		};

		class E12_Admin_CrateItem {
	        displayName = "$STR_E12_Tools_Actions_CrateItem";
		    runOnHover = 0;
		    exceptions[] = {"isNotInside"};
			statement = QUOTE([_player] call FUNC(actionAdminCreateCrateItems));
		    condition = QUOTE(true);
		    icon = PATHTOF(UI\icons\tools_dot.paa);
		};

		class E12_Admin_CrateMedic {
	        displayName = "$STR_E12_Tools_Actions_CrateMedic";
		    runOnHover = 0;
		    exceptions[] = {"isNotInside"};
		    statement = QUOTE([_player] call FUNC(actionAdminCreateCrateMedic));
		    condition = QUOTE(true);
		    icon = PATHTOF(UI\icons\tools_dot.paa);
		};

		class E12_Admin_CrateRadio {
	        displayName = "$STR_E12_Tools_Actions_CrateRadio";
		    runOnHover = 0;
		    exceptions[] = {"isNotInside"};
		    statement = QUOTE([_player] call FUNC(actionAdminCreateCrateRadio));
		    condition = QUOTE(true);
		    icon = PATHTOF(UI\icons\tools_dot.paa);
		};

		class E12_Admin_CrateACE {
	        displayName = "$STR_E12_Tools_Actions_CrateACE";
		    runOnHover = 0;
		    exceptions[] = {"isNotInside"};
		    statement = QUOTE([_player] call FUNC(actionAdminCreateCrateACE));
		    condition = QUOTE(true);
		    icon = PATHTOF(UI\icons\tools_dot.paa);
		};
	};