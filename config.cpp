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
	class behaviors_dprk_AlternatingRetreat
	{		
		icon = "\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_sample.paa";
		allowRotate = true;


		displayname = "DPRK Alternating Retreat";
		description = "DPRK Alternating Retreat that uses orderName Advance";				

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
	
	class behaviors_dprk_AlternatingRetreat_Reaction
	{		
		icon = "\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_sample.paa";
		allowRotate = true;


		displayname = "DPRK Reactive Alternating Retreat";
		description = "DPRK Alternating Retreat with reaction";

		orderName = "RAlternatingRetreat";
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
	
	class behaviors_dprk_SuccessiveAdvance
	{		
		icon = "\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_sample.paa";
		allowRotate = true;


		displayname = "DPRK Successive Advance";
		description = "DPRK Successive Advance that uses orderName Advance";				

		orderName = "SuccessiveAdvance";
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
	class behaviors_dprk_SuccessiveAdvance_Reaction
	{		
		icon = "\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_sample.paa";
		allowRotate = true;


		displayname = "DPRK Reactive Succesive Advance";
		description = "DPRK Succesive Advance with reaction";

		orderName = "RSuccesiveAdvance";
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
	class behaviors_dprk_AlternatingAdvance
	{
		icon = "\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_sample.paa";
		allowRotate = true; // you also get direction


		displayname = "DPRK Alternating Advance";
		description = "DPRK Alternating Advance";				

		orderName = "AlternatingAdvance"; // it will implicitly have position as well
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
				value = "true";
				type = "boolean";
			};
		};
	};
	class behaviors_dprk_AlternatingAdvance_Reaction
	{
		icon = "\vbs2\customer\plugins\behaviors_dprk_base\data\behaviors_sample.paa";
		allowRotate = true; // you also get direction


		displayname = "DPRK Reactive Alternating Advance";
		description = "DPRK Alternating Advance with reaction";				

		orderName = "RAlternatingAdvance"; // it will implicitly have position as well
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
				value = "true";
				type = "boolean";
			};
		};
	};
};