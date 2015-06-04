class CfgVehicles {
	class Man;
    class CAManBase: Man {
    	class ACE_SelfActions {
            #include "actions\E12_Tools_SelfActions.hpp"
        };

        class ACE_Actions {
        	class ACE_MainActions {
            	#include "actions\E12_Tools_Actions.hpp"
        	};
        };
    };
};