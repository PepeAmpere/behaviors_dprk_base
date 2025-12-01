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

_group_1 = ["_group_1","1-1-A-1",[999892.51502, 1000006.09787, 487.54480],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_9 = ["_group_9","1-1-A-6",[999971.58135, 1000036.44569, 119.34909],"WEST","","structure_groups","",0,["_group_10", "_group_11", "_group_12", "_group_13"],"",false,false,"","",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_10 = ["_group_10","1-1-A-2",[999963.18750, 1000041.87500, 477.39492],"WEST","","","",0,[],"_group_9",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_11 = ["_group_11","1-1-A-3",[999961.15163, 1000025.21218, 480.05072],"WEST","","","",0,[],"_group_9",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_12 = ["_group_12","1-1-A-4",[999988.04096, 1000036.95218, 476.89227],"WEST","","","",0,[],"_group_9",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_13 = ["_group_13","1-1-A-5",[999973.94532, 1000010.52956, 481.72610],"WEST","","","",0,[],"_group_9",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_38 = (
[
	"_unit_38", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [999988.04096, 1000036.95218, 476.89227], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_12", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 12, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_12]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_39 = (
[
	"_unit_39", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [999988.47846, 1000026.45218, 478.32730], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_12", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_38', 1,
 49, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_12]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_40 = (
[
	"_unit_40", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [999996.79096, 1000030.51468, 477.23727], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_12", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_38', 1,
 74, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_12]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_41 = (
[
	"_unit_41", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [999988.59900, 1000016.07856, 479.72869], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_12", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_38', 1,
 140, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_12]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_42 = (
[
	"_unit_42", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [999973.94532, 1000010.52956, 481.72610], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 175, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_13]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_43 = (
[
	"_unit_43", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [999974.13282, 999999.59206, 483.31799], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_42', 1,
 212, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_13]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_44 = (
[
	"_unit_44", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [999982.32032, 1000002.96706, 482.32046], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_42', 1,
 237, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_13]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_45 = (
[
	"_unit_45", true, "vbs_us_mc_atrifleman_wdl_m_medium_mtw_none_m16a4_smaw", [999973.88282, 999989.02956, 484.76242], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_42', 1,
 303, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_13]) call fn_vbs_editor_unit_create;

_object_0 = objNull;
if (true) then
{
	_azimuth = -0.48025;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_0 = ["_object_0", false, "vbs2_visual_arrow_green", [999660.68750, 1000328.00000, 478.48392], [], 0, "CAN_COLLIDE", _azimuth, "EndPos",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [-0.0083086,0.99122,-0.13195], [0.062292,0.13221,0.98926], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 332, 2, false] call fn_vbs_editor_vehicle_create;
};

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0.090914;
if (false) then
{
	_azimuth = 0;
};
_unit_0 = (
[
	"_unit_0", true, "vbs_cz_army_afvcrew_wdl_m_medium_none_none_cz805a1_none", [999892.51502, 1000006.09787, 487.54480], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "true", true, "_group_1", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '', 1,
 335, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "NoBehavior", 1
] + [_group_1]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_33 = (
[
	"_unit_33", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [999963.18750, 1000041.87500, 477.39492], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_10", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 364, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_10]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_34 = (
[
	"_unit_34", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [999961.15163, 1000025.21218, 480.05072], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_11", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 401, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_11]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_35 = (
[
	"_unit_35", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [999961.40163, 1000014.83718, 481.75915], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_11", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_34', 1,
 438, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_11]) call fn_vbs_editor_unit_create;

_aibehavior_1 = [ '_aibehavior_1', _aibehavior_1, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_9], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [999662.31093, 1000341.73564, 476.50641], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","true","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 459, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_36 = (
[
	"_unit_36", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [999968.33913, 1000018.46218, 480.77597], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_11", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_34', 1,
 465, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_11]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = -23.584;
if (false) then
{
	_azimuth = 0;
};
_unit_37 = (
[
	"_unit_37", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [999959.27663, 1000004.83718, 483.41412], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_11", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_34', 1,
 531, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_11]) call fn_vbs_editor_unit_create;

call fn_vbs_editor_group_finalizeGroups;
call fn_vbs_editor_waypoint_waypointsPrepare;
{_x call fn_vbs_editor_functionQueueRun} forEach editor_pausedQueues;
editor_pausedQueues = nil;
if (isNil '_map') then {processInitCommands};
