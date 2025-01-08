#include "\vbs2\basic_defines.hpp"
#define __CurrentDir__ \vbs2\customer\plugins\behaviors_dprk_base\

//Class necessary for VBS to load the new addon correctly
class CfgPatches
{
	class vbs2_vbs_plugins_behaviors_dprk_base
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.10;
		requiredAddons[] = {
			vbs2_editor, 
			vbs2_people,
			vbs2_plugins_function_library,
			vbs2_vbs_plugins_standard_behaviors,
			vbs2_vbs_plugins_ai_core_public
		};
		modules[] =
		{
			vbs_core_content_module
		};
	};
};

// Adds btset to list of btsets which are loaded automatically
class CfgBehaviorTrees
{
	class behaviors_dprk_base //this is an arbitrary className, it needs to be unique though
	{
		path = "\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_dprk_base\behaviors_dprk_base.btset"; //This is the relative path to the BT-set file to load
		name = "behaviors_dprk_base"; // This is the btset name duplicated in the configuration
	};
};

class vbs_functions_base;
class CfgFunctions
{
	// Macro to build a function in sripts top folder
	#define MAKE_MINOTAUR_FUNCTION(functionName)                                 \
	class fn_vbs_behaviors_dprk_base_##functionName : vbs_functions_base                     \
	{                                                                       \
		path = __CurrentDir__\data\scripts\fn_vbs_behaviors_dprk_base_##functionName##.sqf;  \
	}
	
};

// Defines the new order as available from the Control AI - Military
class CfgAvailableBehaviors
{
	class behaviors_dprk_base
	{		
		icon = "\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_sample.paa";
		allowRotate = true;


		displayname = "DPRK AlternatingRetreat";
		description = "DPRK AlternatingRetreat that uses orderName Advance";				

		orderName = "AlternatingRetreat";
		prepareActionMessage = "vbs2\vbs_plugins\ai\standard_behaviors\data\scripts\PrepareBTParameters.sqf";
		
		class RootBehaviors
		{
		  group[] = {"standard_behaviors", "GroupRoot"};
		  entity[] = {"standard_behaviors", "EntityRoot"};
		  vehicle[] = {"standard_behaviors", "VehicleRoot"};
		};
		
		class Parameters
		{
			class debugEnabled
			{
				displayName = "debugEnabled";
				value = "false";
				type = "boolean";
			};
		};
	};
};