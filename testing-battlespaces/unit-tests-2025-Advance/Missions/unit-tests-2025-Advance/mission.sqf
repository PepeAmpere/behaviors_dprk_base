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

_group_5 = ["_group_5","1-1-A-5",[999551.85967, 999332.18587, 386.48629],"WEST","","","",0,[],"",false,false,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_6 = ["_group_6","MAIN",[999606.54067, 999353.54384, 97.32996],"west","west","vbs2_au_army_d","fireteam",2,["_group_7", "_group_8", "_group_9", "_group_10"],"",false,false,"","Wedge",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_7 = ["_group_7","1-1-A-6",[999615.05931, 999372.79157, 389.31839],"WEST","","","",0,[],"_group_6",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_8 = ["_group_8","1-1-A-7",[999601.55931, 999345.79161, 387.05685],"WEST","","","",0,[],"_group_6",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_9 = ["_group_9","1-1-A-8",[999628.55931, 999345.79158, 385.75973],"WEST","","","",0,[],"_group_6",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_10 = ["_group_10","1-1-A-9",[999580.98477, 999318.60192, 384.54916],"WEST","","","",0,[],"_group_6",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_11 = ["_group_11","TEST-TOWN",[997462.02477, 995750.92337, 84.94077],"west","west","vbs2_au_army_d","fireteam",2,["_group_12", "_group_13", "_group_14", "_group_15"],"",false,false,"","Wedge",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_12 = ["_group_12","1-1-A-11",[997468.77477, 995770.12369, 339.76162],"WEST","","","",0,[],"_group_11",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_13 = ["_group_13","1-1-A-12",[997455.27477, 995743.12368, 338.55719],"WEST","","","",0,[],"_group_11",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_14 = ["_group_14","1-1-A-13",[997482.27477, 995743.12370, 338.59286],"WEST","","","",0,[],"_group_11",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_15 = ["_group_15","1-1-A-14",[997441.77477, 995716.12371, 337.09906],"WEST","","","",0,[],"_group_11",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_16 = ["_group_16","TEST-RIVER",[997551.04792, 995506.40840, 86.48465],"WEST","","structure_groups","",0,["_group_17", "_group_18", "_group_19", "_group_20"],"",false,false,"","",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_17 = ["_group_17","1-1-A-15",[997557.66509, 995526.06938, 345.93716],"WEST","","","",0,[],"_group_16",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_18 = ["_group_18","1-1-A-16",[997544.16509, 995499.06936, 344.74252],"WEST","","","",0,[],"_group_16",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_19 = ["_group_19","1-1-A-17",[997571.16509, 995499.06939, 352.59283],"WEST","","","",0,[],"_group_16",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_20 = ["_group_20","1-1-A-18",[997531.19641, 995470.22679, 347.31320],"WEST","","","",0,[],"_group_16",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_21 = ["_group_21","TEST-HILL",[997228.42419, 998975.06080, 86.92795],"WEST","","structure_groups","",0,["_group_22", "_group_23", "_group_24", "_group_25"],"",false,false,"","",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_22 = ["_group_22","1-1-A-19",[997217.87969, 998991.56049, 347.71035],"WEST","","","",0,[],"_group_21",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_23 = ["_group_23","1-1-A-20",[997204.37969, 998964.56048, 343.08911],"WEST","","","",0,[],"_group_21",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_24 = ["_group_24","1-1-A-21",[997231.37969, 998964.56048, 345.24981],"WEST","","","",0,[],"_group_21",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_25 = ["_group_25","1-1-A-22",[997260.05770, 998948.36306, 344.15087],"WEST","","","",0,[],"_group_21",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_26 = ["_group_26","TEST-TOWN-TO-TOWN",[998214.70715, 1001921.09255, 99.62671],"WEST","","structure_groups","",0,["_group_27", "_group_28", "_group_29", "_group_30"],"",false,false,"","",-1,"SFGPUCI----B","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_27 = ["_group_27","1-1-A-23",[998221.45715, 1001940.29289, 398.50540],"WEST","","","",0,[],"_group_26",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_28 = ["_group_28","1-1-A-24",[998207.95715, 1001913.29287, 399.07009],"WEST","","","",0,[],"_group_26",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_29 = ["_group_29","1-1-A-25",[998234.95715, 1001913.29289, 399.92965],"WEST","","","",0,[],"_group_26",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

_group_30 = ["_group_30","1-1-A-26",[998194.45715, 1001886.29288, 402.24426],"WEST","","","",0,[],"_group_26",false,true,"","",-1,"","ActorAi","INHERIT"] call fn_vbs_editor_group_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_35 = (
[
	"_unit_35", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997482.27477, 995743.12370, 338.59286], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_14", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 32, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_36", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [997477.77477, 995734.12368, 338.24527], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_14", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_35', 1,
 69, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_37", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [997486.77477, 995734.12370, 338.35290], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_14", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_35', 1,
 94, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_38", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [997472.83420, 995724.34023, 337.75064], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_14", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_35', 1,
 160, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_14]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_39 = (
[
	"_unit_39", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997441.77477, 995716.12371, 337.09906], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_15", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 195, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_15]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_40 = (
[
	"_unit_40", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [997437.27477, 995707.12369, 337.13726], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_15", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_39', 1,
 232, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_15]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_41 = (
[
	"_unit_41", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [997446.27477, 995707.12370, 337.04162], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_15", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_39', 1,
 257, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_15]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_42 = (
[
	"_unit_42", true, "vbs_us_mc_atrifleman_wdl_m_medium_mtw_none_m16a4_smaw", [997432.77477, 995698.12368, 337.17944], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_15", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_39', 1,
 323, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_15]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_22 = (
[
	"_unit_22", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [999628.55931, 999345.79158, 385.75973], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_9", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '', 1,
 356, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_9]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_23 = (
[
	"_unit_23", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [999624.05931, 999336.79161, 384.64135], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_9", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '_unit_22', 1,
 393, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_9]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_24 = (
[
	"_unit_24", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [999633.05931, 999336.79158, 384.39276], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_9", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '_unit_22', 1,
 418, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_9]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_25 = (
[
	"_unit_25", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [999619.55931, 999327.79161, 383.64331], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_9", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '_unit_22', 1,
 484, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_9]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_26 = (
[
	"_unit_26", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [999580.98477, 999318.60192, 384.54916], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_10", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '', 1,
 519, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_10]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_43 = (
[
	"_unit_43", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997557.66509, 995526.06938, 345.93716], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_17", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 556, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_44", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997544.16509, 995499.06936, 344.74252], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_18", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 593, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_45", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [997539.66509, 995490.06935, 345.25341], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_18", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_44', 1,
 630, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_46", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [997548.66509, 995490.06939, 348.38946], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_18", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_44', 1,
 655, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_47", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [997535.16509, 995481.06937, 345.88571], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_18", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_44', 1,
 721, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_48", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997571.16509, 995499.06939, 352.59283], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_19", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 756, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_49", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [997566.66509, 995490.06939, 352.71646], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_19", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_48', 1,
 793, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_50", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [997575.66509, 995490.06938, 355.25271], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_19", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_48', 1,
 818, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_51", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [997562.16509, 995481.06937, 353.01886], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_19", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_48', 1,
 884, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_52", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997531.19641, 995470.22679, 347.31320], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_20", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 919, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_53", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [997526.16509, 995463.06939, 346.73385], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_20", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_52', 1,
 956, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_54", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [997535.16509, 995463.06938, 349.27386], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_20", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_52', 1,
 981, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_20]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_55 = (
[
	"_unit_55", true, "vbs_us_mc_atrifleman_wdl_m_medium_mtw_none_m16a4_smaw", [997521.66509, 995454.06938, 347.03189], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_20", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_52', 1,
 1047, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_20]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_27 = (
[
	"_unit_27", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [999576.48477, 999309.60195, 383.87979], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_10", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '_unit_26', 1,
 1080, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_10]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_28 = (
[
	"_unit_28", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [999585.48477, 999309.60193, 383.46673], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_10", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '_unit_26', 1,
 1105, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_10]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_29 = (
[
	"_unit_29", true, "vbs_us_mc_atrifleman_wdl_m_medium_mtw_none_m16a4_smaw", [999577.76815, 999303.85510, 383.50210], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_10", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '_unit_26', 1,
 1171, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_10]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_16 = (
[
	"_unit_16", true, "vbs_cz_army_leader_des_m_medium_none_none_cz805a1_none", [999551.85967, 999332.18587, 386.48629], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_5", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0.77778, 0.2, 0.51778, 0.2, [], "", [], 0.75, 1.82, 22, false, "", 1, 0, '', 1,
 1201, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_17", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [999615.05931, 999372.79157, 389.31839], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_7", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '', 1,
 1230, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_7]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_56 = (
[
	"_unit_56", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997217.87969, 998991.56049, 347.71035], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_22", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1267, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_57", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997204.37969, 998964.56048, 343.08911], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_23", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1304, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_58", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [997199.87969, 998955.56049, 342.34118], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_23", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_57', 1,
 1341, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_59", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [997208.87969, 998955.56048, 342.91491], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_23", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_57', 1,
 1366, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_60", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [997195.64510, 998947.14439, 341.86676], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_23", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_57', 1,
 1432, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_61", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997231.37969, 998964.56048, 345.24981], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_24", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1467, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_62", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [997226.87969, 998955.56048, 344.03494], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_24", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_61', 1,
 1504, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_63", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [997235.87969, 998955.56048, 344.44662], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_24", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_61', 1,
 1529, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_64", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [997222.37969, 998946.56049, 343.34225], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_24", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_61', 1,
 1595, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_65", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997260.05770, 998948.36306, 344.15087], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_25", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1630, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_66", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [997259.45640, 998934.65510, 342.91348], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_25", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_65', 1,
 1667, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_67", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [997263.89623, 998938.36556, 343.02313], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_25", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_65', 1,
 1692, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_68", true, "vbs_us_mc_atrifleman_wdl_m_medium_mtw_none_m16a4_smaw", [997252.45367, 998934.13251, 343.36688], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_25", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_65', 1,
 1758, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_25]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_18 = (
[
	"_unit_18", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [999601.55931, 999345.79161, 387.05685], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_8", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '', 1,
 1791, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_8]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_19 = (
[
	"_unit_19", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [999597.05931, 999336.79160, 385.82815], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_8", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '_unit_18', 1,
 1828, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_8]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_20 = (
[
	"_unit_20", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [999606.05931, 999336.79160, 385.33084], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_8", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '_unit_18', 1,
 1853, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_8]) call fn_vbs_editor_unit_create;

_aibehavior_0 = [ '_aibehavior_0', _aibehavior_0, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_6], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [999001.40548, 999271.04666, 349.63620], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base2\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "-0.00625807617188912", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 1915, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_21 = (
[
	"_unit_21", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [999592.55931, 999327.79158, 384.84445], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", false, "_group_8", "west", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	0, 0, 0, 0, [], "", [], 0.75, 1.82, 22, true, "[]", 1, 0, '_unit_18', 1,
 1921, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_8]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_69 = (
[
	"_unit_69", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [998221.45715, 1001940.29289, 398.50540], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_27", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1956, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_27]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_70 = (
[
	"_unit_70", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [998207.95715, 1001913.29287, 399.07009], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_28", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 1993, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_28]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_71 = (
[
	"_unit_71", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [998203.45715, 1001904.29289, 399.78311], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_28", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_70', 1,
 2030, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_28]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_72 = (
[
	"_unit_72", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [998212.45715, 1001904.29287, 399.69979], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_28", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_70', 1,
 2055, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_28]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_73 = (
[
	"_unit_73", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [998198.95715, 1001895.29290, 400.83889], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_28", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_70', 1,
 2121, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_28]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_74 = (
[
	"_unit_74", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [998234.95715, 1001913.29289, 399.92965], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_29", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 2156, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_29]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_75 = (
[
	"_unit_75", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [998230.45715, 1001904.29286, 399.99151], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_29", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_74', 1,
 2193, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_29]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_76 = (
[
	"_unit_76", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [998239.45715, 1001904.29290, 400.42721], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_29", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_74', 1,
 2218, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_29]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_77 = (
[
	"_unit_77", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [998225.95715, 1001895.29287, 400.27392], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_29", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_74', 1,
 2284, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_29]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_78 = (
[
	"_unit_78", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [998194.45715, 1001886.29288, 402.24426], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_30", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 2319, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_30]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_79 = (
[
	"_unit_79", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [998189.95715, 1001877.29286, 404.10632], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_30", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_78', 1,
 2356, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_30]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_80 = (
[
	"_unit_80", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [998198.95715, 1001877.29290, 403.44500], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_30", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_78', 1,
 2381, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_30]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_81 = (
[
	"_unit_81", true, "vbs_us_mc_atrifleman_wdl_m_medium_mtw_none_m16a4_smaw", [998185.45715, 1001868.29286, 406.16131], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_30", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_78', 1,
 2447, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_30]) call fn_vbs_editor_unit_create;

private ["_strCommander", "_strDriver", "_strGunner", "_strCargo"];
_strCommander = ""; _strDriver = ""; _strGunner = ""; _strCargo = "";
_azimuth = 0;
if (false) then
{
	_azimuth = 0;
};
_unit_30 = (
[
	"_unit_30", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997468.77477, 995770.12369, 339.76162], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_12", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 2480, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_31", true, "vbs_us_mc_officer_wdl_m_medium_mtw_none_m16a4_m150", [997455.27477, 995743.12368, 338.55719], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '', 1,
 2517, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_32", true, "vbs_us_mc_machinegunner_wdl_m_medium_mtw_none_m249", [997450.77477, 995734.12368, 337.89987], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_31', 1,
 2554, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_33", true, "vbs_us_mc_grenadier_wdl_m_medium_mtw_none_m16a2_m203", [997459.77477, 995734.12369, 337.96923], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_31', 1,
 2579, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
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
	"_unit_34", true, "vbs_us_mc_sniper_wdl_m_medium_mtw_none_m14dmr", [997446.27477, 995725.12370, 337.67926], [], 0, "CAN_COLLIDE", _azimuth, "", 1,
	1, -1, "UNKNOWN", "", "PRIVATE", 1, _strCommander, _strDriver, _strGunner, _strCargo, "false", true, "_group_13", "WEST", "", [], "", "INHERIT", 'AWARE', "Auto", 1,
	-1, -1, -1, -1, [], "", [], 0.75, 1.82000005245209, 22, true, "[]", 1, 0, '_unit_31', 1,
 2645, -1, 2, "ActorAi", "", ["DEFAULT", "DEFAULT"], "StandardBehavior", 1
] + [_group_13]) call fn_vbs_editor_unit_create;

_aibehavior_1 = [ '_aibehavior_1', _aibehavior_1, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_26], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [998288.02165, 1002389.60356, 414.97769], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base2\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 2676, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_2 = [ '_aibehavior_2', _aibehavior_2, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_21], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [997155.59259, 999788.26372, 344.46671], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base2\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 2678, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_3 = [ '_aibehavior_3', _aibehavior_3, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_16], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [997285.09153, 995156.90538, 338.73071], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base2\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "0", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 2680, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

_aibehavior_4 = [ '_aibehavior_4', _aibehavior_4, 'Advance', ['UNIT', [], 'VEHICLE', [], 'GROUP', [_group_11], 'BEHAVIOR_LINK', [], 'TRIGGER_LINK', []],[
'POSITION', [997518.53895, 995902.56073, 340.59836], 'DISPLAY_NAME_TREE', "Advance", 'AZIMUTH', 0, 'ENEMY_PRESENCE', "likely", 'REACTION_TO_CONTACT', "default", 'FORMATION', "SB_Default", 'ADVANCED_PARS_DATA', [["debugEnabled",["Debug Enabled","false","boolean"]]], 'CONVOY_SPACING', 20, 'CONVOY_SPEED', 30, 'UGV_AVOID_THREATS', false, 'UGV_ENGAGE_ENEMIES', "holdFire", 'UGV_DELAY', 0, 'UGV_DEFEND', false, 'UGV_HALT_ON_DETECT', false, 'UGV_WP_REPORT', true, 'CONVOY_ROUTE_RESTRICTIONS', "StayOnRoad", 'CONVOY_REACTION_TO_FIRE', "driveFire", 'DEPLOYDSB_BRIDGE_LENGTH', "L_40", 'TREE_PIC', "\vbs2\vbs_plugins\ai\standard_behaviors\data\icons\move.paa", 'ICON_TEXT', "Advance", 'ETA', "", 'ACTION_STATUS', "", 'PROXY_ERROR', "", 'BEHAVIOR_GROUP', "teamRoot", 'BEHAVIOR_VEHICLE', "", 'BTSET', "behaviors_dprk_team", 'BTSETPATH', "P:\vbs2\customer\plugins\behaviors_dprk_base2\data\behaviors_dprk_team\behaviors_dprk_team.btset", 'BEHAVIOR_ENTITY', "soldierRoot", 'INDIVIDUAL_SPEED', "walk", 'INDIVIDUAL_STANCE', "standing", 'INDIVIDUAL_WEAPON_STANCE', "lowered", 'INDIVIDUAL_WEAPON_CLASS', "primary", 'INDIVIDUAL_WEAPON_FIRE_RATE', "single", 'INDIVIDUAL_WEAPON_SINGLE_NUMBER_OF_ROUNDS', 3, 'INDIVIDUAL_WEAPON_SINGLE_DELAY_BETWEEN_ROUNDS', 1, 'INDIVIDUAL_WEAPON_BURST_ROUNDS_PER_BURST', 3, 'INDIVIDUAL_WEAPON_BURST_NUMBER_OF_BURSTS', 2, 'INDIVIDUAL_WEAPON_BURST_DELAY_BETWEEN_BURSTS', 3, 'INDIVIDUAL_REACTION_SPOTTED', "holdFire", 'INDIVIDUAL_REACTION_DIRECT_FIRE', "openFire", 'INDIVIDUAL_WAIT', 0, 'INDIVIDUAL_TARGET_SQF', '', 'ACCURACY', 0.8, 'LOITER_RADIUS', 25, 'LOITER_TIMEOUT', 300, 'WEAPON_CONTROL_STATUS', "noChange", 'CREW_ROLE_CATEGORY', "All", 'SIZE_X', 25, 'SIZE_Y', 25, 'DESTINATION_ALTITUDE', "1.84570313876975e-06", 'DESTINATION_ALTITUDE_MODE', "AGL", 'FLIGHT_SPEED_LIMIT', '', 'COMPLETION_RADIUS', '', 'TACTICAL_MOVE_REACTION_DISTANCE', 50, 'CODE_ON_COMPLETION', "", 'CONDITION_TO_COMPLETE', "", 'VARNAME', '', 'AIRCRAFT_LOITER_RADIUS', 1000, 'AIRCRAFT_LOITER_DIRECTION', "clockwise", 'CUSTOM_PARAMETERS', "[]", 'ORDER_SUBJECT', "NewOrder", 'SPACING', "", 'SPEED', "", 'ROUTE_RESTRICTIONS', "PreferRoads", 'PATH_TYPE', "short"
, 'VERSION', 1
, 'OME_ID', 2682, 'RTE_CREATOR', 2
]] call fn_vbsCon_mil_create;

call fn_vbs_editor_group_finalizeGroups;
call fn_vbs_editor_waypoint_waypointsPrepare;
{_x call fn_vbs_editor_functionQueueRun} forEach editor_pausedQueues;
editor_pausedQueues = nil;
if (isNil '_map') then {processInitCommands};
