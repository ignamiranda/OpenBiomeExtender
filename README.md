# OpenBiomeExtender

A No Man's Sky mod that enhances the collaborative modding of biomes

## What does this mod do?

### For players

#### Compatibility

This mod encourages modders to add their biome changes to a unified pool via scripting. Most, if not all, module scripts should be able to be run together and compiled into a unified patch.

#### Customizability

You can pick and choose which modules you want in your game.

### For modders

#### Splits Object Lists Into Layers

A part of the No Man's Sky engine that goes overlooked by Hello Games is its ability to layer multiple object lists on top of each other. Hello Games tends to use this to keep important gameplay resources consistent across planets, such as crystals, rather than using it for greater biome variety. Think of it this way: 4 object lists in a biome produces 4 possible object configurations on a planet. But if you split those 4 object lists into 3 layers, each layer with 4 object lists, you can have 64 unique combinations for virtually the same amount of code.

This change has the upside of being able to easily add objects to a pool off posibilities for one layer rather than have to make an entire object list for one small change. It also means that your new object list will mix and match with the lists of other layers, rather than you having to create tons of object lists that have this one change applied to them in order to get a varied result.

In theory, you could have any number of layers you like, creating an ultra-complex and nuanced system that varies planets in uncountable ways. For the sake of simplicity and collaboration, this mod aims to have a simple, unified system based off the categories Hello Games already uses in their biome files: **DistantObjects, Landmarks, Objects, DetailObjects**

Although the best way to understand them is by looking at them in the game files, here's a quick summary of what each one is:

* **DistantObjects** - Used for giant objects such as volcanoes and mega-trees. By default, this layer only spawns in 10% of biomes.
* **Landmarks** - Used for the second largest objects in the game. These mostly include large rocks, trees and the largest plants in a regular Toxic/Radio/Scorched/ biome.
* **Objects** - Used for medium sized props, generally smaller than the player, such as boulders, bushes, medium sized plants, etc.
* **DetailObjects** - Used for the smallest props and groundcover. This includes: grass, flowers, small rocks, small mushrooms, cave stalagmites and stalagtites.

##### The Minor Downside

Any system that has more or less than 4 object lists, can't use the LifeLevel feature provided by the game. By default this is off for all biomes in this mod. This downside is small compared to the gains in variety and complexity. Over time, subtypes that use LifeLevel have become a small minority as Hello Games has added many biomes that only have one object list.

#### Consolidates Redundant Biome Subtypes

Hello Games has a tendency to make biome subtypes that aren't conceptually different from each other. There's no reason why there needs to be a Frozen biome, a Frozen Rocky biome and a Frozen HQ biome. These could be accomplished through having multiple object lists in one biome.

For a subtype to be considered non-redundant it must have either a unique color palette, description from space, floor texture,  tiletypes, etc. Otherwise, if the only major difference is their object lists, they're consolidated into one biome. This simplifies the modding process and increases variety now that their object lists can mishmash together.

#### Mountain Object Lists Are Now Biome Specific

In my modding, mountains have always felt limited because they appear on all types of biomes equally. I couldn't make a mountains object list that was too lush because it would look wrong in the Dead biome. To solve this 

## How to get started modding with OpenBiomeExtender

* If you want to learn how to make a mod for OpenBiomeExtender, go [here]()
