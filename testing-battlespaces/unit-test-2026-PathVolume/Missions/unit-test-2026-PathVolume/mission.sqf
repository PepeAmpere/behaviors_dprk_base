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

_group_3 = ["_group_3","1-1-A-4",[1000004.22613, 1000061.50216, 448.41491],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_4 = ["_group_4","1-1-A-5",[999963.59422, 1000498.32681, 429.33395],"WEST","","structure_groups","",0,["_group_5", "_group_6"],"",false,false,"","",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_5 = ["_group_5","1-1-A-2",[999963.59422, 1000498.32681, 429.33395],"WEST","","","",0,[],"_group_4",false,true,"","",-1,"SFGPUCI----A","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_6 = ["_group_6","1-1-A-3",[999999.66306, 1000484.50492, 425.93893],"WEST","","","",0,[],"_group_4",false,true,"","",-1,"SFGPUCI----A","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_7 = ["_group_7","1-1-A-1",[999652.21320, 1000754.74169, 427.14740],"EAST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_8 = (
[
	"_unit_8", true, "vbs_au_army_afvcommander_amcu_m_medium_tbas0_none_ef88_helmet", [1000004.22613, 1000061.50216, 448.41491], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "true", true, "_group_3", "WEST", "", [], "", "INHERIT", 'AWARE', "Up", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '', 1,
 19, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_3]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_9 = (
[
	"_unit_9", true, "vbs_se_army_leader_wdl_M_medium_fmv1_mopp0_ak5c_helmet", [999963.59422, 1000498.32681, 429.33395], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_5", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 35, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_5]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_10 = (
[
	"_unit_10", true, "vbs_se_army_mgunner_wdl_M_medium_fmv1_mopp0_ksp58_helmet", [999964.25132, 1000493.02407, 429.22250], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_5", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_9', 1,
 59, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_5]) call fn_vbs_editor_unit_create;

_aibehavior_4 = [ '_aibehavior_4', _aibehavior_4, 'behaviors_dprk_TestPathVolume', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_4], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [999650.97402, 1000764.70767, 426.81705], 'DISPLAY_NAME_TREE', "DPRK Test Path Volume", 'AZIMUTH', 79.924446105957, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["debugEnabled","true","boolean"]],["advancedDebugType",["advancedDebugType","0","number"]],["analysisType",["analysisType","0","number"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\customer\plugins\behaviors_dprk_base\data\aa.paa", 'ICON_TEXT', "DPRK Test Path Volume", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_base", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_base\behaviors_dprk_base.btset", 'BEHAVIOR_ENTITY', "AutonomousBehavior", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPACING_VEHICLE', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short", 'FIRE_RATE', "maximum", 'KNOWN_POSITIONS_ONLY', false
, 'VERSION', 1
, 'OME_ID', 74, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_11 = (
[
	"_unit_11", true, "vbs_se_army_medic_wdl_M_medium_fmv1_mopp0_ak5c_helmet", [999973.25131, 1000493.02404, 428.51678], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_5", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_9', 1,
 77, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_5]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_12 = (
[
	"_unit_12", true, "vbs_se_army_sniper_wdl_M_medium_fmv1_mopp0_psg90a_helmet", [999959.75132, 1000484.02407, 429.22949], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_5", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_9', 1,
 95, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_5]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_17 = (
[
	"_unit_17", true, "vbs2_af_taliban_ak74", [999652.21320, 1000754.74169, 427.14740], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_7", "EAST", "", [], "", "INHERIT", 'AWARE', "Up", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '', 1,
 106, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_7]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_13 = (
[
	"_unit_13", true, "vbs_se_army_grenadier_wdl_M_medium_fmv1_mopp0_ak5c_helmet", [999999.66306, 1000484.50492, 425.93893], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_6", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 112, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_6]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_19 = (
[
	"_unit_19", true, "vbs2_af_taliban_ak74", [999658.00000, 1000757.93750, 427.47345], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_7", "EAST", "", [], "", "INHERIT", 'AWARE', "Up", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '_unit_17', 1,
 125, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_7]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_21 = (
[
	"_unit_21", true, "vbs2_af_taliban_ak74", [999662.75000, 1000762.87500, 427.54745], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_7", "EAST", "", [], "", "INHERIT", 'AWARE', "Up", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '_unit_17', 1,
 131, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_7]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_23 = (
[
	"_unit_23", true, "vbs2_af_taliban_ak74", [999665.12500, 1000754.87500, 427.87680], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_7", "EAST", "", [], "", "INHERIT", 'AWARE', "Up", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '_unit_17', 1,
 137, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_7]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_25 = (
[
	"_unit_25", true, "vbs2_af_taliban_ak74", [999660.18750, 1000751.06250, 427.61685], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_7", "EAST", "", [], "", "INHERIT", 'AWARE', "Up", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '_unit_17', 1,
 143, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_7]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_14 = (
[
	"_unit_14", true, "vbs_se_army_mgunner_wdl_M_medium_fmv1_mopp0_ksp90_helmet", [999995.16306, 1000475.50492, 426.25549], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_6", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_13', 1,
 149, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_6]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_15 = (
[
	"_unit_15", true, "vbs_se_army_atsoldier_wdl_M_medium_fmv1_mopp0_ak5crb57_helmet", [1000004.16306, 1000475.50495, 425.40090], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_6", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_13', 1,
 164, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_6]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_16 = (
[
	"_unit_16", true, "vbs_se_army_atsoldier_wdl_M_medium_fmv1_mopp0_ak5crb57_helmet", [999990.66306, 1000466.50493, 426.51409], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_6", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_13', 1,
 185, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_6]) call fn_vbs_editor_unit_create;

call fn_vbs_editor_group_finalizeGroups;
call fn_vbs_editor_waypoint_waypointsPrepare;
{_x call fn_vbs_editor_functionQueueRun} forEach editor_pausedQueues;
editor_pausedQueues = nil;
if (isNil '_map') then {processInitCommands};
