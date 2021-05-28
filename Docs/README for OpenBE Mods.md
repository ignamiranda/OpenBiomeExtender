Latest OpenBE release: https://github.com/ignamiranda/OpenBiomeExtender/releases

## If you want to use only this mod:
Place OpenBiomeExtender v###.pak, zzOpenBiomeExtender-MergedModules (Pre-Built Patch folder) and the Assets.pak (if there are any required assets) into your MODS folder. All three are required.

## If you want to combine multiple OpenBE mods or customize this mod:
1. Get AMUMSS https://www.nexusmods.com/nomanssky/mods/957
2. Copy OpenBiomeExtender v###.pak into the AMUMSS ModScript folder.
3. Go to the OpenBE Scripts and copy the scripts you want to the ModScript folder, as well as any scripts you want to include from other modders.
4. Run AMUMSS' BUILDMOD.bat. Type "N" when it asks to check for conflicts. Type "Y" when if it asks if you want to COPY the mod to your game files.
5. It should now have copied the OpenBE pak as well as a new merged patch to your MODS folder. Make sure to check for any assets .paks modders may require for models and textures and put that in your mods folder as well.

## Getting a ton of warnings in AMUMSS?
This is a mistake in the current version of AMUMSS and is a false positive. It's warning you that it's not finding certain files in the vanilla game, but it is finding it in the OpenBiomeExtender.pak, so it's fine. This should be fixed in the next version of AMUMSS.
