--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_FILENAME"] 			= "zzCodenameAwesome-OpenBE-ToxicRadioactiveBlend.pak",     --the name of the pak created (if not combined) - REQUIRED
  ["MOD_DESCRIPTION"]		= "Adds Toxic objects to the Radioactive biome and vice versa, while preserving the overall theme and uniqueness of the original biomes.",         --optional, for reference
  ["MOD_AUTHOR"]				= "",         --optional, for reference
  ["NMS_VERSION"]				= "2.0",     --optional, for reference
  ["MODIFICATIONS"] 		=             --REQUIRED SECTION
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {
					"OPENBE/BIOMEFILES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MBIN",
					"OPENBE/BIOMEFILES/TOXIC/TOXICBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOSPIKECRYSTALSOBJECTS.MBIN" />
        </Property>
		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOSPIKEPOTATOOBJECTS.MBIN" />
        </Property>]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/TOXIC/TOXICINFESTEDBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/RADIOACTIVE/RADIOACTIVEALIENOBJECTS.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/RADIOACTIVE/RADIOACTIVEALIENOBJECTS.MBIN" />
        </Property>]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
					
					"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICOBJECTSFULL.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[		<Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICOBJECTSDEAD.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICOBJECTSFULL.MBIN" />
        </Property>]]
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/RADIOACTIVE/RADIOINFESTEDBIOME.MBIN",},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","OBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/OBJECTS/TOXIC/TOXICINFESTEDOBJECTS.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/TOXIC/TOXICINFESTEDOBJECTS.MBIN" />
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