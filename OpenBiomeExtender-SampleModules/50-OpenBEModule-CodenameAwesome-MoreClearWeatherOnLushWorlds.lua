--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-MoreClearWeatherOnLushWorlds.pak",
  ["MOD_DESCRIPTION"]		= "Creates a copy of low density object lists and adds Beamstone objects for the Beamstone biome",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE\BIOMEFILES\LUSH\LUSHBIOME.MBIN",
						"OPENBE\BIOMEFILES\LUSH\LUSHBUBBLESBIOME.MBIN",
						"OPENBE\BIOMEFILES\LUSH\LUSHINFESTEDBIOME.MBIN",
						"OPENBE\BIOMEFILES\LUSH\LUSHROOMABIOME.MBIN",
						"OPENBE\BIOMEFILES\LUSH\LUSHROOMBBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"Clear",1}
							}
						}
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE