if GetLocale() ~= "frFR" then return end

local L

------------------------
--  Northrend Beasts  --
------------------------
L = DBM:GetModLocalization("NorthrendBeasts")

L:SetGeneralLocalization{
	name = "Les Bêtes du Norfendre"
}

L:SetMiscLocalization{
	Charge	= "^%%s fusille (%S+) du regard et lâche un rugissement assourdissant !",
	CombatStart		= "Arrivant tout droit des plus noires et profondes cavernes des pics Foudroyés, Gormok l'Empaleur !",
	Phase3			= "L'air se gèle à l'entrée de notre prochain combattant, Glace-hurlante ! Tuez ou soyez tués, champions !",
	Gormok			= "Gormok l'Empaleur",
	Acidmaw			= "Gueule-d'acide",
	Dreadscale		= "Ecaille-d'effroi",
	Icehowl			= "Glace-hurlante"
}

L:SetOptionLocalization{
	WarningImpale				= "Montre une alerte spéciale pour Empaler",
	WarningFireBomb				= "Montre une alerte spéciale pour les Bombes incendiaires",
	WarningBreath				= "Montre une alerte spéciale pour les Souffles arctiques",
--	WarningSpray				= "Montre une alerte spéciale pour les Jet paralysant",
	WarningRage					= "Montre une alerte spéciale pour la Rage écumeuse",
	WarningCharge				= "Montre une alerte spéciale pour la cible de la charge",
	WarningToxin				= "Montre une alerte pour la cible de la Toxine paralysante",
	WarningBile					= "Montre une alerte pour la cible de la Bile brûlante",
	SpecialWarningImpale3		= "Montre une alerte spéciale pour l'empaler (>=3 Stacks)",
	SpecialWarningFireBomb		= "Montre une alerte spéciale quand la Bombe incendiaire est sur vous",
	SpecialWarningSlimePool		= "Montre une alerte spéciale pour les Flaque de bave",
	SpecialWarningSilence		= "Montre une alerte spéciale pour le Piétinement ahurissant",
	SpecialWarningSpray			= "Montre une alerte spéciale si vous êtes victime d'un Jet paralysant",
	SpecialWarningToxin			= "Montre une alerte spéciale si vous êtes victime de la Toxine paralysante",
	SpecialWarningBile			= "Montre une alerte spéciale si vous avez la Bile brûlante sur Vous",
	SpecialWarningCharge		= "Montre une alerte spéciale quand Glace-hurlante est sur le point de vous charger",
	PingCharge					= "Ping sur la minimap quand Glace-hurlante va vous charger",
	SpecialWarningChargeNear	= "Montre une alerte spéciale quand Glace-hurlante charge à côté de vous",
	SetIconOnChargeTarget		= "Met une icône sur la cible de la charge ( Tête de mort )",
	SetIconOnBileTarget			= "Met une icône sur la cible de la Bile brûlante",
	ClearIconsOnIceHowl			= "Enlève toutes les icônes avant la prochaine charge",
	TimerNextBoss				= "Montre le timer pour l'arrivée du prochain boss"
}

L:SetTimerLocalization{
	TimerNextBoss				= "Prochain Boss Dans"
}

L:SetWarningLocalization{
	WarningImpale				= "%s sur >%s<",
	WarningFireBomb				= "Bombe incendiaire",
--	WarningSpray				= "%s sur >%s<",
	WarningBreath				= "Souffle arctique",
	WarningRage					= "Rage écumeuse",
	WarningCharge				= "Charge sur >%s<",
	WarningToxin				= "Toxine paralysante sur >%s<",
	WarningBile					= "Bile brûlante sur >%s<",
	SpecialWarningImpale3		= "Empaler >%d< sur VOUS",
	SpecialWarningFireBomb		= "Bombe incendiaire sur VOUS",
	SpecialWarningSlimePool		= "Flaque de bave, BOUGEZ!",
	SpecialWarningSilence		= "Piétinement ahurissant dans ~1.5 Seconde!",
	SpecialWarningSpray			= "Jet paralysant",
	SpecialWarningToxin			= "Toxine paralysante sur vous, BOUGEZ!",
	SpecialWarningCharge		= "Charge sur vous! COUREZ!",
	SpecialWarningChargeNear	= "Charge à côté de vous! COUREZ!",
	SpecialWarningBile			= "Bile brûlante sur VOUS !"
}



-------------------
-- Lord Jaraxxus --
-------------------
L = DBM:GetModLocalization("Jaraxxus")

L:SetGeneralLocalization{
	name = "Seigneur Jaraxxus"
}

L:SetWarningLocalization{
	WarnFlame				= "Flamme de la Légion sur >%s<",
	WarnTouch				= "Toucher de Jaraxxus sur >%s<",
	WarnNetherPower			= "Puissance du Néant sur Jaraxxus! Dispel Maintenant!",
	WarnPortalSoon			= "Portail de Néant bientôt!",
	WarnVolcanoSoon			= "Inferno brûlant bientôt!",
	SpecWarnFlesh			= "Incinérer la chair sur VOUS!",
	SpecWarnTouch			= "Toucher de Jaraxxus sur VOUS!",
	SpecWarnKiss			= "Baiser de la Maîtresse",
	SpecWarnTouchNear		= "Toucher de Jaraxxus sur >%s< à côté de vous",
	SpecWarnFlame			= "Flamme de la Légion! COUREZ!",
	SpecWarnNetherPower		= "Dispell Maintenant!",
	SpecWarnFelInferno		= "Inferno gangrené! Courez plus loin!"
}

L:SetMiscLocalization{
	WhisperFlame			= "Flamme de la Légion sur VOUS!",
	IncinerateTarget		= "Incinérer la chair: %s"
}

L:SetOptionLocalization{
	WarnFlame				= "Alerte pour les Flammes de la Légion",
	WarnTouch				= "Montre une alerte pour le Toucher de Jaraxxus",
	WarnNetherPower			= "Alerte quand Jaraxxus gagne Puissance du Néant (Pour le dispell)",
	WarnPortalSoon			= "Montre une alerte avant qu'un Portail de Néant arrive",
	WarnVolcanoSoon			= "Montre une alerte avant qu'un Inferno brûlant arrive",
	SpecWarnFlame			= "Montre une alerte spéciale quand vous avez Flamme de la Légion",
	SpecWarnFlesh			= "Montre une alerte spéciale quand vous avez Incinérer la chair",
	SpecWarnTouch			= "Montre une alerte spéciale quand le Toucher de Jaraxxus est sur vous",
	SpecWarnTouchNear		= "Montre une alerte spéciale quand le Toucher de Jaraxxus est à côté de vous",
	SpecWarnKiss			= "Montre une alerte spéciale pour le Baiser de la Maîtresse",
	SpecWarnNetherPower		= "Montre une alerte spéciale pour la Puissance du Néant (Pour dispell Jaraxxus)",
	SpecWarnFelInferno		= "Montre une alerte spéciale quand vous êtes près d'un Inferno gangrené",
	TouchJaraxxusIcon		= "Met une icône sur la cible du Toucher de Jaraxxus (Croix)",
	IncinerateFleshIcon		= "Met une icône sur la cible d'Incinérer la chair (Tête de mort)",
	LegionFlameIcon			= "Met une icône sur la cible des Flammes de la Légion (Carré)",
	LegionFlameWhisper		= "Chuchote à la cible des Flammes de la Légion pour la prévenir",
	IncinerateShieldFrame	= "Montre la vie du Boss avec une barre de vie pour Incinérer la chair"
}


-----------------------
-- Faction Champions --
-----------------------
L = DBM:GetModLocalization("Champions")

L:SetGeneralLocalization{
	name = "Champion des Factions"
}

L:SetTimerLocalization{
}

L:SetWarningLocalization{
	WarnHellfire		= "Flammes infernales",
	SpecWarnHellfire	= "Flammes infernales ! BOUGEZ !",
	SpecWarnHandofProt		= "Main de Protection sur >%s<",
	SpecWarnDivineShield	= "Bouclier Divin sur >%s<"
}

L:SetMiscLocalization{
	Gorgrim		= "DK - Gorgrim Fend-les-ombres",		-- 34458
	Birana 		= "Druide - Birana Sabot-tempête",		-- 34451
	Erin		= "Druide - Erin Sabot-de-brume",		-- 34459
	Rujkah		= "Chasseur - Ruj'kah",					-- 34448
	Ginselle	= "Mage - Ginselle Jettechancre",		-- 34449
	Liandra		= "Paladin - Liandra Mande-soleil",		-- 34445
	Malithas	= "Paladin - Malithas Brillelame",		-- 34456
	Caiphus		= "Prêtre - Caiphus le Sévère",			-- 34447
	Vivienne	= "Prêtre - Vivienne Murmenoir",		-- 34441
	Mazdinah	= "Voleur - Maz'dinah",					-- 34454
	Thrakgar	= "Chaman - Thrakgar",					-- 34444
	Broln		= "Chaman - Broln Corne-rude",			-- 34455
	Harkzog		= "Démoniste - Harkzog",				-- 34450
	Narrhok		= "Guerrier - Narrhok Brise-acier",		-- 34453
	YellKill	= "Une victoire tragique et depourvue de sens. La perte subie aujourd'hui nous affaiblira tous, car qui d'autre que le roi-liche pourrait beneficier d'une telle folie?? De grands guerriers ont perdu la vie. Et pour quoi?? La vraie menace plane à l'horizon?: le roi-liche nous attend, tous, dans la mort."
} 

L:SetOptionLocalization{
	WarnHellfire			= "Alerte quand Harzog incante les Flammes infernales",
	SpecWarnHellfire		= "Montre une alerte spéciale quand vous subissez des dégats provenant des Flammes infernales",
	SpecWarnHandofProt		= "Montre une alerte spéciale quand le Paladin lance Main de Protection",
	SpecWarnDivineShield	= "Montre une alerte spéciale quand le Paladin lance Bouclier Divin"
}


------------------
-- Valkyr Twins --
------------------
L = DBM:GetModLocalization("Twins")

L:SetGeneralLocalization{
	name = "Soeurs Val'kyr"
}

L:SetTimerLocalization{
	TimerSpecialSpell	= "Prochaine Capacité Spéciale"	
}

L:SetWarningLocalization{
	WarnSpecialSpellSoon		= "Capacité spéciale Bientôt !",
	SpecWarnSpecial				= "Changement de couleur !",
	SpecWarnEmpoweredDarkness	= "Ténèbres surpuissantes",
	SpecWarnEmpoweredLight		= "Lumière surpuissante",
	SpecWarnSwitchTarget		= "Changement de cible!",
	SpecWarnKickNow				= "Kick Maintenant!",
	WarningTouchDebuff			= "Toucher sur >%s<",
	WarningPoweroftheTwins		= "Puissance des jumelles - plus de soins sur >%s<",
	SpecWarnPoweroftheTwins		= "Puissance des jumelles!"
}

L:SetMiscLocalization{
	YellPull 	= "Au nom de notre ténébreux maître. Pour le roi-liche. Vous. Allez. Mourir.",
	Fjola 		= "Fjola Plaie-lumineuse",
	Eydis		= "Eydis Plaie-sombre"
}

L:SetOptionLocalization{
	TimerSpecialSpell			= "Montre une alerte spéciale pour la prochaine Capacité spéciale",
	WarnSpecialSpellSoon		= "Montre une Pré-Alerte pour la prochaine Capacité spéciale",
	SpecWarnSpecial				= "Montre une alerte spéciale quand vous devez changer de couleur",
	SpecWarnEmpoweredDarkness	= "Montre une alerte spéciale pour les Ténèbres surpuissantes",
	SpecWarnEmpoweredLight		= "Montre une alerte spéciale pour la Lumière surpuissante",
	SpecWarnSwitchTarget		= "Montre une alerte spéciale quand l'autre boss est en train d'incanter",
	SpecWarnKickNow				= "Montre une alerte spéciale quand vous devez interrompre l'incantation",
	SpecialWarnOnDebuff			= "Montre une alerte spéciale quand vous avez un Toucher (pour changer de debuff)",
	SetIconOnDebuffTarget		= "Met des icônes sur les cibles des Toucher (héroique)",
	WarningTouchDebuff			= "Annoncer les cibles des débuff Toucher de Lumière/des Ténèbres",
	WarningPoweroftheTwins		= "Annoncer la cible pour Puissance des jumelles",
	SpecWarnPoweroftheTwins		= "Montre une alerte spéciale quand vous êtes en train de tanker une Jumelle puissante"
}


------------------
-- Anub'arak --
------------------
L = DBM:GetModLocalization("Anub'arak_Coliseum")

L:SetGeneralLocalization{
	name 				= "Anub'arak"
}

L:SetTimerLocalization{
	TimerEmerge			= "Sort du sol",
	TimerSubmerge		= "Rentre dans le sol"
}

L:SetWarningLocalization{
	WarnEmerge			= "Anub'arak Sort du sol",
	WarnEmergeSoon		= "Anub'arak Sort du sol dans 10 sec",
	WarnSubmerge		= "Anub'arak Rentre dans le sol",
	WarnSubmergeSoon	= "Anub'arak Rentre dans le sol dans 10 sec",
	WarnPursue			= "Poursuivi >%s<",
	SpecWarnPursue		= "Vous êtes poursuivi"
}

L:SetMiscLocalization{
	YellPull			= "Ce terreau sera votre tombeau !",
	Swarm				= "L'essaim va vous submerger !",
	Emerge				= "surgit de la terre !",
	Burrow				= "s'enfonce dans le sol !"
}

L:SetOptionLocalization{
	WarnEmerge			= "Montre une alerte quand le boss sort du sol",
	WarnEmergeSoon		= "Montre une alerte avant que le boss sorte du sol",
	WarnSubmerge		= "Montre une alerte quand le boss rentre dans le sol",
	WarnSubmergeSoon	= "Montre une alerte avant que le boss ne rentre dans le sol",
	SpecWarnPursue		= "Montre une alerte quand vous commencez à être suivi",
	TimerEmerge			= "Montre le timer pour la sortie du boss",
	TimerSubmerge		= "Montre le timer pour la rentrée du boss dans la terre",
	PlaySoundOnPursue	= "Joue un son quand vous êtes suivi",
	PursueIcon			= "Met une icône sur la tête du joueur qui est suivi",
	WarnPursue			= "Annonce le joueur qui est suivi"
}