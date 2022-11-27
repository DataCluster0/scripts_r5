untyped

global function ClPhantomFighter_Init

bool initialized = false

const GUNSHIP_MODEL = $"mdl/vehicle/straton_imc_gunship_01.rmdl"


void function ClPhantomFighter_Init()
{
	#if CLIENT
	if ( initialized )
		return
	initialized = true

	ModelFX_BeginData( "friend_lights", GUNSHIP_MODEL, "friend", true )
		//----------------------
		// ACL Lights - Friend
		//----------------------
		ModelFX_AddTagSpawnFX( "Light_Red0",		$"acl_light_blue" )
		ModelFX_AddTagSpawnFX( "Light_Red1",		$"acl_light_blue" )
		ModelFX_AddTagSpawnFX( "Light_Red2",		$"acl_light_blue" )
		ModelFX_AddTagSpawnFX( "Light_Green0",		$"acl_light_blue" )
		ModelFX_AddTagSpawnFX( "Light_Green1",		$"acl_light_blue" )
		ModelFX_AddTagSpawnFX( "Light_Green2",		$"acl_light_blue" )
		ModelFX_AddTagSpawnFX( "light_white",		$"acl_light_blue" )
	ModelFX_EndData()


	ModelFX_BeginData( "foe_lights", GUNSHIP_MODEL, "foe", true )
		//----------------------
		// ACL Lights - Foe
		//----------------------
		ModelFX_AddTagSpawnFX( "Light_Red0",		$"acl_light_red" )
		ModelFX_AddTagSpawnFX( "Light_Red1",		$"acl_light_red" )
		ModelFX_AddTagSpawnFX( "Light_Red2",		$"acl_light_red" )
		ModelFX_AddTagSpawnFX( "Light_Green0",		$"acl_light_red" )
		ModelFX_AddTagSpawnFX( "Light_Green1",		$"acl_light_red" )
		ModelFX_AddTagSpawnFX( "Light_Green2",		$"acl_light_red" )
		ModelFX_AddTagSpawnFX( "light_white",		$"acl_light_red" )
	ModelFX_EndData()


	ModelFX_BeginData( "thrusters", GUNSHIP_MODEL, "all", true )
		//----------------------
		// Thrusters
		//----------------------
		ModelFX_AddTagSpawnFX( "L_exhaust_rear_1", $"P_veh_dropship_jet_full" )
		ModelFX_AddTagSpawnFX( "L_exhaust_front_1", $"P_veh_dropship_jet_full" )

		ModelFX_AddTagSpawnFX( "R_exhaust_rear_1", $"P_veh_dropship_jet_full" )
		ModelFX_AddTagSpawnFX( "R_exhaust_front_1", $"P_veh_dropship_jet_full" )

		ModelFX_AddTagSpawnFX( "R_WING_TIP",		$"veh_contrails_01" )
		ModelFX_AddTagSpawnFX( "L_WING_TIP",		$"veh_contrails_01" )

		//----------------------
		// ACL Lights - All
		//----------------------
		ModelFX_AddTagSpawnFX( "Light_Red0",		$"acl_light_red" )
		ModelFX_AddTagSpawnFX( "Light_Red1",		$"acl_light_red" )
		ModelFX_AddTagSpawnFX( "Light_Red2",		$"acl_light_red" )
		ModelFX_AddTagSpawnFX( "Light_Green0",		$"acl_light_green" )
		ModelFX_AddTagSpawnFX( "Light_Green1",		$"acl_light_green" )
		ModelFX_AddTagSpawnFX( "Light_Green2",		$"acl_light_green" )
		ModelFX_AddTagSpawnFX( "light_white",		$"acl_light_blue" )


	ModelFX_EndData()


	ModelFX_BeginData( "gunshipDamage", GUNSHIP_MODEL, "all", true )
		//----------------------
		// Health effects
		//----------------------
		//ModelFX_AddTagHealthFX( 0.80, "L_exhaust_rear_1", $"P_veh_crow_exp_sml", true )
		ModelFX_AddTagHealthFX( 0.80, "L_exhaust_rear_1", $"xo_health_smoke_white", false )

		//ModelFX_AddTagHealthFX( 0.75, "R_exhaust_rear_1", $"P_veh_crow_exp_sml", true )
		ModelFX_AddTagHealthFX( 0.75, "R_exhaust_rear_1", $"xo_health_smoke_white", false )

		//ModelFX_AddTagHealthFX( 0.50, "L_exhaust_rear_1", $"P_veh_crow_exp_sml", true )
		ModelFX_AddTagHealthFX( 0.50, "L_exhaust_rear_1", $"veh_chunk_trail", false )

		//ModelFX_AddTagHealthFX( 0.45, "R_exhaust_rear_1", $"P_veh_crow_exp_sml", true )
		ModelFX_AddTagHealthFX( 0.45, "R_exhaust_rear_1", $"veh_chunk_trail", false )

	ModelFX_EndData()


	// ModelFX_BeginData( "gunshipExplode", GUNSHIP_MODEL, "all", true )
	// 	//----------------------
	// 	// D`eath effects
	// 	//----------------------
	// 	//``ModelFX_AddTagBreakFX( null, "ORIGIN", "P_veh_exp_hornet", "Goblin_Dropship_Explode" )
	// ModelFX_EndData()
	#endif
}

