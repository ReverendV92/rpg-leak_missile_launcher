// Created by Crowbar 0.74

$modelname "hl22003_ml.mdl"

$bodygroup "Body"
{
	studio "w_ml_reference.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 18.88 -1.03 3.28

$cdmaterials "models\weapons\hl22003\ML\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -3.13 -6.06 -4.93 40.9 3.99 11.49

$hboxset "default"
$hbox 0 "ValveBiped.Bip01_R_Hand" -57 -9.44 -3.94 33 -1.56 3.94
$hbox 0 "ValveBiped.Bip01_R_Hand" 6 -6.63 3.5 18 -3.63 8.5
$hbox 0 "ValveBiped.Bip01_R_Hand" 13.19 -1.63 -2.75 26.809999 5.63 2.75
$skipboneinbbox

$definebone "ValveBiped.Bip01_R_Hand" "" 15.157481 0 5.511812 0 179.999964 -89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" -4.527558 -5.31496 -0.000001 0.000057 0 0.000115 0 0 0 0 0 0


$animation "a_idle" "hl22003_ml_anims\a_idle.smd" {
	fps 30
}

$animation "a_attack1" "hl22003_ml_anims\a_attack1.smd" {
	fps 30
}

$sequence "idle" {
	"a_idle"
	fadein 0.2
	fadeout 0.2
}

$sequence "attack1" {
	"a_attack1"
	activity "ACT_RANGE_ATTACK_RPG" 1
	{ event 5003 0 "3" }
	{ event 5023 0 "2" }
	{ event 3002 0 "" }
	fadein 0.2
	fadeout 0.2
}

$collisionmodel "hl22003_ml_physics.smd"
{
	$mass 20
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
