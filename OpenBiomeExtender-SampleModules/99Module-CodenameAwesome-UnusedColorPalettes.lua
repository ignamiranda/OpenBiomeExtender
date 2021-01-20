--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Please don't remove the 0 at the beginning of the script. This ensures that it runs before other scripts. That way, the changes to the grass will affect any following scripts, optimizing them as well.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-UnusedColorPalettes.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Adds multiple grass layers of varirying densities to vastly increase grass render distance",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = {
						"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"BiomeSubType","HighQuality"},
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[OPENBE/BIOMEFILES/LUSH/LUSHBIOME.MXML]],[[OPENBE/BIOMEFILES/LUSH/LUSHHQBIOME.MXML]]},
								{[[OPENBE/BIOMEFILES/FROZEN/FROZENBIOME.MXML]],[[OPENBE/BIOMEFILES/FROZEN/FROZENHQBIOME.MXML]]},
								{[[OPENBE/BIOMEFILES/BARREN/BARRENBIOME.MXML]],[[OPENBE/BIOMEFILES/BARREN/BARRENHQBIOME.MXML]]},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {
						{"OPENBE/BIOMEFILES/LUSH/LUSHBIOME.MBIN","OPENBE/BIOMEFILES/LUSH/LUSHHQBIOME.MBIN"},
						{"OPENBE/BIOMEFILES/BARREN/BARRENBIOME.MBIN","OPENBE/BIOMEFILES/BARREN/BARRENHQBIOME.MBIN"},
						{"OPENBE/BIOMEFILES/FROZEN/FROZENBIOME.MBIN","OPENBE/BIOMEFILES/FROZEN/FROZENHQBIOME.MBIN"},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/LUSH/LUSHHQBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"ColourPaletteFile", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQCOLOURPALETTE.MBIN"}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/BARREN/BARRENHQBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"ColourPaletteFile", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQCOLOURPALETTES.MBIN"}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/BIOMEFILES/FROZEN/FROZENHQBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"ColourPaletteFile", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQCOLOURPALETTES.MBIN"}
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