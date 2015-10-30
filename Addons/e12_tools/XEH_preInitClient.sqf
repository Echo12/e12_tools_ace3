#include "script_component.hpp"

ADDON = false;

//STATS
GVAR(statsActive) = false;
GVAR(statsRunning) = false;
GVAR(stats) = [];
GVAR(shotsfired) = 0;
PREP(actionStatsLoop);
PREP(actionStatsShow);
PREP(statsAvailable);

//PERF MON
PREP(perfLogHC);
PREP(perfLogServer);
GVAR(perfLogServer)=[0, 0, 0, 0];
GVAR(perfLogHC)=[0, 0, 0, 0];

//SAFE RECONNECT
PREP(actionSafeReconnectPrepare);
PREP(actionSafeReconnectApply);
PREP(actionSafeReconnectRemove);
PREP(actionSafeReconnectAvailable);

//MISSIONBUILD
PREP(actionMissionGetPosASL);
PREP(actionMissionIsInvulnerable);
PREP(actionMissionToggleCaptivity);
PREP(actionMissionToggleInvulnerability);
PREP(actionMissionVirtualArsenal);

//TELEPORT
GVAR(teleport_oldpos) = [0,0,0];
PREP(actionTeleport);
PREP(actionTeleportBase);
PREP(actionTeleportLeader);
PREP(actionTeleportMapClick);
PREP(actionTeleportMissionleader);
PREP(actionTeleportOldPos);

//ADMIN
PREP(actionAdminCreateCrateACE);
PREP(actionAdminCreateCrateItems);
PREP(actionAdminCreateCrateMedic);
PREP(actionAdminCreateCrateRadio);
PREP(actionAdminMedicalAssignMedic);
PREP(actionAdminAssignAdmin);
PREP(actionAdminMedicalFullHeal);
PREP(actionAdminPerfMon);

//SETTINGS
GVAR(settings_admins) = []; //Array of Admin _USERNAMES_
PREP(isAdmin);

//CUSTOM ACTIONS
PREP(hasCustomActions);
PREP(actionDisplayCustomActions);

GVAR(custom_self1) = {false};
GVAR(custom_self1_text) = "Custom Action 1";
GVAR(custom_self1_code) = {};

GVAR(custom_self2) = {false};
GVAR(custom_self2_text) = "Custom Action 2";
GVAR(custom_self2_code) = {};

GVAR(custom_self3) =  {false};
GVAR(custom_self3_text) = "Custom Action 3";
GVAR(custom_self3_code) = {};

GVAR(custom_self4) =  {false};
GVAR(custom_self4_text) = "Custom Action 4";
GVAR(custom_self4_code) = {};

GVAR(custom_self5) =  {false};
GVAR(custom_self5_text) = "Custom Action 5";
GVAR(custom_self5_code) = {};

GVAR(custom_self6) = {false};
GVAR(custom_self6_text) = "Custom Action 6";
GVAR(custom_self6_code) = {};

GVAR(custom_self7) = {false};
GVAR(custom_self7_text) = "Custom Action 7";
GVAR(custom_self7_code) = {};

GVAR(custom_self8) = {false};
GVAR(custom_self8_text) = "Custom Action 8";
GVAR(custom_self8_code) = {};

GVAR(custom_self9) = {false};
GVAR(custom_self9_text) = "Custom Action 9";
GVAR(custom_self9_code) = {};

GVAR(custom_self10) = {false};
GVAR(custom_self10_text) = "Custom Action 10";
GVAR(custom_self10_code) = {};

GVAR(custom_self11) = {false};
GVAR(custom_self11_text) = "Custom Action 11";
GVAR(custom_self11_code) = {};

GVAR(custom_self12) = {false};
GVAR(custom_self12_text) = "Custom Action 12";
GVAR(custom_self12_code) = {};

GVAR(custom_self13) = {false};
GVAR(custom_self13_text) = "Custom Action 13";
GVAR(custom_self13_code) = {};

GVAR(custom_self14) = {false};
GVAR(custom_self14_text) = "Custom Action 14";
GVAR(custom_self14_code) = {};

GVAR(custom_self15) = {false};
GVAR(custom_self15_text) = "Custom Action 15";
GVAR(custom_self15_code) = {};

ADDON = true;
