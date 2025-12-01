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

_group_0 = ["_group_0","Test1-Treeline",[1000311.00508, 999869.01822, 85.34266],"west","west","vbs2_au_army_d","fireteam",2,["_group_1", "_group_2", "_group_3", "_group_4"],"",false,false,"","Wedge",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_1 = ["_group_1","1-1-A-1",[1000314.85077, 999863.73743, 341.36920],"WEST","","","",0,[],"_group_0",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_2 = ["_group_2","1-1-A-2",[1000305.22318, 999876.90550, 341.48962],"WEST","","","",0,[],"_group_0",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_3 = ["_group_3","1-1-A-3",[1000332.22318, 999876.90551, 341.00384],"WEST","","","",0,[],"_group_0",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_4 = ["_group_4","1-1-A-4",[1000291.72318, 999849.90551, 342.21624],"WEST","","","",0,[],"_group_0",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_6 = ["_group_6","1-1-A-6",[1000630.37500, 1000095.62500, 338.28927],"WEST","","","",0,[],"",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_10 = ["_group_10","Test3-Elevation",[1000820.18750, 1000099.90474, 84.88143],"WEST","","structure_groups","",0,["_group_11", "_group_12", "_group_13", "_group_14"],"",false,false,"","",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_11 = ["_group_11","1-1-A-11",[1000826.93750, 1000124.75000, 339.52429],"WEST","","","",0,[],"_group_10",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_12 = ["_group_12","1-1-A-12",[1000813.43750, 1000097.74998, 338.23236],"WEST","","","",0,[],"_group_10",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_13 = ["_group_13","1-1-A-13",[1000840.43750, 1000097.75002, 337.54589],"WEST","","","",0,[],"_group_10",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_14 = ["_group_14","1-1-A-14",[1000799.93750, 1000070.75002, 337.46072],"WEST","","","",0,[],"_group_10",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_15 = ["_group_15","Test4-Reaction",[1000211.02078, 1000503.34710, 85.02757],"WEST","","structure_groups","",0,["_group_16", "_group_17", "_group_18", "_group_19"],"",false,false,"","",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_16 = ["_group_16","1-1-A-16",[1000206.70246, 1000511.38449, 340.10885],"WEST","","","",0,[],"_group_15",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_17 = ["_group_17","1-1-A-17",[1000199.49489, 1000504.29891, 340.20611],"WEST","","","",0,[],"_group_15",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_18 = ["_group_18","1-1-A-18",[1000226.69850, 1000508.78861, 339.99282],"WEST","","","",0,[],"_group_15",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_19 = ["_group_19","1-1-A-19",[1000211.18726, 1000480.29744, 340.57803],"WEST","","","",0,[],"_group_15",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_20 = ["_group_20","1-1-A-1",[1000180.99098, 1000678.79564, 338.37890],"east","east","vbs2_af_taliban","rifleteam",2,[],"",false,false,"","Wedge",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_21 = ["_group_21","Test5-Zigzag",[1000000.97834, 1000400.05839, 85.35305],"west","west","vbs2_au_army_d","fireteam",0,["_group_22", "_group_23", "_group_24", "_group_25"],"",false,false,"","Wedge",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_22 = ["_group_22","1-1-A-21",[999996.62150, 1000408.23149, 341.41076],"WEST","","","",0,[],"_group_21",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_23 = ["_group_23","1-1-A-22",[999991.22551, 1000397.71458, 342.08038],"WEST","","","",0,[],"_group_21",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_24 = ["_group_24","1-1-A-23",[1000016.03857, 1000406.65989, 341.05557],"WEST","","","",0,[],"_group_21",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_25 = ["_group_25","1-1-A-24",[1000000.02778, 1000379.00865, 342.77157],"WEST","","","",0,[],"_group_21",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_47 = ["_group_47","1-1-A-25",[1000093.31250, 1000444.31250, 340.11761],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_9 = (
[
	"_unit_9", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000291.72318, 999849.90551, 342.21624], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_4", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 29, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_4]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_10 = (
[
	"_unit_10", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1000287.22318, 999840.90551, 342.44165], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_4", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_9', 1,
 66, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_4]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_11 = (
[
	"_unit_11", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000296.22318, 999840.90551, 342.19519], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_4", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_9', 1,
 91, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_4]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_12 = (
[
	"_unit_12", true, "vbs_us_mc_atrifleman_wdl_m_medium_mtw_none_m16a4_smaw", [1000282.72318, 999831.90552, 342.63430], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_4", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_9', 1,
 157, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_4]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_26 = (
[
	"_unit_26", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000826.93750, 1000124.75000, 339.52429], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_11", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 190, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_11]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_27 = (
[
	"_unit_27", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000813.43750, 1000097.74998, 338.23236], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_12", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 227, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_12]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_28 = (
[
	"_unit_28", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1000808.93750, 1000088.74997, 337.94088], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_12", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_27', 1,
 264, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_12]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_29 = (
[
	"_unit_29", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000817.93750, 1000088.75000, 337.70376], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_12", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_27', 1,
 289, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_12]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_30 = (
[
	"_unit_30", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [1000804.43750, 1000079.74999, 337.71310], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_12", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_27', 1,
 355, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_12]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_31 = (
[
	"_unit_31", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000840.43750, 1000097.75002, 337.54589], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 390, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_13]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_32 = (
[
	"_unit_32", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1000835.93750, 1000088.75001, 337.24740], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_31', 1,
 427, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_13]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_33 = (
[
	"_unit_33", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000844.93750, 1000088.75000, 337.03131], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_31', 1,
 452, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_13]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_34 = (
[
	"_unit_34", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [1000831.43750, 1000079.74998, 336.98901], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_31', 1,
 518, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_13]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_35 = (
[
	"_unit_35", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000799.93750, 1000070.75002, 337.46072], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_14", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 553, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_14]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_36 = (
[
	"_unit_36", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1000795.43750, 1000061.75001, 337.12887], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_14", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_35', 1,
 590, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_14]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_37 = (
[
	"_unit_37", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000804.43750, 1000061.74999, 336.88345], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_14", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_35', 1,
 615, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_14]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_38 = (
[
	"_unit_38", true, "vbs_us_mc_atrifleman_wdl_m_medium_mtw_none_m16a4_smaw", [1000790.93750, 1000052.75000, 336.71673], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_14", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_35', 1,
 681, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_14]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_0 = (
[
	"_unit_0", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000314.85077, 999863.73743, 341.36920], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_1", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 714, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_1]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_1 = (
[
	"_unit_1", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000305.22318, 999876.90550, 341.48962], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_2", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 751, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_2]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_2 = (
[
	"_unit_2", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1000300.72318, 999867.90550, 341.69485], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_2", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_1', 1,
 788, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_2]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_3 = (
[
	"_unit_3", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000309.72318, 999867.90551, 341.43539], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_2", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_1', 1,
 813, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_2]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_4 = (
[
	"_unit_4", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [1000296.22318, 999858.90550, 341.96197], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_2", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_1', 1,
 879, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_2]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_39 = (
[
	"_unit_39", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000206.70246, 1000511.38449, 340.10885], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_16", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 914, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_16]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_40 = (
[
	"_unit_40", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000199.49489, 1000504.29891, 340.20611], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_17", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 951, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_17]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_41 = (
[
	"_unit_41", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1000194.99489, 1000495.29893, 340.25695], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_17", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_40', 1,
 988, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_17]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_42 = (
[
	"_unit_42", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000203.99489, 1000495.29892, 340.35513], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_17", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_40', 1,
 1013, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_17]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_43 = (
[
	"_unit_43", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [1000190.49489, 1000486.29893, 340.25775], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_17", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_40', 1,
 1079, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_17]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_44 = (
[
	"_unit_44", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000226.69850, 1000508.78861, 339.99282], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_18", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1114, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_18]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_45 = (
[
	"_unit_45", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1000222.19850, 1000499.78861, 340.25402], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_18", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_44', 1,
 1151, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_18]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_46 = (
[
	"_unit_46", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000231.19850, 1000499.78862, 340.11914], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_18", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_44', 1,
 1176, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_18]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_47 = (
[
	"_unit_47", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [1000217.69850, 1000490.78860, 340.44964], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_18", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_44', 1,
 1242, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_18]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_48 = (
[
	"_unit_48", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000211.18726, 1000480.29744, 340.57803], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_19", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1277, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_19]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_49 = (
[
	"_unit_49", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1000206.68726, 1000471.29744, 340.58230], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_19", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_48', 1,
 1314, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_19]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_50 = (
[
	"_unit_50", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000215.68726, 1000471.29744, 340.60940], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_19", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_48', 1,
 1339, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_19]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_51 = (
[
	"_unit_51", true, "vbs_us_mc_atrifleman_wdl_m_medium_mtw_none_m16a4_smaw", [1000202.18726, 1000462.29744, 340.50762], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_19", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_48', 1,
 1405, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_19]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_52 = (
[
	"_unit_52", true, "vbs2_af_taliban_ak74gla", [1000180.99098, 1000678.79564, 338.37890], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "Corporal", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_20", "EAST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '', 1,
 1435, -1, 2, "ActorAi", "", ["Default", "Default"], "StandardBehavior", 1
] + [_group_20]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_53 = (
[
	"_unit_53", true, "vbs2_af_taliban_rpk74", [1000184.33448, 1000676.34455, 338.39044], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "Private", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_20", "EAST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '_unit_52', 1,
 1462, -1, 2, "ActorAi", "", ["Default", "Default"], "StandardBehavior", 1
] + [_group_20]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_54 = (
[
	"_unit_54", true, "vbs2_af_taliban_akm", [1000178.71734, 1000675.40859, 338.45034], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_20", "EAST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '_unit_52', 1,
 1478, -1, 2, "ActorAi", "", ["Default", "Default"], "StandardBehavior", 1
] + [_group_20]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_56 = (
[
	"_unit_56", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [999996.62150, 1000408.23149, 341.41076], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_22", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1495, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_22]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_57 = (
[
	"_unit_57", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [999991.22551, 1000397.71458, 342.08038], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_23", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1532, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_23]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_58 = (
[
	"_unit_58", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [999986.72551, 1000388.71459, 342.66091], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_23", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_57', 1,
 1569, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_23]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_59 = (
[
	"_unit_59", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [999995.72551, 1000388.71457, 342.44534], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_23", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_57', 1,
 1594, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_23]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_60 = (
[
	"_unit_60", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [999982.22551, 1000379.71459, 343.13671], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_23", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_57', 1,
 1660, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_23]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_61 = (
[
	"_unit_61", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000016.03857, 1000406.65989, 341.05557], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_24", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1695, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_24]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_62 = (
[
	"_unit_62", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1000011.53857, 1000397.65988, 341.62854], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_24", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_61', 1,
 1732, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_24]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_63 = (
[
	"_unit_63", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000020.53857, 1000397.65991, 341.43582], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_24", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_61', 1,
 1757, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_24]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_64 = (
[
	"_unit_64", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [1000007.03857, 1000388.65990, 342.18182], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_24", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_61', 1,
 1823, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_24]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_65 = (
[
	"_unit_65", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000000.02778, 1000379.00865, 342.77157], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_25", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1858, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_25]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_66 = (
[
	"_unit_66", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [999995.52778, 1000370.00865, 343.18035], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_25", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_65', 1,
 1895, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_25]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_67 = (
[
	"_unit_67", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000004.52778, 1000370.00866, 342.97158], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_25", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_65', 1,
 1920, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_25]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_68 = (
[
	"_unit_68", true, "vbs_us_mc_atrifleman_wdl_m_medium_mtw_none_m16a4_smaw", [999991.02778, 1000361.00864, 343.57037], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_25", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_65', 1,
 1986, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_25]) call fn_vbs_editor_unit_create;

_object_25 = objNull;
if (true) then
{
	_azimuth = 163.75;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_25 = ["_object_25", false, "Land_demo_cse_house_08", [1000174.27548, 1000535.26246, 340.18585], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [0.27981,-0.96005,0.0032719], [0.0062304,0.0052238,0.99997], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2015, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_26 = objNull;
if (true) then
{
	_azimuth = 71.093;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_26 = ["_object_26", false, "Land_usa_house_03", [1000179.50435, 1000668.66686, 338.57956], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [0.94602,0.32402,-0.0077687], [0.0054313,0.0081175,0.99995], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2017, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_27 = objNull;
if (true) then
{
	_azimuth = -112.31;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_27 = ["_object_27", false, "Land_usa_house_17", [1000158.14778, 1000578.45991, 339.23141], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [-0.92507,-0.3796,0.012375], [0.012038,0.0032609,0.99992], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2019, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_28 = objNull;
if (true) then
{
	_azimuth = -107.38;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_28 = ["_object_28", false, "Land_usa_lrg_farmhouse_01", [1000120.12708, 1000632.85927, 339.03186], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [-0.95426,-0.29863,0.014248], [0.016708,-0.0056869,0.99984], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2021, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_29 = objNull;
if (true) then
{
	_azimuth = 70.628;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_29 = ["_object_29", false, "Land_usa_house_07", [1000175.93750, 1000625.43750, 338.79941], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [0.94317,0.33163,-0.021447], [0.023057,-0.00092124,0.99973], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2023, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_30 = objNull;
if (true) then
{
	_azimuth = 68.928;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_30 = ["_object_30", false, "Land_usa_demountable_01", [1000136.94544, 1000610.59855, 338.87698], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [0.93313,0.35955,0.001184], [-0.003378,0.005474,0.99998], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2025, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_31 = objNull;
if (true) then
{
	_azimuth = 71.861;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_31 = ["_object_31", false, "Land_usa_demountable_03", [1000176.71679, 1000693.27903, 338.03107], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [0.9503,0.31132,-0.0020081], [-0.0065108,0.026322,0.99963], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2027, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_32 = objNull;
if (true) then
{
	_azimuth = -16.176;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_32 = ["_object_32", false, "Land_usa_demountable_02", [1000200.81250, 1000601.25000, 338.59726], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [-0.27858,0.96035,-0.01132], [0.0058607,0.013486,0.99989], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2029, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_33 = objNull;
if (true) then
{
	_azimuth = -0.013417;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_33 = ["_object_33", false, "Land_usa_demountable_01", [1000142.12279, 1000078.35892, 343.16446], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [-0.00023405,0.9995,-0.031517], [0.007422,0.031518,0.99948], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2031, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_34 = objNull;
if (true) then
{
	_azimuth = -52.544;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_34 = ["_object_34", false, "Land_usa_demountable_03", [1000137.76868, 1000136.69588, 342.50027], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [-0.79365,0.60803,0.020687], [0.031864,0.007587,0.99946], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2033, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_35 = objNull;
if (true) then
{
	_azimuth = 0.00086036;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_35 = ["_object_35", false, "Land_usa_demountable_01", [1000175.12500, 1000153.18750, 342.09088], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [1.5016e-05,0.99999,0.0039469], [0.0038045,-0.0039469,0.99998], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2035, 2, false] call fn_vbs_editor_vehicle_create;
};

_object_36 = objNull;
if (true) then
{
	_azimuth = -0.002491;
	if (false) then
	{
		_azimuth = 0;
	};
  _object_36 = ["_object_36", false, "Land_usa_demountable_03", [1000125.25000, 1000101.87500, 342.98911], [], 0, "CAN_COLLIDE", _azimuth, "",
 1, 1, 1, "UNKNOWN", "DEFAULT", "", 0, "", "", "INHERIT", "UNCHANGED",
 true, 1, "on", "off", [], [], [], [],
 [-4.3475e-05,0.99999,-0.0052893], [0.008219,0.0052895,0.99995], ['container',"", 'offset',[0,0,0], 'rotated',"", 'stacked',"", 'hide',false, 'align_x',"", 'align_y',"", 'search_editor_args',""],
 ['V_ID','','V_TYPE', "", 'V_ACTION', "", 'V_POS','[0,0,0]', 'POS_ASL2', '[0,0,0]', 'V_VDIR','[0,0,0]', 'V_VUP','[0,0,1]', 'CLIPLAND', false,'V_SCALE','[1,1,1]'],
 "","", 2037, 2, false] call fn_vbs_editor_vehicle_create;
};

_aibehavior_5 = [ '_aibehavior_5', _aibehavior_5, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_22], 'BEHAVIOR_LINK', ["_aibehavior_54"], 'TRIGGER_LINK', []],[
'POSITION', [999999.17541, 1000460.11895, 339.91074], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2039, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_trigger_0 = ["_trigger_0", [999999.73275, 1000464.55745, 339.89432], [5, 5, 0, false], ["WEST SEIZED", "PRESENT", false], [0, 0, 0, false], "NONE", "", "", ["this", "", ""],objNull,["true","NoChange","NoChange","NoChange","NoChange","NoChange","None","plain","vbs3_loadGame_splashScreen","$NONE$", addQuotes ''],"", [false, '', true], false] call '\vbs2\editor\Data\Scripts\trigger\createTrigger.sqf';

_aibehavior_7 = [ '_aibehavior_7', _aibehavior_7, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_24], 'BEHAVIOR_LINK', ["_aibehavior_53"], 'TRIGGER_LINK', []],[
'POSITION', [1000000.69606, 1000460.28616, 339.90189], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2043, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_8 = [ '_aibehavior_8', _aibehavior_8, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_23], 'BEHAVIOR_LINK', ["_aibehavior_52"], 'TRIGGER_LINK', [_trigger_0]],[
'POSITION', [999993.44614, 1000457.60754, 339.91394], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 359.995788574219, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2045, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_10 = [ '_aibehavior_10', _aibehavior_10, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_25], 'BEHAVIOR_LINK', ["_aibehavior_51"], 'TRIGGER_LINK', [_trigger_0]],[
'POSITION', [999995.58690, 1000457.81850, 339.92014], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2047, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_125 = (
[
	"_unit_125", true, "vbs_cz_army_leader_wdl_m_medium_none_none_cz805a1_none", [1000093.31250, 1000444.31250, 340.11761], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "true", true, "_group_47", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '', 1,
 2050, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "NoBehavior", 1
] + [_group_47]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_5 = (
[
	"_unit_5", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [1000332.22318, 999876.90551, 341.00384], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_3", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 2079, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_3]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_6 = (
[
	"_unit_6", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [1000327.72318, 999867.90551, 341.11615], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_3", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_5', 1,
 2116, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_3]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_7 = (
[
	"_unit_7", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [1000336.72318, 999867.90552, 340.99340], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_3", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_5', 1,
 2141, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_3]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_8 = (
[
	"_unit_8", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [1000323.22318, 999858.90551, 341.27526], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_3", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_5', 1,
 2207, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_3]) call fn_vbs_editor_unit_create;

_trigger_14 = ["_trigger_14", [999855.19154, 1000578.77546, 339.51358], [5, 5, -0.62371, false], ["WEST SEIZED", "PRESENT", false], [0, 0, 0, false], "NONE", "", "", ["this", "", ""],objNull,["true","NoChange","NoChange","NoChange","NoChange","NoChange","None","plain","vbs3_loadGame_splashScreen","$NONE$", addQuotes ''],"", [false, '', true], false] call '\vbs2\editor\Data\Scripts\trigger\createTrigger.sqf';

_trigger_15 = ["_trigger_15", [999972.59001, 1000504.84468, 339.93945], [5, 5, 0, false], ["WEST SEIZED", "PRESENT", false], [0, 0, 0, false], "NONE", "", "", ["this", "", ""],objNull,["true","NoChange","NoChange","NoChange","NoChange","NoChange","None","plain","vbs3_loadGame_splashScreen","$NONE$", addQuotes ''],"", [false, '', true], false] call '\vbs2\editor\Data\Scripts\trigger\createTrigger.sqf';

_trigger_16 = ["_trigger_16", [999902.09587, 1000511.51099, 339.90240], [5, 5, 0, false], ["WEST SEIZED", "PRESENT", false], [0, 0, 0, false], "NONE", "", "", ["this", "", ""],objNull,["true","NoChange","NoChange","NoChange","NoChange","NoChange","None","plain","vbs3_loadGame_splashScreen","$NONE$", addQuotes ''],"", [false, '', true], false] call '\vbs2\editor\Data\Scripts\trigger\createTrigger.sqf';

_trigger_17 = ["_trigger_17", [999875.62500, 1000537.31250, 339.85941], [5, 5, 0, false], ["WEST SEIZED", "PRESENT", false], [0, 0, 0, false], "NONE", "", "", ["this", "", ""],objNull,["true","NoChange","NoChange","NoChange","NoChange","NoChange","None","plain","vbs3_loadGame_splashScreen","$NONE$", addQuotes ''],"", [false, '', true], false] call '\vbs2\editor\Data\Scripts\trigger\createTrigger.sqf';

_trigger_18 = ["_trigger_18", [999881.93750, 1000629.37500, 337.35550], [5, 5, 0, false], ["WEST SEIZED", "PRESENT", false], [0, 0, 0, false], "NONE", "", "", ["this", "", ""],objNull,["true","NoChange","NoChange","NoChange","NoChange","NoChange","None","plain","vbs3_loadGame_splashScreen","$NONE$", addQuotes ''],"", [false, '', true], false] call '\vbs2\editor\Data\Scripts\trigger\createTrigger.sqf';

_trigger_19 = ["_trigger_19", [999853.43750, 1000664.75000, 337.35455], [5, 5, 0, false], ["WEST SEIZED", "PRESENT", false], [0, 0, 0, false], "NONE", "", "", ["this", "", ""],objNull,["true","NoChange","NoChange","NoChange","NoChange","NoChange","None","plain","vbs3_loadGame_splashScreen","$NONE$", addQuotes ''],"", [false, '', true], false] call '\vbs2\editor\Data\Scripts\trigger\createTrigger.sqf';

_trigger_20 = ["_trigger_20", [999816.25000, 1000685.62500, 338.67230], [5, 5, 0, false], ["WEST SEIZED", "PRESENT", false], [0, 0, 0, false], "NONE", "", "", ["this", "", ""],objNull,["true","NoChange","NoChange","NoChange","NoChange","NoChange","None","plain","vbs3_loadGame_splashScreen","$NONE$", addQuotes ''],"", [false, '', true], false] call '\vbs2\editor\Data\Scripts\trigger\createTrigger.sqf';

_aibehavior_51 = [ '_aibehavior_51', _aibehavior_51, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_56"], 'TRIGGER_LINK', []],[
'POSITION', [999971.10913, 1000501.03417, 339.89359], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-0.000697109374982574", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2252, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_52 = [ '_aibehavior_52', _aibehavior_52, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_55"], 'TRIGGER_LINK', []],[
'POSITION', [999971.83046, 1000500.64141, 339.89865], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-1.12304689992015e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2254, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_53 = [ '_aibehavior_53', _aibehavior_53, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_58"], 'TRIGGER_LINK', [_trigger_15]],[
'POSITION', [999973.07716, 1000504.64567, 339.83578], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 356.620361328125, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0.00042558593747799", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2256, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_54 = [ '_aibehavior_54', _aibehavior_54, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_57"], 'TRIGGER_LINK', [_trigger_15]],[
'POSITION', [999973.45009, 1000504.69481, 339.83243], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0.000546660156260259", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2258, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_55 = [ '_aibehavior_55', _aibehavior_55, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_74"], 'TRIGGER_LINK', [_trigger_16]],[
'POSITION', [999901.99774, 1000507.99809, 339.85434], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-0.000701503906270773", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2260, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_56 = [ '_aibehavior_56', _aibehavior_56, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_73"], 'TRIGGER_LINK', [_trigger_16]],[
'POSITION', [999902.14001, 1000509.66493, 339.87854], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-3.9062513224053e-08", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2262, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_57 = [ '_aibehavior_57', _aibehavior_57, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_72"], 'TRIGGER_LINK', []],[
'POSITION', [999902.22459, 1000513.14293, 339.89102], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0.000669658203150902", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2264, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_58 = [ '_aibehavior_58', _aibehavior_58, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_71"], 'TRIGGER_LINK', []],[
'POSITION', [999902.30195, 1000513.90931, 339.88644], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-4.09179688176664e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2266, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_71 = [ '_aibehavior_71', _aibehavior_71, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_78"], 'TRIGGER_LINK', [_trigger_17]],[
'POSITION', [999880.23291, 1000536.32605, 339.83545], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2268, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_72 = [ '_aibehavior_72', _aibehavior_72, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_77"], 'TRIGGER_LINK', [_trigger_17]],[
'POSITION', [999879.90497, 1000535.91262, 339.83353], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2270, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_73 = [ '_aibehavior_73', _aibehavior_73, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_76"], 'TRIGGER_LINK', []],[
'POSITION', [999878.36786, 1000533.71984, 339.82785], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2272, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_74 = [ '_aibehavior_74', _aibehavior_74, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_75"], 'TRIGGER_LINK', []],[
'POSITION', [999877.87091, 1000533.18853, 339.82370], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2274, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_75 = [ '_aibehavior_75', _aibehavior_75, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_82"], 'TRIGGER_LINK', [_trigger_14]],[
'POSITION', [999855.33708, 1000574.88877, 339.59613], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-3.71093733519956e-07", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2276, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_76 = [ '_aibehavior_76', _aibehavior_76, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_171"], 'TRIGGER_LINK', [_trigger_14]],[
'POSITION', [999855.91107, 1000575.17597, 339.58905], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-2.92968763915269e-07", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2278, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_77 = [ '_aibehavior_77', _aibehavior_77, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_80"], 'TRIGGER_LINK', []],[
'POSITION', [999857.57563, 1000576.32479, 339.56528], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "2.90039059791525e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2280, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_78 = [ '_aibehavior_78', _aibehavior_78, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_79"], 'TRIGGER_LINK', []],[
'POSITION', [999858.09222, 1000576.55456, 339.55966], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-1.86523436696007e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2282, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_79 = [ '_aibehavior_79', _aibehavior_79, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_86"], 'TRIGGER_LINK', [_trigger_18]],[
'POSITION', [999882.86065, 1000630.97243, 337.22058], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2284, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_80 = [ '_aibehavior_80', _aibehavior_80, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_85"], 'TRIGGER_LINK', [_trigger_18]],[
'POSITION', [999881.24942, 1000630.39744, 337.23975], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2286, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_82 = [ '_aibehavior_82', _aibehavior_82, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_172"], 'TRIGGER_LINK', []],[
'POSITION', [999878.36542, 1000628.41265, 337.32861], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0.00494999997317791, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-1.95312497908162e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2288, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_85 = [ '_aibehavior_85', _aibehavior_85, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_94"], 'TRIGGER_LINK', []],[
'POSITION', [999855.11041, 1000664.33752, 337.33478], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2290, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_86 = [ '_aibehavior_86', _aibehavior_86, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_93"], 'TRIGGER_LINK', []],[
'POSITION', [999856.19198, 1000664.36084, 337.31992], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2292, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_93 = [ '_aibehavior_93', _aibehavior_93, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_95"], 'TRIGGER_LINK', [_trigger_20]],[
'POSITION', [999819.45922, 1000686.64891, 338.68872], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2294, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_94 = [ '_aibehavior_94', _aibehavior_94, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_97"], 'TRIGGER_LINK', [_trigger_20]],[
'POSITION', [999817.56144, 1000684.87274, 338.61996], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2296, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_95 = [ '_aibehavior_95', _aibehavior_95, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [999827.63329, 1000688.36498, 338.64368], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 146.195129394531, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2298, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_97 = [ '_aibehavior_97', _aibehavior_97, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [999820.04463, 1000681.61507, 338.46817], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 121.553352355957, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2300, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_171 = [ '_aibehavior_171', _aibehavior_171, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_173"], 'TRIGGER_LINK', []],[
'POSITION', [999877.31130, 1000628.84154, 337.29102], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2302, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_172 = [ '_aibehavior_172', _aibehavior_172, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_174"], 'TRIGGER_LINK', [_trigger_19]],[
'POSITION', [999851.66949, 1000662.47423, 337.22052], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2304, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_173 = [ '_aibehavior_173', _aibehavior_173, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_175"], 'TRIGGER_LINK', [_trigger_19]],[
'POSITION', [999850.50032, 1000662.04950, 337.22177], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2306, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_174 = [ '_aibehavior_174', _aibehavior_174, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_177"], 'TRIGGER_LINK', []],[
'POSITION', [999812.50420, 1000683.97609, 338.69415], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2308, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_175 = [ '_aibehavior_175', _aibehavior_175, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', ["_aibehavior_176"], 'TRIGGER_LINK', []],[
'POSITION', [999812.08395, 1000683.67437, 338.68057], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2310, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_176 = [ '_aibehavior_176', _aibehavior_176, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [999801.08043, 1000682.30425, 338.70215], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 171.285217285156, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2312, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_177 = [ '_aibehavior_177', _aibehavior_177, 'Defend', ['UNIT', [], 'VEHICLE', [], 'GROUP', [], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [999812.08753, 1000680.21946, 338.48575], 'DISPLAY_NAME_TREE', "Defend", 'AZIMUTH', 188.015716552734, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "boundingOverwatch", 'FORMATION', "", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\defend.paa", 'ICON_TEXT', "Defend", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "e:\BISim stuff\DevSuite\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "safe"
, 'VERSION', 1
, 'OME_ID', 2314, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

call fn_vbs_editor_group_finalizeGroups;
call fn_vbs_editor_waypoint_waypointsPrepare;
{_x call fn_vbs_editor_functionQueueRun} forEach editor_pausedQueues;
editor_pausedQueues = nil;
if (isNil '_map') then {processInitCommands};
