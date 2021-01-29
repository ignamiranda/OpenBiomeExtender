NMS_MOD_DEFINITION_CONTAINER = 
{
  --["MOD_FILENAME"] 			= "zzCodenameAwesome-VerdantExtendedGrassDistance.pak",
  ["MOD_DESCRIPTION"]		= "Adds multiple grass layers of varirying densities to increase grass render distance",
  ["MOD_AUTHOR"]				= "CodenameAwesome", 
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Replace the dead detail objects with the low ones
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHOBJECTSDEAD.MBIN"}
					},
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE