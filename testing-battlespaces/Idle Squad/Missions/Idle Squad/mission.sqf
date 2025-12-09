_missionVersion = 11;
setMissionVersion 11;
if !(isNil '_map') then
{
	call fn_vbs_editor_initGlobal;
	initAmbientLife;
};

_func_COC_Create_Unit = fn_vbs_editor_unit_create;
_func_COC_Update_Unit = fn_vbs_editor_unit_update;
_func_COC_Delete_Unit = fn_vbs_editor_unit_delete;
_func_COC_Import_Unit = fn_vbs_editor_unit_import;
_func_COC_UpdatePlayability_Unit = fn_vbs_editor_unit_updatePlayability;
_func_COC_Create_Group = fn_vbs_editor_group_create;
_func_COC_Update_Group = fn_vbs_editor_group_update;
_func_COC_Delete_Group = fn_vbs_editor_group_delete;
_func_COC_Delete_Group_Only = fn_vbs_editor_group_deleteOnlyGroup;
_func_COC_Attach_Group = fn_vbs_editor_group_attach;
_func_COC_Group_OnCatChanged = fn_vbs_editor_group_onCatChanged;
_func_COC_Group_OnTypeChanged = fn_vbs_editor_group_onTypeChanged;
_func_COC_Group_OnNewCatChanged = fn_vbs_editor_group_onNewCatChanged;
_func_COC_Group_OnNewTypeChanged = fn_vbs_editor_group_onNewTypeChanged;
_func_COC_Group_OnCreateInit = fn_vbs_editor_group_createOnInit;
_func_COC_Group_Selected = fn_vbs_editor_group_groupSelected;
_func_COC_SubTeam_Join = fn_vbs_editor_subteam_join;
_func_COC_Waypoint_Assign = fn_vbs_editor_waypoint_assign;
_func_COC_Waypoint_Delete = fn_vbs_editor_waypoint_delete;
_func_COC_Marker_Create = fn_vbs_editor_marker_create;
_func_COC_Marker_Update = fn_vbs_editor_marker_update;
_func_COC_Marker_SetDrawIcons = fn_vbs_editor_marker_setDrawIcons;
_func_COC_Marker_DlgChanged = fn_vbs_editor_marker_dlgChanged;
_func_COC_Marker_Tactical_Create = fn_vbs_editor_marker_tactical_create;
_func_COC_Marker_Tactical_Update = fn_vbs_editor_marker_tactical_update;
_func_COC_Marker_Tactical_SetDrawIcons = fn_vbs_editor_marker_tactical_setDrawIcons;
_getCrew = fn_vbs_editor_vehicle_getCrew;
_func_COC_Vehicle_Create = fn_vbs_editor_vehicle_create;
_func_COC_Vehicle_Update = fn_vbs_editor_vehicle_update;
_func_COC_Vehicle_Occupy = fn_vbs_editor_vehicle_occupy;
_func_COC_Vehicle_Delete = fn_vbs_editor_vehicle_delete;
_func_COC_Vehicle_UnJoin = fn_vbs_editor_vehicle_unJoinGroup;
_func_COC_Vehicle_GetInEH = fn_vbs_editor_vehicle_getInEH;
_func_COC_Vehicle_GetOutEH = fn_vbs_editor_vehicle_getOutEH;
_func_COC_Vehicle_OnTypeChanged = fn_vbs_editor_vehicle_onTypeChanged;
_func_COC_Vehicle_UpdatePlayability = fn_vbs_editor_vehicle_updatePlayability;
_func_COC_Import_Vehicle = fn_vbs_editor_vehicle_import;
_func_COC_Vehicle_Set_Arcs = fn_vbs_editor_vehicle_setArcs;
_func_COC_Trigger_SetDisplayName = fn_vbs_editor_trigger_setDisplayName;
_func_COC_Trigger_Create = fn_vbs_editor_trigger_create;
_func_COC_IED_Create = fn_vbs_editor_IED_create;
_func_COC_Set_Display_Names = fn_vbs_editor_setDisplayNames;
_func_COC_Set_Color = fn_vbs_editor_setColor;
_func_COC_PlaceObjOnObj = fn_vbs_editor_placeObjOnObj;
_func_COC_Draw_Distance = fn_vbs_editor_distance_draw;
_func_COC_LookAt_Create = fn_vbs_editor_lookAt_create;
editor_pausedQueues = getArray (configFile >> 'CfgEditorSettings' >> 'FunctionQueues' >> 'pausedQueuesOME');
{missionNamespace setVariable [_x, []]} forEach editor_pausedQueues;
private '_allWaypoints';

_group_14 = ["_group_14","1-1-A-5",[1002853.85617, 998748.68099, 355.40249],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_15 = ["_group_15","1-1-A-9",[1002827.31705, 998764.60567, 354.34100],"WEST","","","",0,[],"",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_18 = ["_group_18","1-1-A-12",[1002854.73511, 998754.08760, 354.45507],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_19 = ["_group_19","1-1-A-14",[1002835.07280, 998762.23922, 354.18505],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_20 = ["_group_20","1-1-A-15",[1002847.46438, 998756.62298, 354.44574],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_21 = ["_group_21","1-1-A-16",[1002831.21703, 998719.77168, 360.31652],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_22 = ["_group_22","1-1-A-11",[1002803.70522, 998747.79473, 357.52279],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_23 = ["_group_23","1-1-A-17",[1002812.07240, 998745.13294, 357.56643],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_24 = ["_group_24","1-1-A-18",[1002806.96263, 998745.01325, 357.72415],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_38 = ["_group_38","1-1-A-19",[1002821.25000, 998754.31250, 356.07904],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_95 = ["_group_95","1-1-A-1",[1002878.73167, 998689.15834, 360.64740],"EAST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_97 = ["_group_97","1-1-A-2",[1002872.61880, 998685.49386, 361.92233],"EAST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_aibehavior_14 = [ '_aibehavior_14', _aibehavior_14, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1001100.31250, 999314.93750, 372.96671], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 329.823760986328, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "4.67773435275376e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 28, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_15 = [ '_aibehavior_15', _aibehavior_15, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1002358.87500, 999161.81250, 375.51416], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 340.518798828125, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-1.56249996052793e-07", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 30, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_16 = [ '_aibehavior_16', _aibehavior_16, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1003372.06250, 998268.75000, 370.94037], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 0.451120018959045, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "1.34765622306077e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 32, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -58.793;
if (false) then
{
	_azimuth = 0;
};
_unit_32 = (
[
	"_unit_32", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1002853.85617, 998748.68099, 355.40249], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_14", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 38, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_14]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -38.292;
if (false) then
{
	_azimuth = 0;
};
_unit_33 = (
[
	"_unit_33", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1002803.70522, 998747.79473, 357.52279], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_22", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 75, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_22]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -38.292;
if (false) then
{
	_azimuth = 0;
};
_unit_34 = (
[
	"_unit_34", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1002812.07240, 998745.13294, 357.56643], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_23", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 112, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_23]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -38.292;
if (false) then
{
	_azimuth = 0;
};
_unit_35 = (
[
	"_unit_35", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1002806.96263, 998745.01325, 357.72415], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_24", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 137, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_24]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -38.292;
if (false) then
{
	_azimuth = 0;
};
_unit_36 = (
[
	"_unit_36", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [1002827.31705, 998764.60567, 354.34100], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_15", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 203, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_15]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -38.292;
if (false) then
{
	_azimuth = 0;
};
_unit_37 = (
[
	"_unit_37", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1002854.73511, 998754.08760, 354.45507], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_18", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 238, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_18]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -38.292;
if (false) then
{
	_azimuth = 0;
};
_unit_38 = (
[
	"_unit_38", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1002835.07280, 998762.23922, 354.18505], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_19", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 275, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_19]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -38.292;
if (false) then
{
	_azimuth = 0;
};
_unit_39 = (
[
	"_unit_39", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1002847.46438, 998756.62298, 354.44574], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_20", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 300, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_20]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -38.292;
if (false) then
{
	_azimuth = 0;
};
_unit_40 = (
[
	"_unit_40", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [1002831.21703, 998719.77168, 360.31652], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_21", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 366, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_21]) call fn_vbs_editor_unit_create;

_aibehavior_3 = [ '_aibehavior_3', _aibehavior_3, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1002308.00000, 1004649.68750, 313.91431], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 7.86629962921143, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "3.35937500040018e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 397, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_19 = [ '_aibehavior_19', _aibehavior_19, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_18], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1002853.82307, 998753.95696, 354.57260], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 0.549199998378754, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-1.31835935235358e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 401, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_trigger_9 = ["_trigger_9", [1002859.07271, 998740.86174, 356.45517], [2, 2, 4.08506, true], ["WEST", "PRESENT", false], [0, 0, 0, false], "NONE", "", "", ["this", "", ""],objNull,["true","NoChange","NoChange","NoChange","NoChange","NoChange","None","plain","vbs3_loadGame_splashScreen","$NONE$", addQuotes ''],"", [false, '', true], false] call '\vbs2\editor\Data\Scripts\trigger\createTrigger.sqf';

_aibehavior_22 = [ '_aibehavior_22', _aibehavior_22, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_19], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1002834.70002, 998762.57107, 354.14468], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 0.549199998378754, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 405, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_25 = [ '_aibehavior_25', _aibehavior_25, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_20], 'BEHAVIOR_LINK', ["_aibehavior_146"], 'TRIGGER_LINK', []],[
'POSITION', [1002848.25000, 998757.00000, 354.27789], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 2.42203998565674, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-3.06640623648491e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 407, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_28 = [ '_aibehavior_28', _aibehavior_28, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_15], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1002825.43642, 998765.33690, 354.36179], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 0.549199998378754, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 409, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_31 = [ '_aibehavior_31', _aibehavior_31, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_24], 'BEHAVIOR_LINK', ["_aibehavior_145"], 'TRIGGER_LINK', []],[
'POSITION', [1002808.93060, 998750.15649, 357.08786], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 359.877349853516, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 411, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_34 = [ '_aibehavior_34', _aibehavior_34, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_14], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1002853.81638, 998750.05704, 355.55066], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 359.877349853516, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0.344574794921868", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 413, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_37 = [ '_aibehavior_37', _aibehavior_37, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_23], 'BEHAVIOR_LINK', ["_aibehavior_144"], 'TRIGGER_LINK', []],[
'POSITION', [1002812.74610, 998747.16060, 357.31442], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 359.877349853516, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 415, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_39 = [ '_aibehavior_39', _aibehavior_39, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_22], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1002804.74610, 998750.74823, 357.17163], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 359.877349853516, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 417, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_41 = [ '_aibehavior_41', _aibehavior_41, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_21], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1002831.78579, 998720.89056, 360.16287], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 0.649050116539001, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 425, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -4.0014;
if (false) then
{
	_azimuth = 0;
};
_unit_63 = (
[
	"_unit_63", true, "vbs_us_mc_afvCrew_wdl_m_medium_mtw_none_m4a1", [1002821.25000, 998754.31250, 356.07904], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "true", true, "_group_38", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '', 1,
 429, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_38]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_143 = (
[
	"_unit_143", true, "vbs2_af_taliban_ak74gla", [1002878.73167, 998689.15834, 360.64740], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_95", "EAST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '', 1,
 459, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_95]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_145 = (
[
	"_unit_145", true, "vbs2_af_taliban_ak74gla", [1002876.01079, 998689.38996, 361.19711], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_95", "EAST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '_unit_143', 1,
 488, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_95]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_149 = (
[
	"_unit_149", true, "vbs2_af_taliban_ak74gla", [1002872.61880, 998685.49386, 361.92233], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_97", "EAST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '', 1,
 517, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_97]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_150 = (
[
	"_unit_150", true, "vbs2_af_taliban_ak74gla", [1002869.86880, 998685.74386, 362.03796], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_97", "EAST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '_unit_149', 1,
 544, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_97]) call fn_vbs_editor_unit_create;

_aibehavior_136 = [ '_aibehavior_136', _aibehavior_136, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_97], 'BEHAVIOR_LINK', ["_aibehavior_143"], 'TRIGGER_LINK', []],[
'POSITION', [1002846.00000, 998725.51302, 359.11679], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "4.99023440170276e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 570, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_138 = [ '_aibehavior_138', _aibehavior_138, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_95], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1002853.45159, 998741.28486, 356.49277], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0.00561790039063226", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 572, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_trigger_33 = ["_trigger_33", [1002848.40479, 998724.73245, 359.08975], [2, 2, 0, true], ["WEST", "PRESENT", false], [0, 0, 0, false], "NONE", "", "", ["this", "", ""],objNull,["true","NoChange","NoChange","NoChange","NoChange","NoChange","None","plain","vbs3_loadGame_splashScreen","$NONE$", addQuotes ''],"", [false, '', true], false] call '\vbs2\editor\Data\Scripts\trigger\createTrigger.sqf';

_aibehavior_143 = [ '_aibehavior_143', _aibehavior_143, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [1002838.20963, 998727.75348, 359.17825], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 576, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_144 = [ '_aibehavior_144', _aibehavior_144, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', [_trigger_33]],[
'POSITION', [1002819.03159, 998743.20910, 357.63782], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 122.156364440918, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 578, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_145 = [ '_aibehavior_145', _aibehavior_145, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', [_trigger_33]],[
'POSITION', [1002816.58093, 998741.94178, 357.84247], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 107.04207611084, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 580, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_146 = [ '_aibehavior_146', _aibehavior_146, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_20], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', [_trigger_9]],[
'POSITION', [1002854.04202, 998751.98590, 354.88867], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 115.817481994629, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-1.87500000947693e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 582, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

call fn_vbs_editor_group_finalizeGroups;
call fn_vbs_editor_waypoint_waypointsPrepare;
{_x call fn_vbs_editor_functionQueueRun} forEach editor_pausedQueues;
editor_pausedQueues = nil;
if (isNil '_map') then {processInitCommands};
