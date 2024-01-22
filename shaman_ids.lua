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

--Elemental
	ids.Ele_Ability = {
	--Shaman Baseline
		AncestralSpirit = {spellID = 2008},
		AstralRecall = {spellID = 556},
		Bloodlust = {spellID = 2825},
		EarthbindTotem = {spellID = 2484},
		FarSight = {spellID = 6196},
		FlameShock = {spellID = 188389},
		FlametongueWeapon = {spellID = 318038},
		GhostWolf = {spellID = 2645},
		HealingSurge = {spellID = 8004},
		Heroism = {spellID = 32182},
		LightningBolt = {spellID = 188196},
		LightningShield = {spellID = 192106},
		PrimalStrike = {spellID = 73899},
		Reincarnation = {spellID = 20608},
		WaterWalking = {spellID = 546},
	--Elemental Baseline
		MasteryElementalOverload = {spellID = 168534},
	--Shaman
		AncestralDefense = {spellID = 382947, talentID = 114819},
		AncestralGuidance = {spellID = 108281, talentID = 102000},
		AncestralWolfAffinity = {spellID = 382197, talentID = 101946},
		AstralBulwark = {spellID = 377933, talentID = 101943},
		AstralShift = {spellID = 108271, talentID = 101945},
		BrimmingwithLife = {spellID = 381689, talentID = 101979},
		CalloftheElements = {spellID = 383011, talentID = 101986},
		CapacitorTotem = {spellID = 192058, talentID = 101961},
		ChainHeal = {spellID = 1064, talentID = 101951},
		ChainLightning = {spellID = 188443, talentID = 101949},
		CleanseSpirit = {spellID = 51886, talentID = 101966},
		CreationCore = {spellID = 383012, talentID = 101985},
		EarthElemental = {spellID = 198103, talentID = 101952},
		EarthgrabTotem = {spellID = 51485, talentID = 101975},
		EarthShield = {spellID = 974, talentID = 102004},
		ElementalOrbit = {spellID = 383010, talentID = 102003},
		ElementalWarding = {spellID = 381650, talentID = 101978},
		Enfeeblement = {spellID = 378079, talentID = 101970},
		FireandIce = {spellID = 382886, talentID = 101956},
		Flurry = {spellID = 382888, talentID = 101947},
		FrostShock = {spellID = 196840, talentID = 101965},
		GowiththeFlow = {spellID = 381678, talentID = 101984},
		GracefulSpirit = {spellID = 192088, talentID = 101954},
		GreaterPurge = {spellID = 378773, talentID = 101967},
		GuardiansCudgel = {spellID = 381819, talentID = 101959},
		GustofWind = {spellID = 192063, talentID = 101982},
		HealingStreamTotem = {spellID = 5394, talentID = 101998},
		Hex = {
			Frog = {spellID = 51514, talentID = 101972},
			Raptor = {spellID = 210873, talentID = 101972},
		},
		LavaBurst = {spellID = 51505, talentID = 101950},
		LightningLasso = {spellID = 305483, talentID = 101993},
		MaelstromWeapon = {spellID = 187880, talentID = 101948},
		ManaSpring = {spellID = 381930, talentID = 102001},
		NaturesFury = {spellID = 381655, talentID = 101980},
		NaturesGuardian = {spellID = 30884, talentID = 101974},
		NaturesSwiftness = {spellID = 378081, talentID = 101997},
		PlanesTraveler = {spellID = 381647, talentID = 101944},
		PoisonCleansingTotem = {spellID = 383013, talentID = 101989},
		Purge = {spellID = 370, talentID = 101968},
		SpiritWalk = {spellID = 58875, talentID = 101983},
		SpiritWolf = {spellID = 260878, talentID = 101963},
		SpiritwalkersAegis = {spellID = 378077, talentID = 101953},
		SpiritwalkersGrace = {spellID = 79206, talentID = 101955},
		StaticCharge = {spellID = 265046, talentID = 101960},
		StoneskinTotem = {spellID = 383017, talentID = 101992},
		SurgingShields = {spellID = 382033, talentID = 101988},
		SwirlingCurrents = {spellID = 378094, talentID = 101999},
		ThunderousPaws = {spellID = 378075, talentID = 101962},
		Thundershock = {spellID = 378779, talentID = 101994},
		Thunderstorm = {spellID = 51490, talentID = 101995},
		TotemicFocus = {spellID = 382201, talentID = 101990},
		TotemicProjection = {spellID = 108287, talentID = 101973},
		TotemicRecall = {spellID = 108285, talentID = 101987},
		TotemicSurge = {spellID = 381867, talentID = 102002},
		TranquilAirTotem = {spellID = 383019, talentID = 101991},
		TremorTotem = {spellID = 8143, talentID = 101958},
		VoodooMastery = {spellID = 204268, talentID = 101971},
		WindRushTotem = {spellID = 192077, talentID = 101976},
		WindShear = {spellID = 57994, talentID = 101957},
		WindsofAlAkir = {spellID = 382215, talentID = 101981},
	--Elemental
		Aftershock = {spellID = 273221, talentID = 101874},
		Ascendance = {spellID = 114050, talentID = 101877},
			LavaBeam = {spellID = 114074, talentID = 101877},
		CallofFire = {spellID = 378255, talentID = 101888},
		CallofThunder = {spellID = 378241, talentID = 101858},
		DeeplyRootedElements = {spellID = 378270, talentID = 101878},
		EarthShock = {spellID = 8042, talentID = 101854},
		Earthquake = {spellID = 61882, talentID = 101855},
		EchoChamber = {spellID = 382032, talentID = 101890},
		EchooftheElements = {spellID = 333919, talentID = 101872},
		EchoesofGreatSundering = {spellID = 384087, talentID = 101862},
		ElectrifiedShocks = {spellID = 382086, talentID = 101868},
		ElementalBlast = {spellID = 117014, talentID = 101866},
		ElementalEquilibrium = {spellID = 378271, talentID = 101865},
		ElementalFury = {spellID = 60188, talentID = 101853},
		EyeoftheStorm = {spellID = 381708, talentID = 101867},
		FireElemental = {spellID = 198067, talentID = 101850},
		FlamesoftheCauldron = {spellID = 378266, talentID = 101887},
		FlashofLightning = {spellID = 381936, talentID = 101861},
		FlowofPower = {spellID = 385923, talentID = 101871},
		FluxMelting = {spellID = 381776, talentID = 101869},
		FocusedInsight = {spellID = 381666, talentID = 101851},
		FurtherBeyond = {spellID = 381787, talentID = 101875},
		Icefury = {spellID = 210714, talentID = 101870},
		ImprovedFlametongueWeapon = {spellID = 382027, talentID = 101886},
		Inundate = {spellID = 378776, talentID = 101856},
		LavaSurge = {spellID = 77756, talentID = 101846},
		LightningRod = {spellID = 210689, talentID = 101864},
		LiquidMagmaTotem = {spellID = 192222, talentID = 101884},
		MagmaChamber = {spellID = 381932, talentID = 101883},
		MasteroftheElements = {spellID = 16166, talentID = 101879},
		MountainsWillFall = {spellID = 381726, talentID = 101889},
		OathoftheFarSeer = {spellID = 381785, talentID = 101876},
		PoweroftheMaelstrom = {spellID = 191861, talentID = 101892},
		PrimalElementalist = {spellID = 117013, talentID = 101885},
		PrimordialBond = {spellID = 381764, talentID = 101847},
		PrimordialFury = {spellID = 378193, talentID = 101852},
		PrimordialSurge = {spellID = 386474, talentID = 101845},
		PrimordialWave = {spellID = 375982, talentID = 101891},
		RefreshingWaters = {spellID = 378211, talentID = 101848},
		RollingMagma = {spellID = 386443, talentID = 101843},
		SearingFlames = {spellID = 381782, talentID = 101880},
		SkybreakersFieryDemise = {spellID = 378310, talentID = 101881},
		SplinteredElements = {spellID = 382042, talentID = 101844},
		StormElemental = {spellID = 192249, talentID = 101849},
		Stormkeeper = {spellID = 191634, talentID = 101860},
		Stormkeeper2 = {spellID = 191634, talentID = 101863},
		SurgeofPower = {spellID = 262303, talentID = 101873},
		SwellingMaelstrom = {spellID = 381707, talentID = 101893},
		TumultuousFissures = {spellID = 381743, talentID = 101857},
		UnrelentingCalamity = {spellID = 382685, talentID = 101859},
		WindspeakersLava = {spellID = 378268, talentID = 101882},
	}
	ids.Ele_Form = {
		WindGust = 263806,
	}
	ids.Ele_Buff = {
		Ascendance = 114050,
		EarthShield = 974,
		EchoingShock = 320125,
		ElementalBlast = {
			CriticalStrike = 118522,
			Haste = 173183,
			Mastery = 173184
		},
		EchoesofGreatSundering = 384088,
		FluxMelting = 381777,
		ImprovedFlametongueWeapon = 382028,
		Icefury = 210714,
		LavaSurge = 77762,
		LightningShield = 192106,
		MasteroftheElements = 260734,
		PoweroftheMaelstrom = 191877,
		PrimordialWave = 375986,
		Stormkeeper = 191634,
		SurgeofPower = 285514,
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
		FlameShock = {spellID = 188389},
		FlametongueWeapon = {spellID = 318038},
		GhostWolf = {spellID = 2645},
		HealingSurge = {spellID = 8004},
		Heroism = {spellID = 32182},
		LightningBolt = {spellID = 188196},
		LightningShield = {spellID = 192106},
		PrimalStrike = {spellID = 73899},
		Reincarnation = {spellID = 20608},
		WaterWalking = {spellID = 546},
	--Enhancement Baseline
		MasteryEnhancedElements = {spellID = 77223},
	--Shaman
		AncestralDefense = {spellID = 382947, talentID = 114819},
		AncestralGuidance = {spellID = 108281, talentID = 102000},
		AncestralWolfAffinity = {spellID = 382197, talentID = 101946},
		AstralBulwark = {spellID = 377933, talentID = 101943},
		AstralShift = {spellID = 108271, talentID = 101945},
		BrimmingwithLife = {spellID = 381689, talentID = 101979},
		CalloftheElements = {spellID = 383011, talentID = 101986},
		CapacitorTotem = {spellID = 192058, talentID = 101961},
		ChainHeal = {spellID = 1064, talentID = 101951},
		ChainLightning = {spellID = 188443, talentID = 101949},
		CleanseSpirit = {spellID = 51886, talentID = 101966},
		CreationCore = {spellID = 383012, talentID = 101985},
		EarthElemental = {spellID = 198103, talentID = 101952},
		EarthgrabTotem = {spellID = 51485, talentID = 101975},
		EarthShield = {spellID = 974, talentID = 102004},
		ElementalOrbit = {spellID = 383010, talentID = 102003},
		ElementalWarding = {spellID = 381650, talentID = 101978},
		Enfeeblement = {spellID = 378079, talentID = 101970},
		FireandIce = {spellID = 382886, talentID = 101956},
		Flurry = {spellID = 382888, talentID = 101947},
		FrostShock = {spellID = 196840, talentID = 101965},
		GowiththeFlow = {spellID = 381678, talentID = 101984},
		GracefulSpirit = {spellID = 192088, talentID = 101954},
		GreaterPurge = {spellID = 378773, talentID = 101967},
		GuardiansCudgel = {spellID = 381819, talentID = 101959},
		GustofWind = {spellID = 192063, talentID = 101982},
		HealingStreamTotem = {spellID = 5394, talentID = 101998},
		Hex = {
			Frog = {spellID = 51514, talentID = 101972},
			Raptor = {spellID = 210873, talentID = 101972},
		},
		LavaBurst = {spellID = 51505, talentID = 101950},
		LightningLasso = {spellID = 305483, talentID = 101993},
		MaelstromWeapon = {spellID = 187880, talentID = 101948},
		ManaSpring = {spellID = 381930, talentID = 102001},
		NaturesFury = {spellID = 381655, talentID = 101980},
		NaturesGuardian = {spellID = 30884, talentID = 101974},
		NaturesSwiftness = {spellID = 378081, talentID = 101997},
		PlanesTraveler = {spellID = 381647, talentID = 101944},
		PoisonCleansingTotem = {spellID = 383013, talentID = 101989},
		Purge = {spellID = 370, talentID = 101968},
		SpiritWalk = {spellID = 58875, talentID = 101983},
		SpiritWolf = {spellID = 260878, talentID = 101963},
		SpiritwalkersAegis = {spellID = 378077, talentID = 101953},
		SpiritwalkersGrace = {spellID = 79206, talentID = 101955},
		StaticCharge = {spellID = 265046, talentID = 101960},
		StoneskinTotem = {spellID = 383017, talentID = 101992},
		SurgingShields = {spellID = 382033, talentID = 101988},
		SwirlingCurrents = {spellID = 378094, talentID = 101999},
		ThunderousPaws = {spellID = 378075, talentID = 101962},
		Thundershock = {spellID = 378779, talentID = 101994},
		Thunderstorm = {spellID = 51490, talentID = 101995},
		TotemicFocus = {spellID = 382201, talentID = 101990},
		TotemicProjection = {spellID = 108287, talentID = 101973},
		TotemicRecall = {spellID = 108285, talentID = 101987},
		TotemicSurge = {spellID = 381867, talentID = 102002},
		TranquilAirTotem = {spellID = 383019, talentID = 101991},
		TremorTotem = {spellID = 8143, talentID = 101958},
		VoodooMastery = {spellID = 204268, talentID = 101971},
		WindRushTotem = {spellID = 192077, talentID = 101976},
		WindShear = {spellID = 57994, talentID = 101957},
		WindsofAlAkir = {spellID = 382215, talentID = 101981},
	--Enhancement	
		AlphaWolf = {spellID = 198434, talentID = 101835},
		Ascendance = {spellID = 114051, talentID = 114291},
			Windstrike = {spellID = 115356, talentID = 114291},
		AshenCatalyst = {spellID = 390370, talentID = 101811},
		ConvergingStorms = {spellID = 384363, talentID = 101839},
		CrashLightning = {spellID = 187874, talentID = 101840},
		CrashingStorms = {spellID = 334308, talentID = 101818},
		DeeplyRootedElements = {spellID = 378270, talentID = 101816},
		DoomWinds = {spellID = 384352, talentID = 101824},
		ElementalAssault = {spellID = 210853, talentID = 101827},
		ElementalBlast = {spellID = 117014, talentID = 117750},
		ElementalSpirits = {spellID = 262624, talentID = 101836},
		ElementalWeapons = {spellID = 384355, talentID = 101826},
		FeralLunge = {spellID = 196884, talentID = 101810},
		FeralSpirit = {spellID = 51533, talentID = 101838},
		FireNova = {spellID = 333974, talentID = 101807},
		FocusedInsight = {spellID = 381666, talentID = 101799},
		ForcefulWinds = {spellID = 262647, talentID = 101834},
		Hailstorm = {spellID = 334195, talentID = 101808},
		HotHand = {spellID = 201900, talentID = 101809},
		IceStrike = {spellID = 342240, talentID = 101821},
		ImprovedMaelstromWeapon = {spellID = 383303, talentID = 101822},
		LashingFlames = {spellID = 334046, talentID = 101812},
		LavaLash = {spellID = 60103, talentID = 101805},
		LegacyoftheFrostWitch = {spellID = 384450, talentID = 101815},
		MoltenAssault = {spellID = 334033, talentID = 101806},
		OverflowingMaelstrom = {spellID = 384149, talentID = 101801},
		PrimalMaelstrom = {spellID = 384405, talentID = 101829},
		PrimordialWave = {spellID = 375982, talentID = 101830},
		RagingMaelstrom = {spellID = 384143, talentID = 101802},
		RefreshingWaters = {spellID = 393905, talentID = 101800},
		SplinteredElements = {spellID = 382042, talentID = 101828},
		StaticAccumulation = {spellID = 384411, talentID = 101814},
		StormsWrath = {spellID = 392352, talentID = 101832},
		Stormblast = {spellID = 319930, talentID = 101825},
		Stormflurry = {spellID = 344357, talentID = 101819},
		Stormstrike = {spellID = 17364, talentID = 101804},
		Sundering = {spellID = 197214, talentID = 101841},
		SwirlingMaelstrom = {spellID = 384359, talentID = 101820},
		TempestStrikes = {spellID = 428071, talentID = 101831},
		ThorimsInvocation = {spellID = 384444, talentID = 101813},
		UnrulyWinds = {spellID = 390288, talentID = 101833},
		WindfuryTotem = {spellID = 8512, talentID = 101803},
		WindfuryWeapon = {spellID = 33757, talentID = 101823},
		WitchDoctorsAncestry = {spellID = 384447, talentID = 101837},
	}
	ids.Enh_Form = {
		WindfuryTotem = 327942,
	}
	ids.Enh_Buff = {
		Ascendance = 114051,
		AshenCatalyst = 390371,
		CrashLightning = 187878,
		ChainCrashLightning = 333964,
		DoomWinds = 384352,
		EarthShield = 974,
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
		IceStrike = 384357,
		LightningShield = 192106,
		MaelstromWeapon = 344179,
		Stormbringer = 201846,
		Stormkeeper = 320137,
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
		FlameShock = {spellID = 188389},
		FlametongueWeapon = {spellID = 318038},
		GhostWolf = {spellID = 2645},
		HealingSurge = {spellID = 8004},
		Heroism = {spellID = 32182},
		LightningBolt = {spellID = 188196},
		LightningShield = {spellID = 192106},
		PrimalStrike = {spellID = 73899},
		Reincarnation = {spellID = 20608},
		WaterWalking = {spellID = 546},
	--Restoration Baseline
		MasteryDeepHealing = {spellID = 77226},
	--Shaman
		AncestralDefense = {spellID = 382947, talentID = 114819},
		AncestralGuidance = {spellID = 108281, talentID = 102000},
		AncestralWolfAffinity = {spellID = 382197, talentID = 101946},
		AstralBulwark = {spellID = 377933, talentID = 101943},
		AstralShift = {spellID = 108271, talentID = 101945},
		BrimmingwithLife = {spellID = 381689, talentID = 101979},
		CalloftheElements = {spellID = 383011, talentID = 101986},
		CapacitorTotem = {spellID = 192058, talentID = 101961},
		ChainHeal = {spellID = 1064, talentID = 101951},
		ChainLightning = {spellID = 188443, talentID = 101949},
		CreationCore = {spellID = 383012, talentID = 101985},
		EarthElemental = {spellID = 198103, talentID = 101952},
		EarthgrabTotem = {spellID = 51485, talentID = 101975},
		EarthShield = {spellID = 974, talentID = 102004},
		ElementalOrbit = {spellID = 383010, talentID = 102003},
		ElementalWarding = {spellID = 381650, talentID = 101978},
		Enfeeblement = {spellID = 378079, talentID = 101970},
		FireandIce = {spellID = 382886, talentID = 101956},
		Flurry = {spellID = 382888, talentID = 101947},
		FrostShock = {spellID = 196840, talentID = 101965},
		GowiththeFlow = {spellID = 381678, talentID = 101984},
		GracefulSpirit = {spellID = 192088, talentID = 101954},
		GreaterPurge = {spellID = 378773, talentID = 101967},
		GuardiansCudgel = {spellID = 381819, talentID = 101959},
		GustofWind = {spellID = 192063, talentID = 101982},
		HealingStreamTotem = {spellID = 5394, talentID = 101998},
		Hex = {
			Frog = {spellID = 51514, talentID = 101972},
			Raptor = {spellID = 210873, talentID = 101972},
		},
		ImprovedPurifySpirit = {spellID = 383016, talentID = 101964},
		LavaBurst = {spellID = 51505, talentID = 101950},
		LightningLasso = {spellID = 305483, talentID = 101993},
		MaelstromWeapon = {spellID = 187880, talentID = 101948},
		ManaSpring = {spellID = 381930, talentID = 102001},
		NaturesFury = {spellID = 381655, talentID = 101980},
		NaturesGuardian = {spellID = 30884, talentID = 101974},
		NaturesSwiftness = {spellID = 378081, talentID = 101997},
		PlanesTraveler = {spellID = 381647, talentID = 101944},
		PoisonCleansingTotem = {spellID = 383013, talentID = 101989},
		Purge = {spellID = 370, talentID = 101968},
		SpiritWalk = {spellID = 58875, talentID = 101983},
		SpiritWolf = {spellID = 260878, talentID = 101963},
		SpiritwalkersAegis = {spellID = 378077, talentID = 101953},
		SpiritwalkersGrace = {spellID = 79206, talentID = 101955},
		StaticCharge = {spellID = 265046, talentID = 101960},
		StoneskinTotem = {spellID = 383017, talentID = 101992},
		SurgingShields = {spellID = 382033, talentID = 101988},
		SwirlingCurrents = {spellID = 378094, talentID = 101999},
		ThunderousPaws = {spellID = 378075, talentID = 101962},
		Thundershock = {spellID = 378779, talentID = 101994},
		Thunderstorm = {spellID = 51490, talentID = 101995},
		TotemicFocus = {spellID = 382201, talentID = 101990},
		TotemicProjection = {spellID = 108287, talentID = 101973},
		TotemicRecall = {spellID = 108285, talentID = 101987},
		TotemicSurge = {spellID = 381867, talentID = 102002},
		TranquilAirTotem = {spellID = 383019, talentID = 101991},
		TremorTotem = {spellID = 8143, talentID = 101958},
		VoodooMastery = {spellID = 204268, talentID = 101971},
		WindRushTotem = {spellID = 192077, talentID = 101976},
		WindShear = {spellID = 57994, talentID = 101957},
		WindsofAlAkir = {spellID = 382215, talentID = 101981},
	--Restoration	
		AcidRain = {spellID = 378443, talentID = 101922},
		AncestralAwakening = {spellID = 382309, talentID = 101927},
		AncestralProtectionTotem = {spellID = 207399, talentID = 101930},
		AncestralReach = {spellID = 382732, talentID = 101911},
		AncestralVigor = {spellID = 207401, talentID = 101909},
		AncestralVision = {spellID = 212048},
		Ascendance = {spellID = 114052, talentID = 101942},
		CloudburstTotem = {spellID = 157153, talentID = 101933},
		ContinuousWaves = {spellID = 382046, talentID = 101915},
		CurrentControl = {spellID = 404015, talentID = 114811},
		DeeplyRootedElements = {spellID = 378270, talentID = 101938},
		Deluge = {spellID = 200076, talentID = 101906},
		Downpour = {spellID = 207778, talentID = 101842},
		EarthenWallTotem = {spellID = 198838, talentID = 101931},
		EarthlivingWeapon = {spellID = 382021, talentID = 101935},
		EarthenHarmony = {spellID = 382020, talentID = 101941},
		EchooftheElements = {spellID = 333919, talentID = 101928},
		FlashFlood = {spellID = 280614, talentID = 101898},
		FlowoftheTides = {spellID = 382039, talentID = 101910},
		HealingRain = {spellID = 73920, talentID = 101923},
		HealingStreamTotem2 = {spellID = 5394, talentID = 101900},
		HealingTideTotem = {spellID = 108280, talentID = 101912},
		HealingWave = {spellID = 77472, talentID = 101904},
		HighTide = {spellID = 157154, talentID = 101925},
		ImprovedEarthlivingWeapon = {spellID = 382315, talentID = 101936},
		ImprovedPrimordialWave = {spellID = 382191, talentID = 101916},
		LavaSurge = {spellID = 77756, talentID = 101894},
		LivingStream = {spellID = 382482, talentID = 101934},
		ManaTideTotem = {spellID = 16191, talentID = 101929},
		MasteroftheElements = {spellID = 16166, talentID = 101896},
		OverflowingShores = {spellID = 383222, talentID = 114813},
		PrimalTideCore = {spellID = 382045, talentID = 101926},
		PrimordialWave = {spellID = 428332, talentID = 101917},
		PurifySpirit = {spellID = 77130},
		RefreshingWaters = {spellID = 378211, talentID = 101897},
		ResonantWaters = {spellID = 404539, talentID = 114818},
		Resurgence = {spellID = 16196, talentID = 101902},
		Riptide = {spellID = 61295, talentID = 101905},
		SpiritLinkTotem = {spellID = 98008, talentID = 101913},
		SpiritwalkersTidalTotem = {spellID = 404522, talentID = 114817},
		Stormkeeper = {spellID = 383009, talentID = 101901},
		TidalWaves = {spellID = 51564, talentID = 101899},
		TideTurner = {spellID = 404019, talentID = 114810},
		Tidebringer = {spellID = 236501, talentID = 101924},
		Torrent = {spellID = 200072, talentID = 101932},
		TumblingWaves = {spellID = 382040, talentID = 101914},
		Undercurrent = {spellID = 382194, talentID = 101939},
		Undulation = {spellID = 200071, talentID = 101919},
		UnleashLife = {spellID = 73685, talentID = 101918},
		WaterShield = {spellID = 52127},
		WaterTotemMastery = {spellID = 382030, talentID = 101895},
		WavespeakersBlessing = {spellID = 381946, talentID = 101920},
		Wellspring = {spellID = 197995, talentID = 101937},
	}
	ids.Resto_Form = {

	}
	ids.Resto_Buff = {
		EarthlivingWeapon = 6498,
		EarthShield = 974,
		LavaSurge = 77762,
		LightningShield = 192106,
		WaterShield = 52127,
 	}
	ids.Resto_Debuff = {
		FlameShock = 188389,
	}
	ids.Resto_PetAbility = {

	}