--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

DENSITY_MULTIPLIER = 0.25

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  --["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-GlowShroomsInRadioactiveBiomes.pak",
  ["MOD_DESCRIPTION"]		= "Adds a chance for medium sized glowing mushrooms in Radioactive biomes",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {
					"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
					"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOINFESTEDBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHROOMAOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/LUSH/LUSHROOMBOBJECTS.MBIN" />
        </Property>]]
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE