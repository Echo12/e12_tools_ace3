class Cfg3DEN {
    class Object {
        class AttributeCategories {
        	class e12_tools_attributes {
        		displayName = CSTRING(3den_E12Tools_DisplayName);
                collapsed = 1;
                class Attributes {
                    class e12_tools_islead {
                    	property = QUOTE(islead);
                        control = "Checkbox";
                        displayName = CSTRING(3den_MissionLead_DisplayName);
                        tooltip = CSTRING(3den_MissionLead_Description);
                        expression = QUOTE(_this setVariable [ARR_2(QUOTE(QGVAR(islead)),_value)];);
                        typeName = "BOOL";
                        condition = "objectBrain";
                        defaultValue = "false";
                        unique = 1;
                   	};

                   	class e12_tools_isadmin {
                    	property = QUOTE(isadmin);
                        control = "Checkbox";
                        displayName = CSTRING(3den_Admin_DisplayName);
                        tooltip = CSTRING(3den_Admin_Description);
                        expression = QUOTE(_this setVariable [ARR_2(QUOTE(QGVAR(isadmin)),_value)];);
                        typeName = "BOOL";
                        unique = 0;
                        condition = "objectBrain";
                        defaultValue = "false";
                   	};
                };
            };
        };
    };
};