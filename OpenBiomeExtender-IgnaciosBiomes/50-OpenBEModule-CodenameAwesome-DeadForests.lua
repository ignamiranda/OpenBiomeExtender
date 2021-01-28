--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

SCALE_MULTIPLIER = 1

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-DeadForests.pak",
  ["MOD_DESCRIPTION"]		= "Adds a chance for the original pre-NEXT tree models to spawn.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/DEADFORESTOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/DEADFORESTOBJECTSMID.MBIN"},
					}
				},
				{--Replace the tree model path
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/DEADFORESTOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/DEADFORESTOBJECTSMID.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{-- Scale up the trees
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN"},
							["REPLACE_TYPE"] = "ALL",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER}
							}
						},
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN]],[[CUSTOMMODELS/CODENAMEAWESOME/BIOMES/DEFROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN]]}
							}
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/BARREN/BARRENBIOME.MBIN",
						--"OPENBE/BIOMEFILES/BARREN/BARRENINFESTEDBIOME.MBIN",
						--"OPENBE/BIOMEFILES/DEAD/DEADBIOME.MBIN",
						--"OPENBE/BIOMEFILES/DEAD/DEADFROZENBIOME.MBIN",
						"OPENBE/BIOMEFILES/FROZEN/FROZENBIOME.MBIN",
						--"OPENBE/BIOMEFILES/FROZEN/FROZENINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGERING/HUGERINGBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MBIN",
						"OPENBE/BIOMEFILES/LAVA/LAVABIOME.MBIN",
						--"OPENBE/BIOMEFILES/LUSH/LUSHBIOME.MBIN",
						--"OPENBE/BIOMEFILES/LUSH/LUSHBUBBLESBIOME.MBIN",
						--"OPENBE/BIOMEFILES/LUSH/LUSHINFESTEDBIOME.MBIN",
						--"OPENBE/BIOMEFILES/LUSH/LUSHROOMABIOME.MBIN",
						--"OPENBE/BIOMEFILES/LUSH/LUSHROOMBBIOME.MBIN",
						"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
						--"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/SCORCHED/SCORCHEDBIOME.MBIN",
						--"OPENBE/BIOMEFILES/SCORCHED/SCORCHINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/SWAMP/SWAMPBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICBIOME.MBIN",
						--"OPENBE/BIOMEFILES/TOXIC/TOXICEGGSBIOME.MBIN",
						--"OPENBE/BIOMEFILES/TOXIC/TOXICINFESTEDBIOME.MBIN",
						--"OPENBE/BIOMEFILES/TOXIC/TOXICSPORESBIOME.MBIN",
						--"OPENBE/BIOMEFILES/TOXIC/TOXICTENTACLESBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/BEAMSTONE/BEAMSBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/BONESPIRE/BONESPIREBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/CONTOUR/CONTOURBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/ELBUBBLE/ELBUBBLEBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/FRACTALCUBE/FRACTCUBEBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/HEXAGON/HEXAGONBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/SHARDS/SHARDSBIOME.MBIN",
						--"OPENBE/BIOMEFILES/WEIRD/WIRECELLS/WIRECELLSBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/DEADFORESTOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/DEADFORESTOBJECTSMID.MBIN" />
        </Property>]]
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