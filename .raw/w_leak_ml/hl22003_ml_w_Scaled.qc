$opaque
$ambientboost
$modelname weapons/w_rocket_launcher

$bodygroup leakml 
{
	studio w_ml_scaled_reference
	studio w_ml_reference
}

$surfaceprop weapon

$contents solid

$illumposition 18.88 -1.03 3.28

$cdmaterials models/weapons/v_ml

$attachment "muzzle" "ValveBiped.Weapon_bone" 0 0 0 rotate 0 0 0
$attachment "missile" "ValveBiped.Anim_Attachment_RH" 0.04 11.2 23.35 rotate -77.04 88.31 179.77
$attachment "exhaust" "ValveBiped.Anim_Attachment_RH" -0.31 -0.46 -27.32 rotate 77.04 -91.69 -179.77

$hboxset "default"
$hbox 0 "ValveBiped.Bip01_R_Hand" -57 -9.44 -3.94 33 -1.56 3.94
$hbox 0 "ValveBiped.Bip01_R_Hand" 6 -6.63 3.5 18 -3.63 8.5
$hbox 0 "ValveBiped.Bip01_R_Hand" 13.19 -1.63 -2.75 26.809999 5.63 2.75
$skipboneinbbox

$definebone "ValveBiped.Bip01_R_Hand" "" 15.157481 0 5.511812 0 179.999964 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" -4.527558 -5.31496 -0.000001 0.000057 0 0.000115 0 0 0 0 0 0

$sequence idle {
	w_rocket_launcher_anims/idle
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence attack1 {
	w_rocket_launcher_anims/attack1
	activity "ACT_RANGE_ATTACK_RPG" 1
	{ event AE_NPC_MUZZLEFLASH 0 "RPG MUZZLE" }
	{ event 3002 0 "" }
	{ event AE_NPC_MUZZLEFLASH 0 "RPG EXHAUST" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel w_ml_scaled_physics
{
	$mass 20
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
