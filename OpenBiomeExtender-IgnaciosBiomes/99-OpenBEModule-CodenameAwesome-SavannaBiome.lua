--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Please don't remove the 0 at the beginning of the script. This ensures that it runs before other scripts. That way, the changes to the grass will affect any following scripts, optimizing them as well.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

SWAMP_GRASS = [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="1" />
            <Property name="UseSeedValue" value="True" />
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
                    <Property name="OptionName" value="6" />
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
        <Property name="FlatDensity" value="0.05" />
        <Property name="SlopeDensity" value="0.2" />
        <Property name="SlopeMultiplier" value="1" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="180" />
        <Property name="MinRegionRadius" value="0" />
        <Property name="MaxRegionRadius" value="10" />
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
        <Property name="MinScale" value="0.8" />
        <Property name="MaxScale" value="1.3" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="3" />
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
LUSHLOW_TREE = [[      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN" />
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
                    <Property name="Layer" value="OVERLAY" />
                    <Property name="Group" value="BARKO" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Rock" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.673" />
                      <Property name="G" value="0.641" />
                      <Property name="B" value="0.567" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="GRASS" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="BARK" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Wood" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.93" />
                      <Property name="G" value="0.891" />
                      <Property name="B" value="0.838" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="3" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.164" />
                      <Property name="G" value="0.509" />
                      <Property name="B" value="0.63" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="2" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="LEAF" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Leaf" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.923" />
                      <Property name="G" value="0.484" />
                      <Property name="B" value="0.046" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="1" />
                  </Property>
                </Property>
              </Property>
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="COLOUR" />
                    <Property name="Group" value="BARKC" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.164" />
                      <Property name="G" value="0.509" />
                      <Property name="B" value="0.63" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="" />
                  </Property>
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="BARKB" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Grass" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="False" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.542" />
                      <Property name="G" value="0.67" />
                      <Property name="B" value="0.333" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="1" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="SPARSECLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="High" />
        <Property name="Coverage" value="0.15" />
        <Property name="FlatDensity" value="0.11" />
        <Property name="SlopeDensity" value="0.11" />
        <Property name="SlopeMultiplier" value="1" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="SameSeed" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="50" />
        <Property name="MinRegionRadius" value="0" />
        <Property name="MaxRegionRadius" value="3" />
        <Property name="MaxImposterRadius" value="99" />
        <Property name="FadeInStartDistance" value="0" />
        <Property name="FadeInEndDistance" value="0" />
        <Property name="FadeInOffsetDistance" value="0" />
        <Property name="FadeOutStartDistance" value="9999" />
        <Property name="FadeOutEndDistance" value="9999" />
        <Property name="FadeOutOffsetDistance" value="0" />
        <Property name="LodDistances">
          <Property value="0" />
          <Property value="20" />
          <Property value="60" />
          <Property value="150" />
          <Property value="500" />
        </Property>
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="0.7" />
        <Property name="MaxScale" value="2.3" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="5" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
      </Property>]]

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  --["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-SavannaBiome.pak",
  ["MOD_DESCRIPTION"]		= "Duplicates the Barren biome and adds grass/etc to create the Savanna biome",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "3.13",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create new files
					["MBIN_FILE_SOURCE"] = {
						--Biome
						{"OPENBE/BIOMEFILES/BARREN/BARRENBIOME.MBIN","OPENBE/BIOMEFILES/SAVANNA/SAVANNABIOME.MBIN"},
						--DETAILOBJECTS
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENBIGPROPSOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNABIGPROPSOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENCORALOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNACORALOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENHIVESOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAHIVESOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENHQOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAHQOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSDEAD.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSDEAD.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAROCKYWEIRDOBJECTS.MBIN"},
						--Landmarks
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/BARREN/BARRENCORALOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNACORALOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/BARREN/BARRENHIVESOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAHIVESOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/BARREN/BARRENHQOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAHQOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/BARREN/BARRENOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/BARREN/BARRENOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/BARREN/BARRENOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/BARREN/BARRENROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAROCKYOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/BARREN/BARRENROCKYWEIRDOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAROCKYWEIRDOBJECTS.MBIN"},
					},
				},				
				{--Add trees
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNACORALOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAHIVESOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAHQOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAROCKYWEIRDOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Add grass
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["ADD"] = LUSHLOW_TREE
						},
					}
				},
				{--Add grass
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNABIGPROPSOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNACORALOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAHIVESOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAHQOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAROCKYOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAROCKYWEIRDOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Add grass
							["PRECEDING_KEY_WORDS"] = {"Objects","DetailObjects"},
							["ADD"] = SWAMP_GRASS
						},
					}
				},
				{--Remove groundflowers
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAHIVESOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAHQOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSMID.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove ground flowers
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/BARREN/PLANTS/GROUNDFLOWER.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
					}
				},
				{--Remove fragments
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAHIVESOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAHQOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSDEAD.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSMID.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{--Remove ground flowers
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SMALL/FRAGMENTS.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] = {"OPENBE/BIOMEFILES/SAVANNA/SAVANNABIOME.MBIN"},--FOR TESTING. SWAP WITH SAVANNA LATER.
					["EXML_CHANGE_TABLE"] = {
						{
							["VALUE_CHANGE_TABLE"] = {
								{"TextureFile","METADATA/SIMULATION/SOLARSYSTEM/TEXTURES/LUSH.MBIN"},
								--{"TileTypesFile","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHTILETYPES.MBIN"}, --Turns out it looks better without this
							},
						},
						{--Remove existing DetailObjects
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS","Value","IGNORE"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNABIGPROPSOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAHIVESOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAHQOBJECTSFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNACORALOBJECTS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAROCKYOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/SAVANNA/SAVANNAROCKYWEIRDOBJECTS.MBIN" />
        </Property>]]
						},
						{--Remove existing Landmarks
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS","Value","IGNORE"},
							["REMOVE"] = "SECTION",
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNACORALOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAHIVESOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAHQOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAOBJECTSLOW.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAOBJECTSMID.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAROCKYOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/SAVANNA/SAVANNAROCKYWEIRDOBJECTS.MBIN" />
        </Property>]]
						},
					}
				},
				{--Replace the HighQuality Barren subtype with the savanna biome
					["MBIN_FILE_SOURCE"] = {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"BiomeSubType","HighQuality"},
							["SECTION_UP"] = 1,
							["VALUE_MATCH"] = "OPENBE/BIOMEFILES/BARREN/BARRENBIOME.MXML",
							["VALUE_CHANGE_TABLE"] = {
								{"FileName","OPENBE/BIOMEFILES/SAVANNA/SAVANNABIOME.MXML"}
							}
						}
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE