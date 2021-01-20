--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

SCALE_MULTIPLIER = 10
DENSITY_MULTIPLIER = 1/10

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-HugeHives.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Converts the Barren landmarks into massive DistantObjects",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/BARREN/BARRENHIVESOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEHIVESOBJECTS.MBIN"},
					},
				},
				{--Tweak the object lists
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEHIVESOBJECTS.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{--Delete the existing DistantObjects LINE and rename the Landmarks to Distant Objects. (You don't need to create a new empty Landmarks line since MBINCompiler does that automatically).
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[<Property name="DistantObjects" />]],[[]]},
								{[[<Property name="Landmarks">]],[[<Property name="DistantObjects">]]}
							}
						},
						{--Tweak scale, density and render distance
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER},
							}
						},
						{--Remove objects that aren't hives
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
						{--Remove objects that aren't hives
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
					}
				},
				{--Add the object list to relevant biomes. This object list doesn't have plants so we're just going to add it everywhere.
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/BARREN/BARRENBIOME.MBIN",
						"OPENBE/BIOMEFILES/BARREN/BARRENINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/DEAD/DEADBIOME.MBIN",
						"OPENBE/BIOMEFILES/DEAD/DEADFROZENBIOME.MBIN",
						"OPENBE/BIOMEFILES/FROZEN/FROZENBIOME.MBIN",
						"OPENBE/BIOMEFILES/FROZEN/FROZENINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGERING/HUGERINGBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MBIN",
						"OPENBE/BIOMEFILES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MBIN",
						--"OPENBE/BIOMEFILES/LAVA/LAVABIOME.MBIN", --Not adding it to Lava worlds because I want to guarantee volcanoes as the DistantObjects. If you want this there, delete the "--" at the beginning of the line
						"OPENBE/BIOMEFILES/LUSH/LUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/LUSH/LUSHBUBBLESBIOME.MBIN",
						"OPENBE/BIOMEFILES/LUSH/LUSHINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/LUSH/LUSHROOMABIOME.MBIN",
						"OPENBE/BIOMEFILES/LUSH/LUSHROOMBBIOME.MBIN",
						"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
						"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/SCORCHED/SCORCHEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/SCORCHED/SCORCHINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/SWAMP/SWAMPBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICEGGSBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICSPORESBIOME.MBIN",
						"OPENBE/BIOMEFILES/TOXIC/TOXICTENTACLESBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/BEAMSTONE/BEAMSBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/BONESPIRE/BONESPIREBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/CONTOUR/CONTOURBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/ELBUBBLE/ELBUBBLEBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/FRACTALCUBE/FRACTCUBEBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/HEXAGON/HEXAGONBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/SHARDS/SHARDSBIOME.MBIN",
						"OPENBE/BIOMEFILES/WEIRD/WIRECELLS/WIRECELLSBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/HUGEHIVESOBJECTS.MBIN" />
        </Property>]],
						},
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE