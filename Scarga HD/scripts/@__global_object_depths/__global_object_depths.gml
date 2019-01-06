// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_tittle_scarga
global.__objectDepths[1] = -10000000; // obj_control
global.__objectDepths[2] = 0; // obj_lightsource
global.__objectDepths[3] = 0; // obj_blatt
global.__objectDepths[4] = 1; // obj_blatt_bullet
global.__objectDepths[5] = 0; // obj_dragon_dash
global.__objectDepths[6] = 0; // par_jumpthing
global.__objectDepths[7] = 0; // par_solid
global.__objectDepths[8] = 0; // par_scarga_waepon
global.__objectDepths[9] = 0; // par_enemie
global.__objectDepths[10] = 0; // obj_collision_rectangle_128x128
global.__objectDepths[11] = 0; // obj_collision_rectangle_128x64
global.__objectDepths[12] = 0; // obj_collision_rectangle_64x64
global.__objectDepths[13] = 0; // obj_collision_rectangle_64x32
global.__objectDepths[14] = 0; // obj_collision_rectangle_32x32
global.__objectDepths[15] = 0; // obj_collision_rectangle_32x16
global.__objectDepths[16] = 0; // obj_collision_rectangle_16x16
global.__objectDepths[17] = 0; // obj_collision_ramp_128x64_right
global.__objectDepths[18] = 0; // obj_collision_ramp_128x64_left
global.__objectDepths[19] = 0; // obj_collision_ramp_64x64_right
global.__objectDepths[20] = 0; // obj_collision_ramp_64x64_left
global.__objectDepths[21] = 0; // obj_collision_ramp_32x32_right
global.__objectDepths[22] = 0; // obj_collision_ramp_32x32_left
global.__objectDepths[23] = 0; // obj_collision_ramp_32x16_right
global.__objectDepths[24] = 0; // obj_collision_ramp_32x16_left
global.__objectDepths[25] = 0; // obj_collision_ramp_16x16_right
global.__objectDepths[26] = 0; // obj_collision_ramp_16x16_left
global.__objectDepths[27] = 0; // obj_collision_ramp_top_128x64_right
global.__objectDepths[28] = 0; // obj_collision_ramp_top_128x64_left
global.__objectDepths[29] = 0; // obj_collision_ramp_top_64x64_right
global.__objectDepths[30] = 0; // obj_collision_ramp_top_64x64_left
global.__objectDepths[31] = 0; // obj_collision_ramp_top_16x16_right
global.__objectDepths[32] = 0; // obj_collision_ramp_top_16x16_left
global.__objectDepths[33] = 0; // obj_semi_collision_64x16
global.__objectDepths[34] = 0; // obj_semi_collision_48x16
global.__objectDepths[35] = 0; // obj_semi_collision_32x16
global.__objectDepths[36] = 0; // obj_semi_collision_16x16
global.__objectDepths[37] = 0; // obj_fx_dust
global.__objectDepths[38] = 0; // obj_fx_wall_dust
global.__objectDepths[39] = 0; // obj_fx_blatt_shoot
global.__objectDepths[40] = 0; // obj_fx_blatt_bullet_destroy
global.__objectDepths[41] = -1; // obj_fx_enemie_destroy
global.__objectDepths[42] = 2; // obj_fx
global.__objectDepths[43] = 0; // obj_lantern_green
global.__objectDepths[44] = 0; // obj_dangerous_trash
global.__objectDepths[45] = 100000; // obj_lantern_wall_pink
global.__objectDepths[46] = -1; // obj_platform_green
global.__objectDepths[47] = 0; // obj_platform_band_left
global.__objectDepths[48] = 0; // obj_platform_band_right
global.__objectDepths[49] = 0; // obj_wavor
global.__objectDepths[50] = 1; // obj_wavor_bullet
global.__objectDepths[51] = 1; // obj_wavor_small_bullet
global.__objectDepths[52] = 1; // obj_wavor_electrowave
global.__objectDepths[53] = 0; // obj_policer
global.__objectDepths[54] = 10; // obj_om_erend
global.__objectDepths[55] = 8; // obj_om_erend_left_arm
global.__objectDepths[56] = 8; // obj_om_erend_right_arm
global.__objectDepths[57] = 0; // obj_om_erend_electro_line
global.__objectDepths[58] = 1; // obj_om_erend_electrowave


global.__objectNames[0] = "obj_tittle_scarga";
global.__objectNames[1] = "obj_control";
global.__objectNames[2] = "obj_lightsource";
global.__objectNames[3] = "obj_blatt";
global.__objectNames[4] = "obj_blatt_bullet";
global.__objectNames[5] = "obj_dragon_dash";
global.__objectNames[6] = "par_jumpthing";
global.__objectNames[7] = "par_solid";
global.__objectNames[8] = "par_scarga_waepon";
global.__objectNames[9] = "par_enemie";
global.__objectNames[10] = "obj_collision_rectangle_128x128";
global.__objectNames[11] = "obj_collision_rectangle_128x64";
global.__objectNames[12] = "obj_collision_rectangle_64x64";
global.__objectNames[13] = "obj_collision_rectangle_64x32";
global.__objectNames[14] = "obj_collision_rectangle_32x32";
global.__objectNames[15] = "obj_collision_rectangle_32x16";
global.__objectNames[16] = "obj_collision_rectangle_16x16";
global.__objectNames[17] = "obj_collision_ramp_128x64_right";
global.__objectNames[18] = "obj_collision_ramp_128x64_left";
global.__objectNames[19] = "obj_collision_ramp_64x64_right";
global.__objectNames[20] = "obj_collision_ramp_64x64_left";
global.__objectNames[21] = "obj_collision_ramp_32x32_right";
global.__objectNames[22] = "obj_collision_ramp_32x32_left";
global.__objectNames[23] = "obj_collision_ramp_32x16_right";
global.__objectNames[24] = "obj_collision_ramp_32x16_left";
global.__objectNames[25] = "obj_collision_ramp_16x16_right";
global.__objectNames[26] = "obj_collision_ramp_16x16_left";
global.__objectNames[27] = "obj_collision_ramp_top_128x64_right";
global.__objectNames[28] = "obj_collision_ramp_top_128x64_left";
global.__objectNames[29] = "obj_collision_ramp_top_64x64_right";
global.__objectNames[30] = "obj_collision_ramp_top_64x64_left";
global.__objectNames[31] = "obj_collision_ramp_top_16x16_right";
global.__objectNames[32] = "obj_collision_ramp_top_16x16_left";
global.__objectNames[33] = "obj_semi_collision_64x16";
global.__objectNames[34] = "obj_semi_collision_48x16";
global.__objectNames[35] = "obj_semi_collision_32x16";
global.__objectNames[36] = "obj_semi_collision_16x16";
global.__objectNames[37] = "obj_fx_dust";
global.__objectNames[38] = "obj_fx_wall_dust";
global.__objectNames[39] = "obj_fx_blatt_shoot";
global.__objectNames[40] = "obj_fx_blatt_bullet_destroy";
global.__objectNames[41] = "obj_fx_enemie_destroy";
global.__objectNames[42] = "obj_fx";
global.__objectNames[43] = "obj_lantern_green";
global.__objectNames[44] = "obj_dangerous_trash";
global.__objectNames[45] = "obj_lantern_wall_pink";
global.__objectNames[46] = "obj_platform_green";
global.__objectNames[47] = "obj_platform_band_left";
global.__objectNames[48] = "obj_platform_band_right";
global.__objectNames[49] = "obj_wavor";
global.__objectNames[50] = "obj_wavor_bullet";
global.__objectNames[51] = "obj_wavor_small_bullet";
global.__objectNames[52] = "obj_wavor_electrowave";
global.__objectNames[53] = "obj_policer";
global.__objectNames[54] = "obj_om_erend";
global.__objectNames[55] = "obj_om_erend_left_arm";
global.__objectNames[56] = "obj_om_erend_right_arm";
global.__objectNames[57] = "obj_om_erend_electro_line";
global.__objectNames[58] = "obj_om_erend_electrowave";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for