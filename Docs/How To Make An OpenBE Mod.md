# How to Make A Mod That Uses OpenBiomeExtender

This guide assumes some basic knowledge of [AMUMSS](https://www.nexusmods.com/nomanssky/mods/957). If you're not familiar with it, check out the templates provided with the AMUMSS download and ask questions in the [#mod-amumss](https://discord.gg/Zrq8K2v) channel of the [No Man's Sky Modding](https://discord.gg/Zrq8K2v) Discord server. You can also check out the documentation [here](https://wiki.step-project.com/NMS:Tutorials/AMUMSSScriptRules).

## Summary

* One feature per script
* Make your script only reliant on itself and OpenBE
  * If it *is* reliant on another mod or script, say so in the script's name
* Package your mod into three folders: Pre-Built Patch, Individual Scripts and Assets

## Making a script

### One feature per script

OpenBE users will regularly be making combined pak files with AMUMSS. You don't have to put all your features in one place because they'll be merging them anyway. For the sake of player customizability, try to have only one feature per script. That way the player can pick and choose which scripts they want added to their game to make the ultimate tailored experience for themselves.

### Scripts should work independently

For the same reason, your scripts should be self reliant. With each script, assume that the only other mod the player is running is OpenBE. Don't reference files that won't be there if the player decides to not use all your scripts.

### Naming Your Script

Template: **00-OpenBEModule-YourName-YourFeatureName.lua**

If you absolutely have to make a script that is completely dependent on another script, you can indicate that in your script name. For example, if your script relies on a mod called **00-OpenBEModule-ModderGuy-WigglyTrees.lua** you could name your script **01-OpenBEModule-CoolModder-LushWorlds-WigglyTreesPatch.lua**. The **01** at the beginning ensure that the script runs after the original mod and the **-WigglyTreesPatch** communicates to the player that this is a mod that is intended to be used with another mod.

#### Load Order Is Important

There are 100 "tiers" of priority. From 00 to 99.

As mentioned before, our naming scheme includes a number at the beginning that indicates the load order of your script. If you have a script that you want to affect every other script in the load order, you should use a low number like **00**.

For example, a mod that makes the Vanilla trees slightly bigger could set its number to 00 and it will run first. Then, when any following scripts make copies of those Tree object lists, they will be affected by the tweaked scale.

Alternatively, a mod that wants to add a color palette to the game while keeping all other scripts' changes to a biome could set its number to **99**. It will only run after all other scripts have run. Then it can copy the finalized biome file and then add the new palette.

If load order isn't important for your script, just set your number to **50**, putting it right in the middle of the load order.

### Creating an object list

#### DON'T USE "REMOVE" TAGS


### Adding an object list to a biome

```
{
	["MBIN_FILE_SOURCE"] 	= { --List the biomes you want to modify
	"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OPENBE/BIOMEFILES/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
	"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OPENBE/BIOMEFILES/RADIOACTIVE/RADIOINFESTEDBIOME.MBIN",
	},
	["EXML_CHANGE_TABLE"] = {
		{
			["SPECIAL_KEY_WORDS"] = {"Name","DETAILOBJECTS"}, --Name the "Layer" you want to add object lists to.
			["PRECEDING_KEY_WORDS"] = {"Options"},
			["ADD"] =
[[        <Property value="NMSString0x80.xml">
<Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMAOBJECTS.MBIN" />
</Property>
<Property value="NMSString0x80.xml">
<Property name="Value" value="METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/LUSH/LUSHROOMBOBJECTS.MBIN" />
</Property>]]
		},
	}
},
```

## Packaging your mod

Pre-Built

Individual Scripts

Required Assets
