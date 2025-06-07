class CfgVehicles
{
	class Logic;
	class Module_F : Logic
	{
		class AttributesBase
		{
			class Default;
			class Edit;					// Default edit box (i.e. text input field)
			class Combo;				// Default combo box (i.e. drop-down menu)
			class Checkbox;				// Default checkbox (returned value is Boolean)
			class CheckboxNumber;		// Default checkbox (returned value is Number)
			class ModuleDescription;	// Module description
			class Units;				// Selection of units on which the module is applied
		};

		// Description base classes (for more information see below):
		class ModuleDescription
		{
			class AnyBrain;
		};
	};

	class TRIPLES(PREFIX,Module,startInVehicle) : Module_F
	{
		// Standard object definitions:
		scope = 2;										// Editor visibility; 2 will show it in the menu, 1 will hide it.
		displayName = "Start In Vehicle";				// Name displayed in the menu
		icon = PATH_TO_ADDON_2(data,startInVehicle.paa);	// Map icon. Delete this entry to use the default icon.
		category = QUOTE(DOUBLES(PREFIX,Modules));

		function = QFUNC(init);	// Name of function triggered once conditions are met
		functionPriority = 1;				// Execution priority, modules with lower number are executed first. 0 is used when the attribute is undefined
		isGlobal = 1;						// 0 for server only execution, 1 for global execution, 2 for persistent global execution
		isTriggerActivated = 1;				// 1 for module waiting until all synced triggers are activated
		isDisposable = 0;					// 1 if modules is to be disabled once it is activated (i.e. repeated trigger activation will not work)
		is3DEN = 0;							// 1 to run init function in Eden Editor as well
		curatorCanAttach = 0;				// 1 to allow Zeus to attach the module to an entity
		curatorInfoType = QUOTE(TRIPLES(RscDisplayAttribute,Module,startInVehicle)); // Menu displayed when the module is placed or double-clicked on by Zeus

		// 3DEN Attributes Menu Options
		canSetArea = 0;						// Allows for setting the area values in the Attributes menu in 3DEN
		canSetAreaShape = 0;				// Allows for setting "Rectangle" or "Ellipse" in Attributes menu in 3DEN
		canSetAreaHeight = 0;				// Allows for setting height or Z value in Attributes menu in 3DEN

		class AttributeValues {};

		// Module attributes (uses https://community.bistudio.com/wiki/Eden_Editor:_Configuring_Attributes#Entity_Specific):
		class Attributes : AttributesBase
		{
			// Arguments shared by specific module type (have to be mentioned in order to be present):
			class Units : Units
			{
				property = QUOTE(DOUBLES(PREFIX,TRIPLES(Module,startInVehicle,units)));
				displayName = "Apply to (units)";
				tooltip = "The units will be affected by the module.";
			};

			class Vehicle : Edit
			{
				property = QUOTE(DOUBLES(PREFIX,TRIPLES(Module,startInVehicle,vehicle)));
				displayName = "Move into (vehicle)";
				tooltip = "The vehicle that the units will be moved into. Expected data type is a variable name of the vehicle.";
			};

			class BackupLZ : Edit
			{
				property = QUOTE(DOUBLES(PREFIX,TRIPLES(Module,startInVehicle,backupLZ)));
				displayName = "Move to (backup LZ)";
				tooltip = "The optional backup LZ that the units will be moved to if the vehicle is full or no longer available. Expected data type is a variable name of the LZ marker, an ASL position array, or empty.";
			};

			class Cargo : Checkbox
			{
				property = QUOTE(DOUBLES(PREFIX,TRIPLES(Module,startInVehicle,Cargo)));
				displayName = "Use cargo seats (vehicle)";
				tooltip = "Should units be moved into cargo seats?";
				defaultValue = 1;
			};

			class Commander : Checkbox
			{
				property = QUOTE(DOUBLES(PREFIX,TRIPLES(Module,startInVehicle,Commander)));
				displayName = "Use commander seat (vehicle)";
				tooltip = "Should units be moved into the commander seat?";
				defaultValue = 0;
			};

			class Gunner : Checkbox
			{
				property = QUOTE(DOUBLES(PREFIX,TRIPLES(Module,startInVehicle,Gunner)));
				displayName = "Use gunner seats (vehicle)";
				tooltip = "Should units be moved into gunner seats?";
				defaultValue = 0;
			};

			class Driver : Checkbox
			{
				property = QUOTE(DOUBLES(PREFIX,TRIPLES(Module,startInVehicle,Driver)));
				displayName = "Use driver seat (vehicle)";
				tooltip = "Should units be moved into the driver seat?";
				defaultValue = 0;
			};

			class LockAISeats : Checkbox
			{
				property = QUOTE(DOUBLES(PREFIX,TRIPLES(Module,startInVehicle,lockAISeats)));
				displayName = "Lock AI seats (vehicle)";
				tooltip = "Should the vehicle seats with AI in them be locked?";
				defaultValue = 1;
			};

			class AllowDamage : Checkbox
			{
				property = QUOTE(DOUBLES(PREFIX,TRIPLES(Module,startInVehicle,allowDamage)));
				displayName = "Allow damage (vehicle)";
				tooltip = "Should the vehicle be allowed to take damage?";
				defaultValue = 0;
			};

			class TerminateCondition : Default
			{
				control = "EditCodeMulti5";
				property = QUOTE(DOUBLES(PREFIX,TRIPLES(Module,startInVehicle,TerminateCondition)));
				displayName = "Terminate condition (module)";
				tooltip = "Once the condition is met, the module will be deleted automatically. The output of the statement must be a Boolean.";
				defaultValue = "false";
			};

			class ModuleDescription : ModuleDescription {}; // Module description should be shown last
		};

		// Module description (must inherit from base class, otherwise pre-defined entities won't be available)
		class ModuleDescription : ModuleDescription
		{
			description = "This module is used to start players in a vehicle at mission start. To set up the module simply do the following:<br/>1. Synchronize the module to all units that should be affected.<br/>2. Provide the vehicle variable name to the module.<br/>3. Provide the LZ marker variable name or a position array if needed.<br/>4. Configure the rest of the settings to your liking.<br/><br/>Tooltips are visible when you hover over each attribute.";	// Short description, will be formatted as structured text
			sync[] = { "LocationArea_F", "EmptyDetector"};			// Array of synced entities (can contain base classes)
		};
	};
};