class HelmetsModCustomizationContent extends AOCCustomizationContent;

static function int GetDefaultCharacterIDFor(int Team, int PawnClass)
{
	LogAlwaysInternal("GetDefaultCharacterIDFor"@Team@PawnClass);
	switch(PawnClass)
	{
	case ECLASS_Archer:
		return Team == EFAC_Agatha ? default.Characters.Find(class'HelmetsModCharacterInfo_Agatha_Archer') : default.Characters.Find(class'HelmetsModCharacterInfo_Mason_Archer');
		break;
	case ECLASS_ManAtArms:
		return Team == EFAC_Agatha ? default.Characters.Find(class'HelmetsModCharacterInfo_Agatha_ManAtArms') : default.Characters.Find(class'HelmetsModCharacterInfo_Mason_ManAtArms');
		break;
	case ECLASS_Vanguard:
		return Team == EFAC_Agatha ? default.Characters.Find(class'HelmetsModCharacterInfo_Agatha_Vanguard') : default.Characters.Find(class'HelmetsModCharacterInfo_Mason_Vanguard');
		break;
	case ECLASS_Knight:
		return Team == EFAC_Agatha ? default.Characters.Find(class'HelmetsModCharacterInfo_Agatha_Knight') : default.Characters.Find(class'HelmetsModCharacterInfo_Mason_Knight');
		break;
	case ECLASS_King:
		return Team == EFAC_Agatha ? default.Characters.Find(class'HelmetsModCharacterInfo_Agatha_King') : default.Characters.Find(class'HelmetsModCharacterInfo_Mason_King');
		break;
	case ECLASS_Peasant:
	default:
		return default.Characters.Find(class'AOCCharacterInfo_Peasant');
	};
}

defaultproperties
{
	Characters.Empty
	
	//Going to keep the same order as in AOCCustomizationContent so users' choices remain
	Characters.Add(class'AOCCharacterInfo_Skeleton') //Placeholder invalid entry
	Characters.Add(class'AOCCharacterInfo_Skeleton')

	//We're only going to bother replacing playable characters
	Characters.Add(class'HelmetsModCharacterInfo_Agatha_Archer')
	Characters.Add(class'HelmetsModCharacterInfo_Agatha_King')
	Characters.Add(class'HelmetsModCharacterInfo_Agatha_Knight')
	Characters.Add(class'HelmetsModCharacterInfo_Agatha_ManAtArms')
	Characters.Add(class'HelmetsModCharacterInfo_Agatha_Vanguard')
	Characters.Add(class'HelmetsModCharacterInfo_Mason_Archer')
	Characters.Add(class'HelmetsModCharacterInfo_Mason_King')
	Characters.Add(class'HelmetsModCharacterInfo_Mason_Knight')
	Characters.Add(class'HelmetsModCharacterInfo_Mason_ManAtArms')
	Characters.Add(class'HelmetsModCharacterInfo_Mason_Vanguard')

	Characters.Add(class'AOCCharacterInfo_Peasant')
	//Not going to bother doing the DLC characters, so I'm not even going to include them.
	//You could also replace them if you want players to be able to use them, I'm just omitting them for brevity.

	//Also not bothering to replace the teams, but you can do that if you want
	Teams.Add(class'AOCCustomizationTeam_Agatha')
	Teams.Add(class'AOCCustomizationTeam_Mason')
	Teams.Add(class'AOCCustomizationTeam_FFA')
}