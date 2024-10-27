local ConRO_Shaman, ids = ...;

--General
	ids.Racial = {
		AncestralCall = {spellID = 274738},
		ArcanePulse = {spellID = 260364},
		ArcaneTorrent = {spellID = 50613},
		Berserking = {spellID = 26297},
		Cannibalize = {spellID = 20577},
		GiftoftheNaaru = {spellID = 59548},
		Shadowmeld = {spellID = 58984},
	}
	ids.HeroSpec = {
		Totemic = 54,
		Stormbringer = 55,
		Farseer = 56,
	}

--Elemental
	ids.Ele_Ability = {
	--Shaman Baseline
		AncestralSpirit = {spellID = 2008},
		AstralRecall = {spellID = 556},
		Bloodlust = {spellID = 2825},
		EarthbindTotem = {spellID = 2484},
		FarSight = {spellID = 6196},
		FlameShock = {spellID = 470411},
		FlametongueWeapon = {spellID = 318038},
		GhostWolf = {spellID = 2645},
		HealingSurge = {spellID = 8004},
		Heroism = {spellID = 32182},
		LightningBolt = {spellID = 188196},
		LightningShield = {spellID = 192106},
		PrimalStrike = {spellID = 73899},
		Skyfury = {spellID = 462854},
		WaterWalking = {spellID = 546},
		--Passive
		Reincarnation = {spellID = 20608},
	--Elemental Baseline
		--Passive
		MasteryElementalOverload = {spellID = 168534},
	--Shaman
		ChainHeal = {spellID = 1064, talentID = 127861},
		LavaBurst = {spellID = 51505, talentID = 127873},
		AstralShift = {spellID = 108271, talentID = 127893},
		ChainLightning = {spellID = 188443, talentID = 127856},
		EarthShield = {spellID = 974, talentID = 127871},
		WindShear = {spellID = 57994, talentID = 127892},
		PlanesTraveler = {spellID = 381647, talentID = 127888},
		AstralBulwark = {spellID = 377933, talentID = 127887},
		SpiritWolf = {spellID = 260878, talentID = 127854},
		ThunderousPaws = {spellID = 378075, talentID = 127853},
		FrostShock = {spellID = 196840, talentID = 127879},
		WindsofAlAkir = {spellID = 382215, talentID = 127891},
		ElementalOrbit = {spellID = 383010, talentID = 127877},
		FireandIce = {spellID = 382886, talentID = 127880},
		AncestralWolfAffinity = {spellID = 382197, talentID = 127886},
		CapacitorTotem = {spellID = 192058, talentID = 127851},
		SpiritWalk = {spellID = 58875, talentID = 127865},
		GustofWind = {spellID = 192063, talentID = 127864},
		EncasingCold = {spellID = 462762, talentID = 127898},
		ArcticSnowstorm = {spellID = 462764, talentID = 127897},
		BrimmingwithLife = {spellID = 381689, talentID = 127855},
		HealingStreamTotem = {spellID = 5394, talentID = 127863},
		EarthgrabTotem = {spellID = 51485, talentID = 127894},
		StaticCharge = {spellID = 265046, talentID = 127896},
		GuardiansCudgel = {spellID = 381819, talentID = 127895},
		Purge = {spellID = 370, talentID = 127905},
		GreaterPurge = {spellID = 378773, talentID = 127904},
		EarthElemental = {spellID = 198103, talentID = 127858},
		ElementalResistance = {spellID = 462368, talentID = 127876},
		CleanseSpirit = {spellID = 51886, talentID = 127884},
		TremorTotem = {spellID = 8143, talentID = 127868},
		NaturesGuardian = {spellID = 30884, talentID = 127890},
		NaturesFury = {spellID = 381655, talentID = 127902},
		RefreshingWaters = {spellID = 378211, talentID = 127869},
		ElementalWarding = {spellID = 381650, talentID = 127872},
		Hex = {
			Frog = {spellID = 51514, talentID = 127903},
			Raptor = {spellID = 210873, talentID = 127903},
		},
		WindRushTotem = {spellID = 192077, talentID = 127909},
		PrimordialBond = {spellID = 381764, talentID = 127889},
		SpiritwalkersGrace = {spellID = 79206, talentID = 127857},
		AncestralGuidance = {spellID = 108281, talentID = 128116},
		Thunderstorm = {spellID = 51490, talentID = 127878},
		VoodooMastery = {spellID = 204268, talentID = 127875},
		TotemicFocus = {spellID = 382201, talentID = 127906},
		AscendingAir = {spellID = 462791, talentID = 127883},
		JetStream = {spellID = 462817, talentID = 127882},
		EnhancedImbues = {spellID = 462796, talentID = 127881},
		GracefulSpirit = {spellID = 192088, talentID = 127908},
		SpiritwalkersAegis = {spellID = 378077, talentID = 127907},
		LightningLasso = {spellID = 305483, talentID = 127862},
		TotemicProjection = {spellID = 108287, talentID = 127859},
		TotemicSurge = {spellID = 381867, talentID = 127874},
		SeasonedWinds = {spellID = 355630, talentID = 127910},
		ManaSpring = {spellID = 381930, talentID = 127860},
		Thundershock = {spellID = 378779, talentID = 127901},
		TravelingStorms = {spellID = 204403, talentID = 127900},
		PoisonCleansingTotem = {spellID = 383013, talentID = 127885},
		TotemicRecall = {spellID = 108285, talentID = 127870},
		NaturesSwiftness = {spellID = 378081, talentID = 127899},
		StoneBulwarkTotem = {spellID = 108270, talentID = 127911},
		CalloftheElements = {spellID = 383011, talentID = 127867},
		CreationCore = {spellID = 383012, talentID = 127866},
	--Elemental
		EarthShock = {spellID = 8042, talentID = 101854},
		ElementalBlast = {spellID = 117014, talentID = 127924},
		Earthquake = {spellID = 462620, talentID = 101855},
			EarthquakeDest = {spellID = 61882, talentID = 127925},
		ElementalFury = {spellID = 60188, talentID = 101853},
		FireElemental = {spellID = 198067, talentID = 101850},
		StormElemental = {spellID = 192249, talentID = 101849},
		FlashofLightning = {spellID = 381936, talentID = 101861},
		Aftershock = {spellID = 273221, talentID = 101874},
		SurgeofPower = {spellID = 262303, talentID = 101873},
		EchooftheElements = {spellID = 333919, talentID = 101872},
		IcefuryPassive = {spellID = 462816, talentID = 101870},
			Icefury = {spellID = 210714, talentID = 101870},
		Stormkeeper = {spellID = 191634, talentID = 101859},
		MasteroftheElements = {spellID = 16166, talentID = 101879},
		FusionofElements = {spellID = 462840, talentID = 127919},
		StormFrenzy = {spellID = 462695, talentID = 127917},
		SwellingMaelstrom = {spellID = 381707, talentID = 101893},
		PrimordialFury = {spellID = 378193, talentID = 127920},
		FuryoftheStorms = {spellID = 191717, talentID = 101871},
		HeraldoftheStorms = {spellID = 468571, talentID = 128223},
		ElementalUnity = {spellID = 462866, talentID = 127912},
		FluxMelting = {spellID = 381776, talentID = 101869},
		LightningCapacitor = {spellID = 462862, talentID = 127913},
		PoweroftheMaelstrom = {spellID = 191861, talentID = 101892},
		ImprovedFlametongueWeapon = {spellID = 382027, talentID = 101886},
		EverlastingElements = {spellID = 462867, talentID = 127915},
		Earthshatter = {spellID = 468626, talentID = 101867},
		ThunderstrikeWard = {spellID = 462757, talentID = 127918},
		EchoChamber = {spellID = 382032, talentID = 101890},
		SearingFlames = {spellID = 381782, talentID = 101880},
		EarthenRage = {spellID = 170374, talentID = 127916},
		FlamesoftheCauldron = {spellID = 378266, talentID = 101887},
		ElementalEquilibrium = {spellID = 378271, talentID = 101865},
		EyeoftheStorm = {spellID = 381708, talentID = 101867},
		Ascendance = {spellID = 114050, talentID = 101860},
		EchooftheElementals = {spellID = 462864, talentID = 101885},
		PrimordialWave = {spellID = 375982, talentID = 101891},
		LightningRod = {spellID = 210689, talentID = 101889},
		MountainsWillFall = {spellID = 381726, talentID = 101876},
		FirstAscendant = {spellID = 462440, talentID = 127921},
		Preeminence = {spellID = 462443, talentID = 128224},
		EruptingLava = {spellID = 468574, talentID = 101881},
		MagmaChamber = {spellID = 381932, talentID = 101883},
		SplinteredElements = {spellID = 382042, talentID = 101844},
		ChargedConduit = {spellID = 468625, talentID = 101862},
		EchoesofGreatSundering = {spellID = 384087, talentID = 127922},
		DeeplyRootedElements = {spellID = 378270, talentID = 101864},
		PrimalElementalist = {spellID = 117013, talentID = 127914},
		LiquidMagmaTotem = {spellID = 192222, talentID = 101884},
	--Hero
	--Farseer
		CalloftheAncestors = {spellID = 443450, talentID = 117485},
		LatentWisdom = {spellID = 443449, talentID = 117459},
		AncientFellowship = {spellID = 443423, talentID = 123632},
		HeedMyCall = {spellID = 443444, talentID = 117481},
		RoutineCommunication = {spellID = 443445, talentID = 123630},
		ElementalReverb = {spellID = 443418, talentID = 117466},
		OfferingfromBeyond = {spellID = 443451, talentID = 117484},
		PrimordialCapacity = {spellID = 443448, talentID = 117457},
		SpiritwalkersMomentum = {spellID = 443425, talentID = 117458},
		NaturalHarmony = {spellID = 443442, talentID = 117455},
		EarthenCommunion = {spellID = 443441, talentID = 123631},
		MaelstromSupremacy = {spellID = 443447, talentID = 117480},
		FinalCalling = {spellID = 443446, talentID = 117472},
		AncestralSwiftness = {spellID = 443454, talentID = 117491},
	--Stormbringer
		TempestPassive = {spellID = 454009, talentID = 117489},
			Tempest = {spellID = 452201, talentID = 117489},
		UnlimitedPower = {spellID = 454391, talentID = 117483},
		Stormcaller = {spellID = 454021, talentID = 117490},
		LightningConduit = {spellID = 467778, talentID = 117460},
		Electroshock = {spellID = 454022, talentID = 128226},
		StormSwell = {spellID = 455088, talentID = 117470},
		Supercharge = {spellID = 455110, talentID = 128225},
		ArcDischarge = {spellID = 455096, talentID = 117482},
		RollingThunder = {spellID = 454026, talentID = 117486},
		VoltaicSurge = {spellID = 454919, talentID = 117467},
		ConductiveEnergy = {spellID = 455123, talentID = 117465},
		NaturesProtection = {spellID = 454027, talentID = 117477},
		SurgingCurrents = {spellID = 454372, talentID = 125617},
		AwakeningStorms = {spellID = 455129, talentID = 117464},
	}
	ids.Ele_Form = {
		WindGust = 263806,
	}
	ids.Ele_Buff = {
		Ascendance = 114050,
		EarthShield = 974,
		EarthShieldEO = 383648,
		EchoingShock = 320125,
		ElementalBlast = {
			CriticalStrike = 118522,
			Haste = 173183,
			Mastery = 173184
		},
		EchoesofGreatSundering = 384088,
		FluxMelting = 381777,
		ImprovedFlametongueWeapon = 382028,
		Icefury = 462818,
		IcefuryFS = 210714,
		LavaSurge = 77762,
		LightningShield = 192106,
		MasteroftheElements = 260734,
		PrimordialWave = 375986,
		Skyfury = 462854,
		Stormkeeper = 191634,
		SurgeofPower = 285514,
		SurgingCurrents = 454376,
		Tempest = 454015,
		ThunderstrikeWard = 7587,
	}
	ids.Ele_Debuff = {
		ElectrifiedShocks = 382089,
		FlameShock = 188389,
	}
	ids.Ele_PetAbility = {
		CallLightning = {spellID = 157348, talentID = 101849},
		Tempest = {spellID = 157375, talentID = 101849},
		Meteor = {spellID = 117588, talentID = 101850},
	}

--Enhancement
	ids.Enh_Ability = {
	--Shaman Baseline
		AncestralSpirit = {spellID = 2008},
		AstralRecall = {spellID = 556},
		Bloodlust = {spellID = 2825},
		EarthbindTotem = {spellID = 2484},
		FarSight = {spellID = 6196},
		FlameShock = {spellID = 470411},
		FlametongueWeapon = {spellID = 318038},
		GhostWolf = {spellID = 2645},
		HealingSurge = {spellID = 8004},
		Heroism = {spellID = 32182},
		LightningBolt = {spellID = 188196},
		LightningShield = {spellID = 192106},
		PrimalStrike = {spellID = 73899},
		Skyfury = {spellID = 462854},
		WaterWalking = {spellID = 546},
		--Passive
		Reincarnation = {spellID = 20608},
	--Enhancement Baseline
		--Passive
		MasteryEnhancedElements = {spellID = 77223},
	--Shaman
		ChainHeal = {spellID = 1064, talentID = 127861},
		LavaBurst = {spellID = 51505, talentID = 127873},
		AstralShift = {spellID = 108271, talentID = 127893},
		ChainLightning = {spellID = 188443, talentID = 127856},
		EarthShield = {spellID = 974, talentID = 127871},
		WindShear = {spellID = 57994, talentID = 127892},
		PlanesTraveler = {spellID = 381647, talentID = 127888},
		AstralBulwark = {spellID = 377933, talentID = 127887},
		SpiritWolf = {spellID = 260878, talentID = 127854},
		ThunderousPaws = {spellID = 378075, talentID = 127853},
		FrostShock = {spellID = 196840, talentID = 127879},
		WindsofAlAkir = {spellID = 382215, talentID = 127891},
		ElementalOrbit = {spellID = 383010, talentID = 127877},
		FireandIce = {spellID = 382886, talentID = 127880},
		AncestralWolfAffinity = {spellID = 382197, talentID = 127886},
		CapacitorTotem = {spellID = 192058, talentID = 127851},
		SpiritWalk = {spellID = 58875, talentID = 127865},
		GustofWind = {spellID = 192063, talentID = 127864},
		EncasingCold = {spellID = 462762, talentID = 127898},
		ArcticSnowstorm = {spellID = 462764, talentID = 127897},
		BrimmingwithLife = {spellID = 381689, talentID = 127855},
		HealingStreamTotem = {spellID = 5394, talentID = 127863},
		EarthgrabTotem = {spellID = 51485, talentID = 127894},
		StaticCharge = {spellID = 265046, talentID = 127896},
		GuardiansCudgel = {spellID = 381819, talentID = 127895},
		Purge = {spellID = 370, talentID = 127905},
		GreaterPurge = {spellID = 378773, talentID = 127904},
		EarthElemental = {spellID = 198103, talentID = 127858},
		ElementalResistance = {spellID = 462368, talentID = 127876},
		CleanseSpirit = {spellID = 51886, talentID = 127884},
		TremorTotem = {spellID = 8143, talentID = 127868},
		NaturesGuardian = {spellID = 30884, talentID = 127890},
		NaturesFury = {spellID = 381655, talentID = 127902},
		RefreshingWaters = {spellID = 378211, talentID = 127869},
		ElementalWarding = {spellID = 381650, talentID = 127872},
		Hex = {
			Frog = {spellID = 51514, talentID = 127903},
			Raptor = {spellID = 210873, talentID = 127903},
		},
		WindRushTotem = {spellID = 192077, talentID = 127909},
		PrimordialBond = {spellID = 381764, talentID = 127889},
		SpiritwalkersGrace = {spellID = 79206, talentID = 127857},
		AncestralGuidance = {spellID = 108281, talentID = 128116},
		Thunderstorm = {spellID = 51490, talentID = 127878},
		VoodooMastery = {spellID = 204268, talentID = 127875},
		TotemicFocus = {spellID = 382201, talentID = 127906},
		AscendingAir = {spellID = 462791, talentID = 127883},
		JetStream = {spellID = 462817, talentID = 127882},
		EnhancedImbues = {spellID = 462796, talentID = 127881},
		GracefulSpirit = {spellID = 192088, talentID = 127908},
		SpiritwalkersAegis = {spellID = 378077, talentID = 127907},
		LightningLasso = {spellID = 305483, talentID = 127862},
		TotemicProjection = {spellID = 108287, talentID = 127859},
		TotemicSurge = {spellID = 381867, talentID = 127874},
		SeasonedWinds = {spellID = 355630, talentID = 127910},
		ManaSpring = {spellID = 381930, talentID = 127860},
		Thundershock = {spellID = 378779, talentID = 127901},
		TravelingStorms = {spellID = 204403, talentID = 127900},
		PoisonCleansingTotem = {spellID = 383013, talentID = 127885},
		TotemicRecall = {spellID = 108285, talentID = 127870},
		NaturesSwiftness = {spellID = 378081, talentID = 127899},
		StoneBulwarkTotem = {spellID = 108270, talentID = 127911},
		CalloftheElements = {spellID = 383011, talentID = 127867},
		CreationCore = {spellID = 383012, talentID = 127866},
	--Enhancement
		Stormstrike = {spellID = 17364, talentID = 101804},
		WindfuryWeapon = {spellID = 33757, talentID = 101823},
		LavaLash = {spellID = 60103, talentID = 101805},
		ForcefulWinds = {spellID = 262647, talentID = 101834},
		ImprovedMaelstromWeapon = {spellID = 383303, talentID = 101822},
		MoltenAssault = {spellID = 334033, talentID = 101806},
		UnrulyWinds = {spellID = 390288, talentID = 101833},
		TempestStrikes = {spellID = 428071, talentID = 101831},
		ElementalBlast = {spellID = 117014, talentID = 117750},
		RagingMaelstrom = {spellID = 384143, talentID = 101802},
		IceStrikePassive = {spellID = 466467, talentID = 101821},
			IceStrike40 = {spellID = 342240, talentID = 101821},
		IceStrike = {spellID = 470194, talentID = 128271},
		Hailstorm = {spellID = 334195, talentID = 101808},
		FireNova = {spellID = 333974, talentID = 101807},
		DoomWinds = {spellID = 384352, talentID = 101824},
		Flurry = {spellID = 382888, talentID = 101799},
		OverflowingMaelstrom = {spellID = 384149, talentID = 101801},
		Sundering = {spellID = 197214, talentID = 101841},
		SwirlingMaelstrom = {spellID = 384359, talentID = 101820},
		HotHand = {spellID = 201900, talentID = 101809},
		StormsWrath = {spellID = 392352, talentID = 101832},
		CrashLightning = {spellID = 187874, talentID = 101840},
		MoltenThunder = {spellID = 469344, talentID = 128237},
		Stormflurry = {spellID = 344357, talentID = 101819},
		AshenCatalyst = {spellID = 390370, talentID = 101811},
		Stormblast = {spellID = 319930, talentID = 101825},
		VoltaicBlazePassive = {spellID = 470053, talentID = 128270},
			VoltaicBlaze = {spellID = 470057, talentID = 128270},
		ElementalWeapons = {spellID = 384355, talentID = 101826},
		ConvergingStorms = {spellID = 384363, talentID = 101839},
		UnrelentingStorms = {spellID = 470490, talentID = 128272},
		CrashingStorms = {spellID = 334308, talentID = 101818},
		LashingFlames = {spellID = 334046, talentID = 101812},
		PrimordialWave = {spellID = 375982, talentID = 101830},
		FeralSpirit = {spellID = 51533, talentID = 101838},
		DeeplyRootedElements = {spellID = 378270, talentID = 101816},
		Ascendance = {spellID = 114051, talentID = 114291},
			Windstrike = {spellID = 115356, talentID = 114291},
		PrimalMaelstrom = {spellID = 384405, talentID = 101829},
		ElementalAssault = {spellID = 210853, talentID = 101827},
		WitchDoctorsAncestry = {spellID = 384447, talentID = 101837},
		FlowingSpirits = {spellID = 469314, talentID = 128236},
		LegacyoftheFrostWitch = {spellID = 384450, talentID = 101815},
		StaticAccumulation = {spellID = 384411, talentID = 101814},
		SplinteredElements = {spellID = 382042, talentID = 101828},
		ElementalSpirits = {spellID = 262624, talentID = 101836},
		AlphaWolf = {spellID = 198434, talentID = 101835},
		ThorimsInvocation = {spellID = 384444, talentID = 101813},
	--Hero
	--Stormbringer
		TempestPassive = {spellID = 454009, talentID = 117489},
			Tempest = {spellID = 452201, talentID = 117489},
		UnlimitedPower = {spellID = 454391, talentID = 117483},
		Stormcaller = {spellID = 454021, talentID = 117490},
		LightningConduit = {spellID = 467778, talentID = 117460},
		Electroshock = {spellID = 454022, talentID = 128226},
		StormSwell = {spellID = 455088, talentID = 117470},
		Supercharge = {spellID = 455110, talentID = 128225},
		ArcDischarge = {spellID = 455096, talentID = 117482},
		RollingThunder = {spellID = 454026, talentID = 117486},
		VoltaicSurge = {spellID = 454919, talentID = 117467},
		ConductiveEnergy = {spellID = 455123, talentID = 117465},
		NaturesProtection = {spellID = 454027, talentID = 117477},
		SurgingCurrents = {spellID = 454372, talentID = 125617},
		AwakeningStorms = {spellID = 455129, talentID = 117464},
	--Totemic
		SurgingTotem = {spellID = 444995, talentID = 117474},
		TotemicRebound = {spellID = 445025, talentID = 117487},
		AmplificationCore = {spellID = 445029, talentID = 117471},
		Oversurge = {spellID = 445030, talentID = 125823},
		LivelyTotems = {spellID = 445034, talentID = 117479},
		OversizedTotems = {spellID = 445026, talentID = 117456},
		SwiftRecall = {spellID = 445027, talentID = 125825},
		WindBarrier = {spellID = 445031, talentID = 117488},
		Reactivity = {spellID = 445035, talentID = 117469},
		ImbuementMastery = {spellID = 445028, talentID = 117468},
		PulseCapacitor = {spellID = 445032, talentID = 117463},
		SupportiveImbuements = {spellID = 445033, talentID = 125824},
		TotemicCoordination = {spellID = 445036, talentID = 117478},
		Earthsurge = {spellID = 455590, talentID = 125822},
		WhirlingElements = {spellID = 445024, talentID = 117476},
	}
	ids.Enh_Form = {

	}
	ids.Enh_Buff = {
		Ascendance = 114051,
		AshenCatalyst = 390371,
		CrashLightning = 187878,
		ChainCrashLightning = 333964,
		DoomWinds = 384352,
		EarthShield = 974,
		EarthShieldEO = 383648,
		ElementalSpirits = {
			CracklingSurge = 224127,
			IcyEdge = 224126,
			MoltenWeapon = 224125,
		},
		FeralSpirit = 333957;
		FlametongueWeapon = 5400,
		Frostbrand = 196834,
		ForcefulWinds = 262652,
		GatheringStorms = 198300,
		Hailstorm = 334196,
		HotHand = 215785,
		IceStrike = 466469,
		IceStrikeFS = 384357,
		LightningShield = 192106,
		MaelstromWeapon = 344179,
		Skyfury = 462854,
		Stormbringer = 201846,
		Stormkeeper = 320137,
		SurgingTotem = 225409,
		Tempest = 454015,
		VoltaicBlaze = 470058,
		WindfuryWeapon = 5401,
	}
	ids.Enh_Debuff = {
		EarthenSpike = 188089,
		FlameShock = 188389,
		LashingFlames = 334168,
	}
	ids.Enh_PetAbility = {

	}

--Restoration
	ids.Resto_Ability = {
	--Shaman Baseline
		AncestralSpirit = {spellID = 2008},
		AstralRecall = {spellID = 556},
		Bloodlust = {spellID = 2825},
		EarthbindTotem = {spellID = 2484},
		FarSight = {spellID = 6196},
		FlameShock = {spellID = 470411},
		FlametongueWeapon = {spellID = 318038},
		GhostWolf = {spellID = 2645},
		HealingSurge = {spellID = 8004},
		Heroism = {spellID = 32182},
		LightningBolt = {spellID = 188196},
		LightningShield = {spellID = 192106},
		PrimalStrike = {spellID = 73899},
		Skyfury = {spellID = 462854},
		WaterWalking = {spellID = 546},
		--Passive
		Reincarnation = {spellID = 20608},
	--Restoration Baseline
		WaterShield = {spellID = 52127},
		--Passive
		LavaSurge = {spellID = 77756},
		MasteryDeepHealing = {spellID = 77226},
	--Shaman
		ChainHeal = {spellID = 1064, talentID = 127861},
		LavaBurst = {spellID = 51505, talentID = 127873},
		AstralShift = {spellID = 108271, talentID = 127893},
		ChainLightning = {spellID = 188443, talentID = 127856},
		EarthShield = {spellID = 974, talentID = 127871},
		WindShear = {spellID = 57994, talentID = 127892},
		PlanesTraveler = {spellID = 381647, talentID = 127888},
		AstralBulwark = {spellID = 377933, talentID = 127887},
		SpiritWolf = {spellID = 260878, talentID = 127854},
		ThunderousPaws = {spellID = 378075, talentID = 127853},
		FrostShock = {spellID = 196840, talentID = 127879},
		WindsofAlAkir = {spellID = 382215, talentID = 127891},
		ElementalOrbit = {spellID = 383010, talentID = 127877},
		FireandIce = {spellID = 382886, talentID = 127880},
		AncestralWolfAffinity = {spellID = 382197, talentID = 127886},
		CapacitorTotem = {spellID = 192058, talentID = 127851},
		SpiritWalk = {spellID = 58875, talentID = 127865},
		GustofWind = {spellID = 192063, talentID = 127864},
		EncasingCold = {spellID = 462762, talentID = 127898},
		ArcticSnowstorm = {spellID = 462764, talentID = 127897},
		BrimmingwithLife = {spellID = 381689, talentID = 127855},
		HealingStreamTotem = {spellID = 5394, talentID = 127863},
		EarthgrabTotem = {spellID = 51485, talentID = 127894},
		StaticCharge = {spellID = 265046, talentID = 127896},
		GuardiansCudgel = {spellID = 381819, talentID = 127895},
		Purge = {spellID = 370, talentID = 127905},
		GreaterPurge = {spellID = 378773, talentID = 127904},
		EarthElemental = {spellID = 198103, talentID = 127858},
		ElementalResistance = {spellID = 462368, talentID = 127876},
		ImprovedPurifySpirit = {spellID = 383016, talentID = 101964},
		TremorTotem = {spellID = 8143, talentID = 127868},
		NaturesGuardian = {spellID = 30884, talentID = 127890},
		NaturesFury = {spellID = 381655, talentID = 127902},
		RefreshingWaters = {spellID = 378211, talentID = 127869},
		ElementalWarding = {spellID = 381650, talentID = 127872},
		Hex = {
			Frog = {spellID = 51514, talentID = 127903},
			Raptor = {spellID = 210873, talentID = 127903},
		},
		WindRushTotem = {spellID = 192077, talentID = 127909},
		PrimordialBond = {spellID = 381764, talentID = 127889},
		SpiritwalkersGrace = {spellID = 79206, talentID = 127857},
		AncestralGuidance = {spellID = 108281, talentID = 128116},
		Thunderstorm = {spellID = 51490, talentID = 127878},
		VoodooMastery = {spellID = 204268, talentID = 127875},
		TotemicFocus = {spellID = 382201, talentID = 127906},
		AscendingAir = {spellID = 462791, talentID = 127883},
		JetStream = {spellID = 462817, talentID = 127882},
		EnhancedImbues = {spellID = 462796, talentID = 127881},
		GracefulSpirit = {spellID = 192088, talentID = 127908},
		SpiritwalkersAegis = {spellID = 378077, talentID = 127907},
		LightningLasso = {spellID = 305483, talentID = 127862},
		TotemicProjection = {spellID = 108287, talentID = 127859},
		TotemicSurge = {spellID = 381867, talentID = 127874},
		SeasonedWinds = {spellID = 355630, talentID = 127910},
		ManaSpring = {spellID = 381930, talentID = 127860},
		Thundershock = {spellID = 378779, talentID = 127901},
		TravelingStorms = {spellID = 204403, talentID = 127900},
		PoisonCleansingTotem = {spellID = 383013, talentID = 127885},
		TotemicRecall = {spellID = 108285, talentID = 127870},
		NaturesSwiftness = {spellID = 378081, talentID = 127899},
		StoneBulwarkTotem = {spellID = 108270, talentID = 127911},
		CalloftheElements = {spellID = 383011, talentID = 127867},
		CreationCore = {spellID = 383012, talentID = 127866},
	--Restoration
		Riptide = {spellID = 61295, talentID = 101905},
		HealingRain = {spellID = 73920, talentID = 101923},
		HealingStreamTotem2 = {spellID = 5394, talentID = 101900},
		Deluge = {spellID = 200076, talentID = 127672},
		AcidRain = {spellID = 378443, talentID = 101922},
		HealingWave = {spellID = 77472, talentID = 101904},
		TidalWaves = {spellID = 51564, talentID = 101899},
		OverflowingShores = {spellID = 383222, talentID = 114813},
		AncestralVigor = {spellID = 207401, talentID = 127673},
		Resurgence = {spellID = 16196, talentID = 101902},
		WaterTotemMastery = {spellID = 382030, talentID = 101895},
		WhiteWater = {spellID = 462587, talentID = 101920},
		SpiritLinkTotem = {spellID = 98008, talentID = 101913},
		MasteroftheElements = {spellID = 462375, talentID = 101896},
		LivingStream = {spellID = 382482, talentID = 101934},
		CloudburstTotem = {spellID = 157153, talentID = 101933},
		Torrent = {spellID = 200072, talentID = 101932},
		HealingTideTotem = {spellID = 108280, talentID = 101912},
		SpoutingSpirits = {spellID = 462383, talentID = 127678},
		ManaTideTotem = {spellID = 16191, talentID = 101929},
		AncestralReach = {spellID = 382732, talentID = 101911},
		FlowoftheTides = {spellID = 382039, talentID = 101910},
		Undulation = {spellID = 200071, talentID = 101919},
		UnleashLife = {spellID = 73685, talentID = 101918},
		CurrentControl = {spellID = 404015, talentID = 114811},
		TideTurner = {spellID = 404019, talentID = 114810},
		EchooftheElements = {spellID = 333919, talentID = 101928},
		SpiritwalkersTidalTotem = {spellID = 404522, talentID = 114817},
		EarthenWallTotem = {spellID = 198838, talentID = 101931},
		AncestralProtectionTotem = {spellID = 207399, talentID = 101930},
		EarthlivingWeapon = {spellID = 382021, talentID = 101935},
		PrimalTideCore = {spellID = 382045, talentID = 127682},
		Ascendance = {spellID = 114052, talentID = 101942},
		Tidebringer = {spellID = 236501, talentID = 101924},
		EarthenHarmony = {spellID = 382020, talentID = 127674},
		Tidewaters = {spellID = 462424, talentID = 127680},
		Undercurrent = {spellID = 382194, talentID = 101939},
		FirstAscendant = {spellID = 462440, talentID = 127679},
		Preeminence = {spellID = 462443, talentID = 127675},
		WavespeakersBlessing = {spellID = 381946, talentID = 127671},
		CoalescingWater = {spellID = 470076, talentID = 128332},
		AncestralAwakening = {spellID = 382309, talentID = 101927},
		ReactiveWarding = {spellID = 462454, talentID = 127681},
		ImprovedEarthlivingWeapon = {spellID = 382315, talentID = 101936},
		PrimordialWave = {spellID = 428332, talentID = 101917},
		DownpourPassive = {spellID = 462486, talentID = 101842},
			Downpour = {spellID = 0, talentID = 101842},
		HighTide = {spellID = 157154, talentID = 101925},
		DeeplyRootedElements = {spellID = 378270, talentID = 101937},
		Wellspring = {spellID = 197995, talentID = 127676},
	}
	ids.Resto_Form = {

	}
	ids.Resto_Buff = {
		EarthlivingWeapon = 6498,
		EarthShield = 974,
		EarthShieldEO = 383648,
		LavaSurge = 77762,
		LightningShield = 192106,
		Skyfury = 462854,
		WaterShield = 52127,
 	}
	ids.Resto_Debuff = {
		FlameShock = 188389,
	}
	ids.Resto_PetAbility = {

	}