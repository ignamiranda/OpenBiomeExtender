--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

GRASS = [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="3" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="GRASS" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Low" />
        <Property name="Coverage" value="1" />
        <Property name="FlatDensity" value="0.7" />
        <Property name="SlopeDensity" value="0.7" />
        <Property name="SlopeMultiplier" value="2.8" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="55" />
        <Property name="MinRegionRadius" value="0" />
        <Property name="MaxRegionRadius" value="5" />
        <Property name="MaxImposterRadius" value="10" />
        <Property name="FadeInStartDistance" value="0" />
        <Property name="FadeInEndDistance" value="0" />
        <Property name="FadeInOffsetDistance" value="0" />
        <Property name="FadeOutStartDistance" value="35" />
        <Property name="FadeOutEndDistance" value="45" />
        <Property name="FadeOutOffsetDistance" value="5" />
        <Property name="LodDistances">
          <Property value="0" />
          <Property value="8" />
          <Property value="15" />
          <Property value="25" />
          <Property value="500" />
        </Property>
        <Property name="MatchGroundColour" value="True" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
        <Property name="MinScale" value="0.75" />
        <Property name="MaxScale" value="1.3" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0.5" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0.75" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
      </Property>]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  --["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-UnfrozenLush.pak",
  ["MOD_DESCRIPTION"]		= "Creates a copy of all low density object lists and adds BoneSpire objects for the BoneSpire biome",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Copy all the FROZEN object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/FROZEN/FROZENROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/FROZEN/FROZENROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/FROZEN/FROZENOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/FROZEN/FROZENOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/FROZEN/FROZENOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/FROZEN/FROZENOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/FROZEN/FROZENROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/FROZEN/FROZENROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN"},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[MODELS/PLANETS/BIOMES/FROZEN/]],[[CUSTOMMODELS/CODENAMEAWESOME/BIOMES/DEFROZEN/]]},
								{[[SNOWBLEND]],[[MOSSBLEND]]}
							}
						}
					}
				},
				{---Remove grass from detailobjects that have it
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove small pebbles from detail objects to save performance, since they'll be covered by grass either way.
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL"
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Add lush grass
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["ADD"] = GRASS
						}
					}
				},
				{--Remove fragments
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSMID.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove small pebbles from detail objects to save performance, since they'll be covered by grass either way.
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL"
						},
					}
				},
				{--Remove gravel patches from detail objects to save performance, since they'll be covered by grass either way. They also look terrible at the wrong render distance.
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove gravel patches
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/GRAVELPATCHMOSSBLEND.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL"
						},
					}
				},
				{--Remove scrubgrass to help performance
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove gravel patches
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/SCRUBGRASS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
							["REPLACE_TYPE"] = "ALL"
						},
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {
					"OPENBE/BIOMEFILES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MBIN",
					"OPENBE/BIOMEFILES/HUGEPROPS/HUGERING/HUGERINGBIOME.MBIN",
					"OPENBE/BIOMEFILES/LUSH/LUSHBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/LUSH/DEFROZENROCKYWEIRDOBJECTS.MBIN" />
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