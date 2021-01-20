--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

OBJECTS_DISTANCE_MULTIPLIER = 3

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-IncreasedCrystalsRenderDistance.pak",
  ["MOD_DESCRIPTION"]		= "Adds the chance for planets with bigger resource crystals to spawn, while still allowing some planets to have normal sized crystals",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/VANILLA/OBJECTS/OBJECTS/CRYSTALS/FULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"FadeOutStartDistance",OBJECTS_DISTANCE_MULTIPLIER},
								{"FadeOutEndDistance",OBJECTS_DISTANCE_MULTIPLIER},
							}
						}
					}
				},
			},
		}
	},
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE